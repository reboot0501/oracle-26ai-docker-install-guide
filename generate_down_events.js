const fs = require('fs');
const path = require('path');
const crypto = require('crypto');
const https = require('https');

// =====================================================================
// Froala 샘플 이미지 다운로드 헬퍼
// =====================================================================
function fetchBuffer(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (res) => {
      if (res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
        return fetchBuffer(res.headers.location).then(resolve).catch(reject);
      }
      if (res.statusCode !== 200) {
        return reject(new Error(`HTTP ${res.statusCode}`));
      }
      const chunks = [];
      res.on('data', chunk => chunks.push(chunk));
      res.on('end', () => resolve(Buffer.concat(chunks)));
    }).on('error', reject);
  });
}

async function loadSampleImages() {
  const metaList = [
    { url: 'https://i.froala.com/assets/photo1.jpg', name: 'colored_pencils.jpg' },
    { url: 'https://i.froala.com/assets/photo2.jpg', name: 'dj_performance.jpg' },
    { url: 'https://i.froala.com/assets/photo3.jpg', name: 'rainbow_umbrella.jpg' },
    { url: 'https://i.froala.com/assets/photo4.jpg', name: 'hot_air_balloon.jpg' },
    { url: 'https://i.froala.com/assets/photo5.jpg', name: 'colorful_candies.jpg' },
    { url: 'https://i.froala.com/assets/photo6.jpg', name: 'colorful_building_balcony.jpg' },
    { url: 'https://i.froala.com/assets/photo7.jpg', name: 'colorful_straws.jpg' },
    { url: 'https://i.froala.com/assets/photo8.jpg', name: 'paint_palette.jpg' },
    { url: 'https://i.froala.com/assets/photo9.jpg', name: 'paint_buckets_and_brush.jpg' },
    { url: 'https://i.froala.com/assets/photo10.jpg', name: 'macbook_rgb_lighting.jpg' }
  ];

  console.log('Downloading 10 Froala sample images...');
  const results = [];
  for (const item of metaList) {
    try {
      const buf = await fetchBuffer(item.url);
      results.push({ name: item.name, buffer: buf });
      console.log(`✓ Downloaded ${item.name} (${buf.length} bytes)`);
    } catch (e) {
      console.warn(`✗ Failed to download ${item.url}: ${e.message}`);
    }
  }

  if (results.length === 0) {
    const fallbackBase64 = 'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==';
    results.push({ name: 'sample_image.png', buffer: Buffer.from(fallbackBase64, 'base64') });
  }

  return results;
}

async function main() {
  const sampleImages = await loadSampleImages();
  console.log(`Available sample images count: ${sampleImages.length}`);

  // db.json 읽기
  const dbJsonPath = path.join(__dirname, 'db.json');
  const dbJson = JSON.parse(fs.readFileSync(dbJsonPath, 'utf8'));
  const originalRecords = dbJson.equipmentDowns || [];

  console.log(`Original records count: ${originalRecords.length}`);

  const fabs = ['FAB_1', 'FAB_2', 'FAB_3'];
  const modules = [
    { mod: 'PHOTO', models: ['ASML_NXT_1980DI', 'NIKON_NSR_S620D', 'ASML_TWINSCAN', 'CANON_FPA_6300ES6A'], prefix: 'PH' },
    { mod: 'ETCH', models: ['LAM_KIYO_CX', 'TEL_TACTRAS', 'AMAT_CENTRIS_SYM3', 'LAM_VERSYS'], prefix: 'ET' },
    { mod: 'CVD', models: ['TEL_TRIAS', 'AMAT_PRODUCER', 'ASM_EAGLE_12', 'JUSUNG_EUREKA'], prefix: 'CVD' },
    { mod: 'CMP', models: ['AMAT_REFLEXION', 'EBARA_F_REX', 'KC_TECH_CMP_300'], prefix: 'CMP' },
    { mod: 'DIFF', models: ['KOKUSAI_ADVANCED', 'TEL_ALPHA', 'ASM_A412'], prefix: 'DIFF' },
    { mod: 'IMP', models: ['VARIAN_VIISTA', 'AXCELIS_PURION_H', 'AMAT_VIISTA_TRIDENT'], prefix: 'IMP' },
    { mod: 'CLEAN', models: ['SEMES_IRIS', 'DNS_SS_3000', 'TEL_CELLESSE', 'PSK_SUPRA'], prefix: 'CLN' }
  ];

const chambers = ['Ch-A', 'Ch-B', 'Ch-C', 'PM1', 'PM2', 'PM3', 'PM4', 'LL1', 'LL2', 'TM1', 'TM2', 'CH1', 'CH2', null];

const downTypes = ['HARDWARE', 'SOFTWARE', 'PROCESS', 'UTILITY', 'OPTICAL', 'CONSUMABLE', 'PREVENTIVE', 'ETC'];
const workStatuses = ['DOWN_OCCURRED', 'IN_PROGRESS', 'ACTION_DONE', 'VERIFIED', 'CLOSED'];

// =====================================================================
// tb_employees 및 tb_jobs 기준 엔지니어 정보 (VO AssignedTechnician)
// =====================================================================
const technicians = [
  { employeeId: 215, empNo: 'TECH-1001', shift: 'A', firstName: '보전', lastName: '이', jobTitle: '대리', department: 'PHOTO_MAINT' },
  { employeeId: 216, empNo: 'TECH-1002', shift: 'A', firstName: '정비', lastName: '김', jobTitle: '사원', department: 'ETCH_MAINT' },
  { employeeId: 217, empNo: 'TECH-1003', shift: 'B', firstName: '수리', lastName: '최', jobTitle: '과장', department: 'CVD_MAINT' },
  { employeeId: 218, empNo: 'TECH-1004', shift: 'C', firstName: '보전', lastName: '강', jobTitle: '대리', department: 'CMP_MAINT' },
  { employeeId: 219, empNo: 'TECH-1005', shift: 'B', firstName: '설비', lastName: '윤', jobTitle: '사원', department: 'DIFF_MAINT' },
  { employeeId: 220, empNo: 'TECH-1006', shift: 'C', firstName: '엔진', lastName: '한', jobTitle: '주임', department: 'IMP_MAINT' },
  { employeeId: 221, empNo: 'TECH-1007', shift: 'A', firstName: '점검', lastName: '오', jobTitle: '과장', department: 'CLEAN_MAINT' },
  { employeeId: 222, empNo: 'TECH-1008', shift: 'B', firstName: '유지', lastName: '송', jobTitle: '대리', department: 'PHOTO_MAINT' },
  { employeeId: 223, empNo: 'TECH-1009', shift: 'A', firstName: '보수', lastName: '정', jobTitle: '주임', department: 'ETCH_MAINT' },
  { employeeId: 224, empNo: 'TECH-1010', shift: 'C', firstName: '장비', lastName: '백', jobTitle: '사원', department: 'CVD_MAINT' }
];

function createAssignedTechnicianVO(emp) {
  return {
    empNo: emp.empNo,
    name: `${emp.lastName}${emp.firstName}`.replace(/\s+/g, ''),
    jobTitle: emp.jobTitle,
    shift: emp.shift
  };
}

// =====================================================================
// tb_employees 및 tb_jobs 기준 결재자 정보 (VO Approver)
// =====================================================================
const approvers = [
  { employeeId: 210, empNo: 'APP-2002', firstName: '기술', lastName: '정', jobTitle: '팀장', department: '설비기술팀' },
  { employeeId: 211, empNo: 'APP-2004', firstName: '제조', lastName: '서', jobTitle: '팀장', department: '제조혁신팀' },
  { employeeId: 212, empNo: 'APP-2001', firstName: '공정', lastName: '박', jobTitle: '파트장', department: '공정기술1팀' },
  { employeeId: 213, empNo: 'APP-2003', firstName: '공정', lastName: '윤', jobTitle: '파트장', department: '수율향상팀' },
  { employeeId: 214, empNo: 'APP-2005', firstName: '품질', lastName: '류', jobTitle: '파트장', department: '품질보증팀' }
];

function createApproverVO(emp, approvedAtEpoch) {
  return {
    empNo: emp.empNo,
    jobTitle: emp.jobTitle,
    name: `${emp.lastName}${emp.firstName}`.replace(/\s+/g, ''),
    approvedAt: approvedAtEpoch
  };
}

// =====================================================================
// 교체 부품 마스터 정보 (VO PartReplacement)
// public class PartReplacement {
//     private ReplacementType replacementType;
//     private String partNo;
//     private String partName;
//     private Integer qty;
// }
// =====================================================================
const partCatalog = [
  { partNo: 'OR-9021', partName: 'O-Ring Kit', replacementType: 'USE_MATERIAL' },
  { partNo: 'MTR-552', partName: 'Servo Motor', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'HT-200X', partName: 'Heater Block', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'PR-PAD-01', partName: 'Polishing Pad', replacementType: 'USE_MATERIAL' },
  { partNo: 'RF-GEN-102', partName: 'RF Generator Module', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'FIL-501', partName: 'Ion Source Filament', replacementType: 'USE_MATERIAL' },
  { partNo: 'NOZ-303', partName: 'Chemical Nozzle Tip', replacementType: 'USE_MATERIAL' },
  { partNo: 'VAC-PMP-801', partName: 'Vacuum Pump Unit', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'MFC-202', partName: 'Mass Flow Controller', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'MEC-PAD-101', partName: 'Conditioner Disk', replacementType: 'USE_MATERIAL' },
  { partNo: 'VAL-301', partName: 'Throttle Valve Assembly', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'PN-001', partName: 'Valve Assembly', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'PN-002', partName: 'Pneumatic Valve', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'PMP-881', partName: 'Dry Vacuum Pump', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'SEN-FLW-01', partName: 'Coolant Flow Sensor', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'BLW-104', partName: 'Bellows Seal Assembly', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'OR-5542', partName: 'FFKM O-Ring', replacementType: 'USE_MATERIAL' },
  { partNo: 'MFC-550', partName: 'Ar Gas MFC', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'SEN-PRS-02', partName: 'Capacitance Manometer Gauge', replacementType: 'REPLACEMENT_PART' },
  { partNo: 'ESC-CHUCK-01', partName: 'Electrostatic Chuck', replacementType: 'REPLACEMENT_PART' }
];

function createPartReplacementVO(catalogItem, qty) {
  return {
    replacementType: catalogItem.replacementType || 'REPLACEMENT_PART',
    partNo: catalogItem.partNo,
    partName: catalogItem.partName,
    qty: qty
  };
}

const issueCatalog = [
  { code: 'HW-VAC-302', desc: 'Vacuum Leak Detected', type: 'HARDWARE', alarm: 'ALARM-5021', parts: [0, 1] },
  { code: 'SW-CTRL-105', desc: 'Controller Communication Loss', type: 'SOFTWARE', alarm: 'ALARM-8822', parts: [] },
  { code: 'HW-HEAT-401', desc: 'Heater Temp Out of Range', type: 'HARDWARE', alarm: 'ALARM-3044', parts: [2] },
  { code: 'PR-SLRY-002', desc: 'Slurry Supply Pressure Low', type: 'PROCESS', alarm: 'ALARM-1102', parts: [3] },
  { code: 'UT-GAS-901', desc: 'N2 Gas Supply Abnormality', type: 'UTILITY', alarm: 'ALARM-9021', parts: [] },
  { code: 'RF-GEN-102', desc: 'RF Matcher Reflected Power High', type: 'HARDWARE', alarm: 'ALARM-4401', parts: [4] },
  { code: 'OPT-LNS-201', desc: 'Illumination Sensor Calibration Error', type: 'OPTICAL', alarm: 'ALARM-6602', parts: [] },
  { code: 'ION-SRC-501', desc: 'Ion Source Filament Life Exceeded', type: 'HARDWARE', alarm: 'ALARM-7705', parts: [5] },
  { code: 'CHM-NOZ-303', desc: 'Chemical Dispense Nozzle Clogging', type: 'HARDWARE', alarm: 'ALARM-2209', parts: [6] },
  { code: 'VAC-PMP-801', desc: 'Dry Vacuum Pump Overload', type: 'HARDWARE', alarm: 'ALARM-8012', parts: [7] },
  { code: 'WFR-STG-404', desc: 'Wafer Stage Interferometer Mirror Dirty', type: 'HARDWARE', alarm: 'ALARM-4040', parts: [] },
  { code: 'GAS-MFC-202', desc: 'CF4 Gas MFC Flow Hunting', type: 'HARDWARE', alarm: 'ALARM-2020', parts: [8] },
  { code: 'MEC-PAD-101', desc: 'Polishing Pad Lifetime Expired', type: 'CONSUMABLE', alarm: 'ALARM-1010', parts: [9] },
  { code: 'MEC-BOT-502', desc: 'Boat Elevator Vertical Lead Screw Belt Loose', type: 'HARDWARE', alarm: 'ALARM-5020', parts: [] },
  { code: 'HW-VAL-301', desc: 'Throttle Valve Encoder Signal Error', type: 'HARDWARE', alarm: 'ALARM-3010', parts: [10, 11] },
  { code: 'HW-PMP-902', desc: 'Chamber Base Vacuum Timeout', type: 'HARDWARE', alarm: 'ALARM-9020', parts: [13] },
  { code: 'PR-TEMP-101', desc: 'Process Chamber Temperature Uniformity Fail', type: 'PROCESS', alarm: 'ALARM-1011', parts: [2] },
  { code: 'UT-CW-202', desc: 'Cooling Water Flow Rate Low', type: 'UTILITY', alarm: 'ALARM-2022', parts: [14] },
  { code: 'SW-SEQ-303', desc: 'Sequence Interlock Abort', type: 'SOFTWARE', alarm: 'ALARM-3033', parts: [] },
  { code: 'PM-CHM-001', desc: 'Periodic Chamber Wet Cleaning PM', type: 'PREVENTIVE', alarm: 'ALARM-0010', parts: [0, 15] },
  { code: 'HW-ESC-701', desc: 'ESC Chuck Helium Leak Check Fail', type: 'HARDWARE', alarm: 'ALARM-7011', parts: [19] },
  { code: 'HW-PRS-108', desc: 'Manometer Sensor Drift Error', type: 'HARDWARE', alarm: 'ALARM-1088', parts: [18] },
  { code: 'GAS-MFC-550', desc: 'Ar Gas MFC Zero Drift Detected', type: 'HARDWARE', alarm: 'ALARM-5501', parts: [17] },
  { code: 'HW-SEAL-204', desc: 'Bellows Seal Fatigue Rupture Warning', type: 'HARDWARE', alarm: 'ALARM-2044', parts: [15, 16] },
  { code: 'PR-EPD-302', desc: 'Optical Emission Endpoint Signal Abnormal', type: 'PROCESS', alarm: 'ALARM-3022', parts: [] }
];

function genId(equipmentId, dateObj) {
  const yy = String(dateObj.getUTCFullYear()).slice(-2);
  const MM = String(dateObj.getUTCMonth() + 1).padStart(2, '0');
  const dd = String(dateObj.getUTCDate()).padStart(2, '0');
  const HH = String(dateObj.getUTCHours()).padStart(2, '0');
  const mm = String(dateObj.getUTCMinutes()).padStart(2, '0');
  const ss = String(dateObj.getUTCSeconds()).padStart(2, '0');
  const SSS = String(dateObj.getUTCMilliseconds()).padStart(3, '0');
  
  return `${equipmentId}_D${yy}-${MM}-${dd}_${HH}:${mm}:${ss}.${SSS}`;
}

  // =====================================================================
  // 첨부파일 저장 디렉토리 설정
  // =====================================================================
  const targetFilesDir = 'D:\\inform-note-workspace\\files';
  try {
    if (!fs.existsSync(targetFilesDir)) {
      fs.mkdirSync(targetFilesDir, { recursive: true });
      console.log(`Created directory: ${targetFilesDir}`);
    }
  } catch (e) {
    console.warn(`Could not create directory ${targetFilesDir} directly: ${e.message}`);
  }

  const attachedFiles = [];

  function generateHtmlReport(item) {
    const isLeftRight = (item.idx % 2 === 0);
    const isActionDone = item.workStatus === 'ACTION_DONE' || item.workStatus === 'VERIFIED' || item.workStatus === 'CLOSED';
    
    const imgTag = item.attachedFile ? 
      `<img src="/feature/file-handler/view/${item.attachedFile.fileId}" data-file-id="${item.attachedFile.fileId}" data-name="${item.attachedFile.originFileName}" alt="${item.attachedFile.originFileName}" style="width: 280px;" class="fr-fic fr-dib">` :
      `<span class="rpt-img-icon">📷</span> 관련 이미지 없음`;

    if (isLeftRight) {
      return `<div class="report-columns"> <div class="report-panel report-panel--left"> <div class="rpt-header rpt-header--warn"> <span class="rpt-icon rpt-icon--warn">⚠</span> <h4>현상 서술</h4> <span class="rpt-badge rpt-badge--warn">Symptom</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>발생 현상</th><td>${item.downCodeDesc}</td></tr> <tr><th>에러 코드</th><td>${item.downCode} (${item.alarmId})</td></tr> <tr><th>공정 영향</th><td>${item.processModule} 라인 웨이퍼 처리 일시 정지</td></tr> </table> <div class="rpt-sub-title rpt-sub-title--warn"><span class=\"rpt-marker\"></span>▸ 원인 분석</div> <ul class="rpt-list"> <li>${item.processModule} ${item.equipmentModel} 설비 내부 점검 결과 파라미터 변동 감지</li> <li>주기적 가동 누적 피로도 및 부품 노후화 영향 추정</li> </ul> <div class="rpt-note rpt-note--info">설비 자동 알람(${item.alarmId}) 감지 및 인터록 정상 동작 확인</div> <div class="rpt-img-placeholder">${imgTag}</div> </div> </div> <div class="report-panel report-panel--right"> <div class="rpt-header rpt-header--success"> <span class="rpt-icon rpt-icon--success">✔</span> <h4>조치 내용</h4> <span class="rpt-badge rpt-badge--success">Action</span> </div> <div class="rpt-body"> <table class="rpt-kv-table"> <tr><th>진행 상태</th><td><span class="${isActionDone ? 'rpt-tag--success' : 'rpt-tag--warn'}">${item.workStatus}</span></td></tr> <tr><th>교체 부품</th><td>${item.partReplacements.length > 0 ? item.partReplacements.map(p => p.partName + '(' + p.partNo + ') - ' + p.qty + 'EA').join(', ') : '부품 교체 없음 (캘리브레이션/소프트웨어 리셋)'}</td></tr> </table> <div class="rpt-sub-title"><span class=\"rpt-marker\"></span>▸ 후속 조치 및 계획</div> <ol class="rpt-ol"> <li>${isActionDone ? '단품 점검 및 신호 정상화 확인 완료' : '부품 수급 및 교체 작업 준비 중'}</li> <li>파라미터 캘리브레이션 및 Dummy Wafer Run 테스트 수행</li> <li>동일 챔버/라인 주기적 모니터링 강화</li> </ol> <div class="rpt-note rpt-note--warn">재발 방지를 위한 정기 PM 점검 항목 등록 완료</div> <div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span>작업 후 설비 상태 확인 사진</div> </div> </div> </div>`;
    } else {
      return `<div class="report-panel"><div class="rpt-header rpt-header--info"><div class="rpt-icon rpt-icon--info">i</div><h4>고장 분석 보고서 (상하 양식) - ${item.downEventId}</h4><span class="rpt-badge rpt-badge--info">REPORT</span></div><div class="rpt-body"><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 발생 현상 및 알람</div><table class="rpt-kv-table" style="width: 100%; margin-bottom: 12px;"><tr><th style="width: 25%;">장비 / 챔버</th><td>${item.equipmentId} / ${item.chamberId || 'Main Frame'}</td></tr><tr><th>알람 코드</th><td>${item.alarmId} - ${item.downCode}</td></tr><tr><th>상세 설명</th><td>${item.downCodeDesc}</td></tr></table><div class="rpt-img-placeholder">${imgTag}</div><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 원인 분석 및 결론</div><ol class="rpt-ol"><li>${item.equipmentModel} 가동 중 ${item.downType} 계통 이상 감지</li><li>진단 결과: ${item.downCodeDesc}로 인한 공정 제어 인터록 트리거</li></ol><div class="rpt-sub-title"><span class="rpt-marker">▶</span> 조치 및 교체 내역</div><p>${isActionDone ? '현장 엔지니어 긴급 출동 후 이상 부품 분해 점검 및 조치 완료.' : '설비 상태 진단 및 조치 진행 중.'}</p>${item.partReplacements.length > 0 ? '<table class="rpt-kv-table"><tr><th>교체부품명</th><th>부품번호</th><th>수량</th></tr>' + item.partReplacements.map(p => `<tr><td>${p.partName}</td><td>${p.partNo}</td><td>${p.qty}</td></tr>`).join('') + '</table>' : '<p><i>교체 부품 내역 없음 (파라미터 셋업 및 파트 정렬)</i></p>'}<div class="rpt-note rpt-note--success">품질 및 수율 영향도 평가 완료 - 양품 생산 가능 판정</div><div class="rpt-img-placeholder"><span class="rpt-img-icon">📷</span> 작업 완료 후 정상 상태 확인</div></div></div>`;
    }
  }

  const allRecords = [];

  // 1. db.json 기존 15개 항목
  originalRecords.forEach((r, idx) => {
    const modObj = modules.find(m => m.mod === r.process_module) || modules[0];
    const startDt = new Date((r.down_start_dt || '2026-08-01T10:00:00') + 'Z');
    startDt.setUTCMilliseconds((idx * 67 + 123) % 1000);
    const startEpoch = startDt.getTime();
    const durMin = Math.round(r.down_duration_min || 0);
    const endEpoch = r.down_end_dt ? new Date(r.down_end_dt + 'Z').getTime() : (durMin > 0 ? startEpoch + durMin * 60000 : null);
    
    // AssignedTechnician VO 객체 생성
    const emp = technicians[idx % technicians.length];
    const techVO = createAssignedTechnicianVO(emp);
    
    // Approver VO 객체 생성
    let appVO = null;
    const isDone = (r.work_status === 'ACTION_DONE' || r.work_status === 'VERIFIED' || r.work_status === 'CLOSED');
    if (isDone) {
      const appEmp = approvers[idx % approvers.length];
      const approvedAt = (endEpoch || startEpoch) + ((idx * 5 + 10) % 30) * 60000;
      appVO = createApproverVO(appEmp, approvedAt);
    }
    
    // PartReplacement VO 리스트 생성
    const parts = (r.replaced_parts || []).map(p => {
      const catalogItem = partCatalog.find(c => c.partNo === p.part_number) || {};
      const inferredType = (p.part_name && (p.part_name.includes('Pad') || p.part_name.includes('Ring') || p.part_name.includes('Disk') || p.part_name.includes('Tip') || p.part_name.includes('Filament'))) ? 'USE_MATERIAL' : 'REPLACEMENT_PART';
      return {
        replacementType: p.replacement_type || catalogItem.replacementType || inferredType,
        partNo: p.part_number,
        partName: p.part_name,
        qty: p.qty
      };
    });

    const downEventId = genId(r.eqp_id, startDt);

    // 50% 확률로 첨부파일 생성 (idx % 2 === 0)
    let attFile = null;
    if (idx % 2 === 0) {
      const fileId = crypto.randomUUID();
      const sample = sampleImages[(idx / 2) % sampleImages.length];
      const ext = path.extname(sample.name) || '.jpg';
      const storedFileName = `${fileId}${ext}`;
      const filePath = path.join(targetFilesDir, storedFileName);
      const fileSize = sample.buffer.length;
      const refType = (idx % 4 === 0) ? 'DOWN_ATTACHMENT' : 'DOWN_CONTENT_INLINE';

      try {
        if (fs.existsSync(targetFilesDir)) {
          fs.writeFileSync(filePath, sample.buffer);
        }
      } catch (err) {
        console.warn(`Failed to write file ${filePath}: ${err.message}`);
      }

      attFile = {
        fileId: fileId,
        refType: refType,
        refId: downEventId,
        originFileName: sample.name,
        storedFileName: storedFileName,
        filePath: filePath,
        fileSize: fileSize,
        contentType: ext === '.png' ? 'image/png' : 'image/jpeg',
        fileStatus: 'SAVED',
        createdBy: emp.empNo,
        updatedBy: appVO ? appVO.empNo : emp.empNo
      };
      attachedFiles.push(attFile);
    }

    const recItem = {
      idx: idx,
      downEventId: downEventId,
      equipmentId: r.eqp_id,
      chamberId: r.chamber_id || null,
      fabricationPlant: (r.fab ? r.fab.replace(/-/g, '_') : 'FAB_1'),
      processModule: r.process_module,
      equipmentModel: (r.eqp_model ? r.eqp_model.toUpperCase().replace(/[:\-\s]+/g, '_') : ''),
      downType: r.down_category || 'HARDWARE',
      workStatus: r.work_status || 'ACTION_DONE',
      downStartDatetime: startEpoch,
      downEndDatetime: endEpoch,
      downDurationMinutes: durMin,
      isCritical: !!r.is_critical,
      downCode: r.down_code,
      downCodeDesc: r.down_code_desc,
      alarmId: r.alarm_id,
      assignedTechnician: techVO,
      approver: appVO,
      partReplacements: parts,
      attachedFile: attFile,
      createdBy: emp.empNo,
      updatedBy: appVO ? appVO.empNo : emp.empNo
    };

    recItem.contentHtml = generateHtmlReport(recItem);
    allRecords.push(recItem);
  });

  // 2. 15개부터 132개까지 추가 데이터 생성 (총 132개)
  let currDate = new Date('2026-08-07T09:30:00.250Z');
  for (let i = originalRecords.length; i < 132; i++) {
    currDate = new Date(currDate.getTime() - (Math.floor((i * 13) % 18 + 6) * 3600000 + Math.floor((i * 29) % 50) * 60000 + ((i * 73) % 1000)));
    
    const fab = fabs[i % fabs.length];
    const modObj = modules[i % modules.length];
    const model = modObj.models[i % modObj.models.length];
    const eqpNum = String((i % 6) + 1).padStart(2, '0');
    const eqpId = `${modObj.prefix}-${model.split(/[_: ]/)[0].toUpperCase()}-${eqpNum}`;
    const chamber = chambers[i % chambers.length];
    
    const issue = issueCatalog[i % issueCatalog.length];
    const status = workStatuses[i % workStatuses.length];
    const isCritical = (i % 4 === 0);
    
    const isDone = (status === 'ACTION_DONE' || status === 'VERIFIED' || status === 'CLOSED');
    const durMin = isDone ? (Math.floor((i * 17) % 360) + 20) : (status === 'IN_PROGRESS' ? Math.floor((i * 7) % 60) + 10 : 0);
    const startEpoch = currDate.getTime();
    const endEpoch = isDone ? (startEpoch + durMin * 60000) : null;
    
    // AssignedTechnician VO 객체 생성
    const emp = technicians[i % technicians.length];
    const techVO = createAssignedTechnicianVO(emp);
    
    // Approver VO 객체 생성
    let appVO = null;
    if (isDone) {
      const appEmp = approvers[i % approvers.length];
      const approvedAt = (endEpoch || startEpoch) + ((i * 7 + 12) % 35) * 60000;
      appVO = createApproverVO(appEmp, approvedAt);
    }
    
    // PartReplacement VO 리스트 생성
    const parts = issue.parts.map(pIdx => {
      const p = partCatalog[pIdx % partCatalog.length];
      const qty = (i % 3) + 1;
      return createPartReplacementVO(p, qty);
    });
    
    const downEventId = genId(eqpId, currDate);

    // 50% 확률로 첨부파일 생성 (i % 2 === 0)
    let attFile = null;
    if (i % 2 === 0) {
      const fileId = crypto.randomUUID();
      const sample = sampleImages[(i / 2) % sampleImages.length];
      const ext = path.extname(sample.name) || '.jpg';
      const storedFileName = `${fileId}${ext}`;
      const filePath = path.join(targetFilesDir, storedFileName);
      const fileSize = sample.buffer.length;
      const refType = (i % 4 === 0) ? 'DOWN_ATTACHMENT' : 'DOWN_CONTENT_INLINE';

      try {
        if (fs.existsSync(targetFilesDir)) {
          fs.writeFileSync(filePath, sample.buffer);
        }
      } catch (err) {
        console.warn(`Failed to write file ${filePath}: ${err.message}`);
      }

      attFile = {
        fileId: fileId,
        refType: refType,
        refId: downEventId,
        originFileName: sample.name,
        storedFileName: storedFileName,
        filePath: filePath,
        fileSize: fileSize,
        contentType: ext === '.png' ? 'image/png' : 'image/jpeg',
        fileStatus: 'SAVED',
        createdBy: emp.empNo,
        updatedBy: appVO ? appVO.empNo : emp.empNo
      };
      attachedFiles.push(attFile);
    }
  
  const recItem = {
    idx: i,
    downEventId: downEventId,
    equipmentId: eqpId,
    chamberId: chamber,
    fabricationPlant: fab,
    processModule: modObj.mod,
    equipmentModel: model,
    downType: issue.type,
    workStatus: status,
    downStartDatetime: startEpoch,
    downEndDatetime: endEpoch,
    downDurationMinutes: durMin,
    isCritical: isCritical,
    downCode: issue.code,
    downCodeDesc: issue.desc,
    alarmId: issue.alarm.replace('ALARM-', `ALARM-${(i % 9000) + 1000}`),
    assignedTechnician: techVO,
    approver: appVO,
    partReplacements: parts,
    attachedFile: attFile,
    createdBy: emp.empNo,
    updatedBy: appVO ? appVO.empNo : emp.empNo
  };
  
  recItem.contentHtml = generateHtmlReport(recItem);
  allRecords.push(recItem);
}

console.log(`Generated total records: ${allRecords.length}`);
console.log(`Sample PartReplacement VO JSON:`, JSON.stringify(allRecords[0].partReplacements));

// SQL 이스케이프 함수
function escSql(str) {
  if (str === null || str === undefined) return 'NULL';
  return "'" + String(str).replace(/'/g, "''") + "'";
}

// SQL 출력 생성
let sql = '';
sql += `-- =====================================================================\n`;
sql += `-- 10. TB_DOWN_EVENT_LOG (다운 이벤트 로그 132건 데이터 적재)\n`;
sql += `-- =====================================================================\n`;
sql += `Prompt ****** Populating TB_DOWN_EVENT_LOG table (132 rows) ....\n\n`;

const BATCH_SIZE = 25;
for (let b = 0; b < allRecords.length; b += BATCH_SIZE) {
  const batch = allRecords.slice(b, b + BATCH_SIZE);
  sql += `BEGIN\n`;
  batch.forEach(r => {
    const techJson = JSON.stringify(r.assignedTechnician);
    const appJson = r.approver ? JSON.stringify(r.approver) : null;
    const partsJson = JSON.stringify(r.partReplacements);
    const isCritVal = r.isCritical ? 'TRUE' : 'FALSE';
    const chamberVal = r.chamberId ? escSql(r.chamberId) : 'NULL';
    const endDtVal = r.downEndDatetime ? r.downEndDatetime : 'NULL';
    const durMinVal = r.downDurationMinutes !== null && r.downDurationMinutes !== undefined ? r.downDurationMinutes : 'NULL';
    const appVal = appJson ? escSql(appJson) : 'NULL';

    sql += `  INSERT INTO tb_down_event_log (\n`;
    sql += `      down_event_id, equipment_id, chamber_id, fabrication_plant, process_module,\n`;
    sql += `      equipment_model, down_type, work_status, down_start_datetime, down_end_datetime,\n`;
    sql += `      down_duration_minutes, is_critical, down_code, down_code_description, alarm_id,\n`;
    sql += `      assigned_technician, approver, part_replacements, created_by, created_at,\n`;
    sql += `      updated_by, updated_at\n`;
    sql += `  ) VALUES (\n`;
    sql += `      ${escSql(r.downEventId)},\n`;
    sql += `      ${escSql(r.equipmentId)},\n`;
    sql += `      ${chamberVal},\n`;
    sql += `      ${escSql(r.fabricationPlant)},\n`;
    sql += `      ${escSql(r.processModule)},\n`;
    sql += `      ${escSql(r.equipmentModel)},\n`;
    sql += `      ${escSql(r.downType)},\n`;
    sql += `      ${escSql(r.workStatus)},\n`;
    sql += `      ${r.downStartDatetime},\n`;
    sql += `      ${endDtVal},\n`;
    sql += `      ${durMinVal},\n`;
    sql += `      ${isCritVal},\n`;
    sql += `      ${escSql(r.downCode)},\n`;
    sql += `      ${escSql(r.downCodeDesc)},\n`;
    sql += `      ${escSql(r.alarmId)},\n`;
    sql += `      ${escSql(techJson)},\n`;
    sql += `      ${appVal},\n`;
    sql += `      ${escSql(partsJson)},\n`;
    sql += `      ${escSql(r.createdBy)},\n`;
    sql += `      SYSTIMESTAMP,\n`;
    sql += `      ${escSql(r.updatedBy)},\n`;
    sql += `      SYSTIMESTAMP\n`;
    sql += `  );\n\n`;
  });
  sql += `END;\n/\n\n`;
}

sql += `COMMIT;\n\n`;

sql += `-- =====================================================================\n`;
sql += `-- 11. TB_DOWN_CONTENT (다운 이벤트 상세 본문 132건 데이터 적재)\n`;
sql += `-- =====================================================================\n`;
sql += `Prompt ****** Populating TB_DOWN_CONTENT table (132 rows) ....\n\n`;

for (let b = 0; b < allRecords.length; b += BATCH_SIZE) {
  const batch = allRecords.slice(b, b + BATCH_SIZE);
  sql += `BEGIN\n`;
  batch.forEach(r => {
    const htmlVal = r.contentHtml ? escSql(r.contentHtml) : 'NULL';
    sql += `  INSERT INTO tb_down_content (\n`;
    sql += `      down_event_id, content_html, created_by, created_at, updated_by, updated_at\n`;
    sql += `  ) VALUES (\n`;
    sql += `      ${escSql(r.downEventId)},\n`;
    sql += `      ${htmlVal},\n`;
    sql += `      ${escSql(r.createdBy)},\n`;
    sql += `      SYSTIMESTAMP,\n`;
    sql += `      ${escSql(r.updatedBy)},\n`;
    sql += `      SYSTIMESTAMP\n`;
    sql += `  );\n\n`;
  });
  sql += `END;\n/\n\n`;
}

sql += `-- =====================================================================\n`;
sql += `-- 12. TB_ATTACHED_FILE (첨부파일 및 에디터 이미지 ${attachedFiles.length}건 데이터 적재)\n`;
sql += `-- =====================================================================\n`;
sql += `Prompt ****** Populating TB_ATTACHED_FILE table (${attachedFiles.length} rows) ....\n\n`;

for (let b = 0; b < attachedFiles.length; b += BATCH_SIZE) {
  const batch = attachedFiles.slice(b, b + BATCH_SIZE);
  sql += `BEGIN\n`;
  batch.forEach(f => {
    sql += `  INSERT INTO tb_attached_file (\n`;
    sql += `      file_id, ref_type, ref_id, origin_file_name, stored_file_name,\n`;
    sql += `      file_path, file_size, content_type, file_status, created_by, created_at,\n`;
    sql += `      updated_by, updated_at\n`;
    sql += `  ) VALUES (\n`;
    sql += `      ${escSql(f.fileId)},\n`;
    sql += `      ${escSql(f.refType)},\n`;
    sql += `      ${escSql(f.refId)},\n`;
    sql += `      ${escSql(f.originFileName)},\n`;
    sql += `      ${escSql(f.storedFileName)},\n`;
    sql += `      ${escSql(f.filePath)},\n`;
    sql += `      ${f.fileSize},\n`;
    sql += `      ${escSql(f.contentType)},\n`;
    sql += `      ${escSql(f.fileStatus)},\n`;
    sql += `      ${escSql(f.createdBy)},\n`;
    sql += `      SYSTIMESTAMP,\n`;
    sql += `      ${escSql(f.updatedBy)},\n`;
    sql += `      SYSTIMESTAMP\n`;
    sql += `  );\n\n`;
  });
  sql += `END;\n/\n\n`;
}

sql += `COMMIT;\n\n`;

// inform_note_populate.sql 파일 갱신
const populatePath = path.join(__dirname, 'oracle-db-sample-schemas', 'inform_note', 'inform_note_populate.sql');
let populateSql = fs.readFileSync(populatePath, 'utf8').replace(/\r\n/g, '\n');

const splitMarker = '-- =====================================================================\n-- 10. TB_DOWN_EVENT_LOG';
const baseIndex = populateSql.indexOf(splitMarker);

let baseSql = '';
if (baseIndex !== -1) {
  baseSql = populateSql.substring(0, baseIndex).trimEnd();
} else {
  baseSql = populateSql.trimEnd();
}

  const finalSql = baseSql + '\n\n' + sql;
  fs.writeFileSync(populatePath, finalSql, 'utf8');
  console.log('inform_note_populate.sql updated successfully with real sample images and attachments!');
}

main().catch(err => {
  console.error('Fatal error in main:', err);
  process.exit(1);
});
