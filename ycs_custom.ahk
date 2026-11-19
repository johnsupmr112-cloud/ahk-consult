#Requires AutoHotkey v2.0
#SingleInstance Force

; ============================================================
;  復健科會診紀錄 縮寫展開腳本  (AutoHotkey v2)
;  Ctrl+Alt+S = 暫停/恢復    Ctrl+Alt+R = 重新載入    Ctrl+Alt+Q = 結束
; ============================================================

^!s::{
    Suspend()
    TrayTip(A_IsSuspended ? "縮寫已暫停" : "縮寫已恢復", "AHK", 1)
}
^!r::Reload()
^!q::ExitApp()

; --- rt ---
:T:rt::right

; --- lt ---
:T:lt::left

; ------------------ *NEURO ------------------
:?C1TO:*NEURO::
(
*** 5F PT, OT ST (排程隔開洗腎W135時間, 左手AVG)***

Dear Dr. in charge, this 54-year-old female patient was admitted due to the sudden onset of right-sided weakness on 2026/07/18; brain MRI (2026/07/29) revealed occlusion with subacute infarction in the left pons. The patient has a history of ESRD on HD W135, HTN, and Dyslipidemia. We were consulted for rehabilitation regarding right hemiplegia and dysphagia, dysarthria.

The patient's current condition upon my visit was followed:

- Consciousness: GCS-E4V5M6, alert, O2 demand: room air, facial palsy, tongue deviation
- Tubes: NG tube(+), Foley tube(-), Tracheostomy tube(-), Port A, PERM, AVG/AVF, Drain
- Muscle Power (RUL/RLL/LUL/LLL): 2/3/4/4
- Modified Ashworth Scale (RUL/RLL/LUL/LLL): 0/0/0/0
- Brunnstrom Stage (RUL/RLL/LUL/LLL): IV/IV/IV/IV
- Speech: Dysarthria, scrutable
- Language: Intact
- Function: Rolling(independence), Sitting(assisted), Transfer(assisted), Standing(assisted), Walking(Could not walk yet)
- Swallowing: dysphagia with NGT

Impression Right hemiplegia with dysphagia and dysarthria due to recent left pons ischemic stroke

Plan 
- PT: postural, standing balance, ambulatory training 
- OT: hand function training, ADL training 
- ST: speech therapy for dysarthria and swallowing training.

Feel free to contact us if there is anything left to discuss.
)

; ------------------ *SCI ------------------
:?C1TO:*SCI::
(
*** 5F PT& OT, 意識清楚但仍需N/C 1-2L/min ***

Dear Dr. in charge,
This 87-year-old female was admitted due to thoracoabdominal aortic aneurysm, 
dilated thoracoabdominal junction aorta, s/p T-branch stent graft and TAA stent 
graft insertion on 2026/07/07.

The patient developed paraplegia after the surgery in 2026/07. She has a history 
of abdominal aortic aneurysm s/p OP in 2024/04, HCC s/p TACE and RFA in 2024/05, 
HBV with liver cirrhosis, CAD, dyslipidemia, right leg PAOD. 

We were consulted for rehabilitation regarding paraplegia and arrangement for 
therapy.

Her current condition upon my visit was followed:
- Consciousness: GCS-E4V5M6, Alert, O2 demand: N/C 1-2L/min
- Tubes: ***Foley tube(+), NG tube(-), Tracheostomy tube(-)
- MOTOR FUNCTION
' [Muscle Power(0-5)] (Daniels & Worthingham's Muscle Test)
' Right Left
' C5, Elbow flexors 5 5
' C6, Wrist extensors 5 5
' C7, Elbow extensors 5 5
' C8, Finger flexors 5 5
' T1, Little finger abductors 5 5
' L2, Hip flexors 3 2
' L3, Knee extensors 3 0
' L4, Ankle dorsiflexors 3 2
' L5, Long toe extensors 3 2
' S1, Ankle plantar flexors 3 2
- Speech: Intact
- Language: Intact
- Function: Rolling(Assisted), Sitting(Assisted), Transfer(Assisted), 
Standing(Could not perform), Walking(Could not perform)
- Others: bowel/bladder incontinence

------------------------------------------------------------
American Spinal Injury Association (ASIA) impairment scale
' Sensory level (Rt/Lt): intact/ L2
' Motor level (Rt/Lt): L1/ L1
' Sacral sparing: VAC(-) / DAP(-) / S4-5 sensory(+)
' Neurogenic level: L1, AIS-C
------------------------------------------------------------

Impression
Paraplegia due to suspected spinal cord injury, neurologic level: L1, AIS-C; 
rule out ischemic myelopathy.

Plan
1. PT: Lower leg facilitation(especially left leg), balance, posture, 
strengthening training.
2. OT for ADL training, moving training.
3. Suggest thoracic and lumbar spinal MRI for suspected ischemic myelopathy.

Feel free to contact us if there is anything left to discuss.
)

; ------------------ *general ------------------
:?C1TO:*general::
(

老醫 Functional decline
*** 老醫PT, 5F OT, 5F ST [解除critical再來五樓做復健]
Dear Dr. in charge,
this 70-year-old male with history of Afib, COPD, HTN was admitted due to 
pneumonia s/p ETT+MV, extubation was performed on 5/14. We were consulted for 
his general weakness and dysphagia with NGT after the stressful event. 
His current condition upon my visit was followed:
- Consciousness: Alert, GCS: E4V5M6, O2: N/C 1L
- Muscle Power (RUL/RLL/LUL/LLL): 4+ / 4+ / 4 / 4
- Speech: oriented and scrutable
- Tubes: NG:+ , Foley:+ , Trachea:-,
- Function: Rolling(independence), Sitting:(assisted), Transfer:(assisted), Standing: (Could not perform), Walking:(Could not perform) 
- Swallowing: dysphagia with NGT but could tolerate some porridge.

Impression:
Functional decline due to recent pneumonia episode.

Plan:
PT: sit-to-stand training, standing balance, and lower extremity strengthening.
ST: Swallowing training.
Feel free to contact us if there is anything to discuss.
)

; ------------------ *scoliosis ------------------
:?C1TO:*scoliosis::
(
*** 5F PT 水療蔡老師(奉公scoliosis孩童)

Dear Dr. in charge, this 9 year-old female patient is a case of congenital scoliosis due to L4/5 hemivertebral. We were consulted for IONM upon the correction surgery on 2026/07/14 and further post-OP rehab. Upon the visit, her 

condition is followed:
- E4V5M6, clear O2 room air, no tubes.
- no prominent developmental delay.
- Muscle power: RUL/RLL/LUL/LLL= all full
- Adam forward test: The primary curve is at the lower lumbar region with L4-L5 apex toward: Left.

We will arrange IONM by Dr. 5224 upon the correction surgery on 2026/07/14 and further post-OP rehab
)

; ------------------ *JR ------------------
:?C1TO:*JR::
(
***** 重建科
This is a case of bilateral OA knees, admitted for bilateral TKAs on 2026/11/18.
We would arrange rehabilitation for the post-operative condition, thanks for your consultation.
)

; ------------------ *hand ------------------
:?C1TO:*hand::
(
*****手外: 黃于芳老師
------------------------
This patient was admitted due to right forth and fifth finger fracture. 
The releasing surgery will be on 2026/11/12.
We will arrange post-operative rehab for the patient, thanks for your consultation.
)

; ------------------ *baby ------------------
:?C1TO:*baby::
(
*** 
Dear Dr. in charge, this girl baby is a late-preterm case with respiratory
distress s/p Ampicillin + Gentamicin.

- GA: 36 weeks + 4 days, late preterm,
- Age 3 d/o, cGA 37 weeks + 0 days,
- Birth weight(2026/07/31) 2290g -> (2026/08/03)2137g,
- on incubator, on phototherapy,
- Supplemental oxygen: 
   HFNC (FiO2 21%, Flow 8L/min, PEEP 6cmH2O),
- Feeding by OG tube and PO(but poor oral feeding): 25-30ml Q3H(吃完奶略喘).

We will arrange bedside pediatric PT for poor feeding condition and prematurity. 
Thank you for the consultation.
)

; ------------------ *CV ------------------
:?C1TO:*CV::
(
*** For CV/ CVS cardiopulmonary rehab.
Dear Dr. in charge,

this 62-year-old male with history of post MI VSD is admitted for VSD repair+- CABG(scheduled on 05/22).

We will arrange cardiopulmonary rehab for the patient, thanks for your consultation.

To be noted, due to recent staffing shortage in the cardiopulmonary rehabilitation team, cardiopulmonary rehab orders placed will be limited to a single evaluation and patient education session in principle. If the patient is clinically stable and requires no more than 2L/min of extra oxygen demand, transferred back to ordinary ward; contact 8#5364 to shift the patient to 中正五樓 for follow-up treatment.
)

; ------------------ *CVS ------------------
:?C1TO:*CVS::
(
*** For CV/ CVS cardiopulmonary rehab.
Dear Dr. in charge,

this 62-year-old male with history of post MI VSD is admitted for VSD repair+- CABG(scheduled on 05/22).

We will arrange cardiopulmonary rehab for the patient, thanks for your consultation.

To be noted, due to recent staffing shortage in the cardiopulmonary rehabilitation team, cardiopulmonary rehab orders placed will be limited to a single evaluation and patient education session in principle. If the patient is clinically stable and requires no more than 2L/min of extra oxygen demand, transferred back to ordinary ward; contact 8#5364 to shift tghe patient to 中正五樓 for follow-up treatment. 
)

; ------------------ *ERAS ------------------
:?C1TO:*ERAS::
(
*** For CRS ERAS protocol rehab.
Dear Dr. in charge,
this 62-year-old male with history of CAD s/p CABG in 2017 and DES in 2026/04. He
is admitted for S-F colon ca. and the scheduled surgery will be on 05/20.
We will arrange CRS ERAS protocol rehab for the patient, thanks for your
consultation.
)

; ------------------ *CRS ------------------
:?C1TO:*CRS::
(
*** For CRS ERAS protocol rehab.
Dear Dr. in charge,
this 62-year-old male with history of CAD s/p CABG in 2017 and DES in 2026/04. He
is admitted for S-F colon ca. and the scheduled surgery will be on 05/20.
We will arrange CRS ERAS protocol rehab for the patient, thanks for your
consultation.
)

; ------------------ *bedside ------------------
:?C1TO:*bedside::
(
*** bedside單 轉5F PT
(Very fragile, Nasal 2L, need B fluid pump)
Consciousness: Alert, GCS: E4V5M6
Muscle Power (RU/RL/LU/LL):4-/4-/4-/4-
Tubes: NG: (-) , Foley: (+) , Trachea: ( - ) O2: room air
Function: Bed mobility (maxA), Sitting: (maxA), Transfer: (maxA), Standing: (x), Walking: (x), ADL: (totally dependent)

Impression:
Generalized weakness and ICU-acquired weakness (especially Lt upper and Rt lower limbs).
Pancreatic neck adenocarcinoma, s/p Whipple and recurrent bleeding, stabilized.

Plan:
PT: Bedside therapeutic exercise, PROM/AAROM for four limbs, and progressive mobilization.
)

; ------------------ *PMRC ------------------
:?C1TO:*PMRC::
(
THIS PATIENT HAS RIGHT FNF AND WILL RECEIVE BIPOLAR HEMIARTHROPLASTY IF NO
CONTRAINDICATION.
P: POSITIONING TRAINING. LE AND UE FUNCTION TRAINING. MOVING AND TRANSFER
TRAINING. MOITON-SENSATION TRAINING. ROM AND OTHER THERAPEUTIC EXERCISE. SITTING
BALANCE AND DEEP BREATHING TRAINING. POST-THA PRECAUTION.
********BEDSIDE THERAPY********
)

; ------------------ *Others------------------
:?C1TO:*HTN::hypertension
:?C1TO:*T2DM::type 2 diabetes mellitus
:?C1TO:*DM::diabetes mellitus
:?C1TO:*DYS::dyslipidemia
:?C1TO:*333::hypertension, type 2 diabetes mellitus, dyslipidemia


; ------------------ *SCU------------------
:?C1TO:*SCU::
(
*** bedside ST(for dysarthria) for SCU stroke patient.
[轉至普通病房請聯絡復健會診5364: 改開立5F ST及新增5F PT OT(+left ankle AFO)]
---
Dear Dr. in charge, this 61-year-old female has previous old ICH over right
hemisphere 20 years ago, with sequela of left hemiplegia and spasticity. She
also has multiple medical history of hypertension, type 2 diabetes mellitus,
dyslipidemia.

However, this time, she was admitted due to ICH at left thalamus, onset:
2026/9/30. We were consulted for bilateral hemiplegia and dysarthria. The
patient's current condition upon my visit was followed:
- Consciousness: GCS-E4V5M6, slow response, O2 demand: room air.
- Tubes: NG tube(-), Foley tube(-), Tracheostomy tube(-)
- Muscle Power (RUL/RLL/LUL/LLL): 3/3/2/2
- Modified Ashworth Scale (RUL/RLL/LUL/LLL): 0/0/1+/1+
- Speech: Dysarthria, but scrutable
- Language: Intact, no aphasia
- Function: Rolling(assisted), Sitting(not tried), Transfer(bedridden),
Standing(x), Walking(x)
- Swallowing: no dysphagia

Impression: new right hemiparesis, dysarthria due to ICH at left thalamus.

Plan
1. In SCU course: bedside ST for dysarthria,
2. In ordinary ward(請聯絡復健會診告知轉普通病房):
- PT: postural training, strengthening, sit-to-stand training, standing balance,
ambulatory training.
- OT: hand/ foot function training, ADL training, moving training, AFO for left
ankle
- ST: speech training for dysarthria

Feel free to contact us if there is anything left to discuss.
)

; ------------------ *isolation------------------
:?C1TO:*isolation::
(
***
Urine: VRE隔離中暫不開單，後續解隔再聯絡復健會診評估是否適合進行復健治療。

往後若為隔離狀況病人避免隔離期間要求復健治療，請謹慎思考該期間會診之必要性再行會診，以
減低院內同仁接觸到病原菌之風險。

同時，未來請好好整理複雜個案之病史資訊再行發送會診單。
)