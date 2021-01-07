//----------- MODALITIES -----------------------

ValueSet:  RadiationModalityVS
Id: mcode-radiation-modality-vs
Title: "Radiation Modality Value Set"
Description: "Codes describing the modalities of teleradiotherapy procedures."
* include codes from valueset TeleradiotherapyModalityVS
* include codes from valueset BrachytherapyModalityVS

ValueSet:  TeleradiotherapyModalityVS
Id: mcode-teleradiotherapy-modality-vs
Title: "External Radiation Modality Value Set"
Description: "Codes describing the modalities of teleradiotherapy procedures."
* MTH#C1517033  "External Beam Radiation Therapy"
* MTH#C0436226  "Proton Therapy"
* MTH#C0454077  "Teleradiotherapy using electrons"
* MTH#C0599266  "Neutron beam therapy"
* MTH#C3494442  "Carbon Ion Radiotherapy"
* MTH#C3539769  "Photon Beam Radiation Therapy"
* MTH#C0043308  "X-Ray Therapy"
* MTH#C0454060  "Grenz ray therapy"
* MTH#C0203541  "Deep radiation therapy, 200-300 KVP"
* OtherCode#OtherTeleradiotherapyModality "Other Teleradiotherapy Modality, Specify"

ValueSet: BrachytherapyModalityVS
Id: mcode-brachytherapy-modality-vs
Title: "External Radiation Modality Value Set"
Description: "Codes describing the modalities of teleradiotherapy procedures."
* MTH#C0006098  "Brachytherapy"
* MTH#C0454271  "Low dose rate brachytherapy"
* MTH#C0454270  "High dose brachytherapy"
* MTH#C3897809  "Pulsed-Dose Rate Brachytherapy"
* MTH#C2584639  "High dose rate electronic brachytherapy"
* MTH#C0182638  "Radiopharmaceuticals"
* MTH#C0203608  "Radionuclide therapy"
* OtherCode#OtherBrachytherapyModality "Other Brachytherapy Modality, Specify"


//----------- TECHNIQUES -----------------------

ValueSet: TeleradiotherapyTechniqueVS
Id: mcode-teleradiotherapy-technique-vs
Title: "External Radiation Technique Value Set"
Description: "Codes describing the techniques of teleradiotherapy procedures."
* MTH#C3641897 "Scanning Proton Beam Therapy"
* MTH#C5204571 "Intensity-Modulated Proton Therapy"
* MTH#C5236971  "Conventional Radiotherapy"
* MTH#C0600521  "Radiotherapy, Conformal"
* MTH#C3840864  "Interoperative Radiation"
* MTH#C1512814  "Radiotherapy, Intensity-Modulated"
* MTH#C2367749  "intracranial stereotactic radiosurgery"
* MTH#C3896654  "Image-Guided Adaptive Radiation Therapy" 
* MTH#C3179062  "Radiotherapy, Image-Guided"  // IGRT	
* MTH#C3896609  "Stereotactic Body Radiation Therapy" // SBRT	
* MTH#C3846112  "Radiosurgery, Stereotactic" // SRS


ValueSet: BrachytherapyTechniqueVS
Id: mcode-brachytherapy-technique-vs
Title: "Brachytherapy Technique Value Set"
Description: "Codes describing the techniques of brachytherapy (internal radiation) procedures."
* MTH#C0021864  "Intracavity Radiotherapy"
* MTH#C1881237  "Interstitial Radiation Therapy"
* MTH#C0436270  "Temporary implant radiotherapy"
* MTH#C2169181  "irradiation by permanent brachytherapy implants"
* MTH#C3840864  "Interoperative Radiation"
* MTH#C2986508  "Unsealed Internal Radiation Therapy"
* MTH#C2169180  "brachytherapy using sealed isotopes"


ValueSet:       RadiationTargetBodySiteVS
Id: mcode-radiation-target-body-site-vs
Title: "Radiation Target Body Site Value Set"
Description:    "Codes for body sites that can be targets of radiation therapy. This list of sites is based on Commission on Cancer’s 'Standards for Oncology Registry Entry  - STORE 2018'. This value set contains SNOMED CT equivalent terms."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* SCT#81105003       "Cervical lymph node group (body structure)"
* SCT#196374005       "Entire lymph node of thorax (body structure)"
* SCT#81105003       "Cervical lymph node group (body structure)"
* SCT#196374005       "Entire lymph node of thorax (body structure)"
* SCT#245269009       "Axillary lymph node group (body structure)"
* SCT#245265003       "Supraclavicular lymph node group (body structure)"
* SCT#245282001       "Internal mammary lymph node group (body structure)"
* SCT#245284000       "Abdominal lymph node group (body structure)"
* SCT#245294005       "Pelvic lymph node group (body structure)"
* SCT#245284000       "Abdominal lymph node group (body structure)"
* SCT#245294005       "Pelvic lymph node group (body structure)"
* SCT#59441001       "Structure of lymph node (body structure)"
* SCT#244486005       "Entire eye (body structure)"
* SCT#56329008       "Pituitary structure (body structure)"
* SCT#12738006       "Brain structure (body structure)"
* SCT#119235005       "Brain part (body structure)"
* SCT#2748008       "Spinal cord structure (body structure)"
* SCT#71836000       "Nasopharyngeal structure (body structure)"
* SCT#74262004       "Oral cavity structure (body structure)"
* SCT#31389004       "Oropharyngeal structure (body structure)"
* SCT#4596009       "Laryngeal structure (body structure)"
* SCT#81502006       "Hypopharyngeal structure (body structure)"
* SCT#2095001       "Nasal sinus structure (body structure)"
* SCT#385294005       "Salivary gland structure (body structure)"
* SCT#69748006       "Thyroid structure (body structure)"
* SCT#361355005       "Entire head and neck (body structure)"
* SCT#181216001       "Entire lung (body structure)"
* SCT#71400007       "Mesothelium structure (body structure)"
* SCT#302551006       "Entire thorax (body structure)"
* SCT#181131000       "Entire breast (body structure)"
* SCT#119184005       "Breast part (body structure)"
* SCT#78904004       "Chest wall structure (body structure)"
* SCT#181245004       "Entire esophagus (body structure)"
* SCT#69695003       "Stomach structure (body structure)"
* SCT#30315005       "Small intestinal structure (body structure)"
* SCT#71854001       "Colon structure (body structure)"
* SCT#34402009       "Rectum structure (body structure)"
* SCT#53505006       "Anal structure (body structure)"
* SCT#10200004       "Liver structure (body structure)"
* SCT#34707002       "Biliary tract structure (body structure)"
* SCT#28231008       "Gallbladder structure (body structure)"
* SCT#15776009       "Pancreatic structure (body structure)"
* SCT#113345001       "Abdominal structure (body structure)"
* SCT#302512001       "Entire urinary bladder (body structure)"
* SCT#119221008       "Bladder part (body structure)"
* SCT#64033007       "Kidney structure (body structure)"
* SCT#87953007       "Ureteric structure (body structure)"
* SCT#181422007       "Entire prostate (body structure)"
* SCT#119231001       "Prostate part (body structure)"
* SCT#13648007       "Urethral structure (body structure)"
* SCT#18911002       "Penile structure (body structure)"
* SCT#40689003       "Testis structure (body structure)"
* SCT#20233005       "Scrotal structure (body structure)"
* SCT#15497006       "Ovarian structure (body structure)"
* SCT#31435000       "Fallopian tube structure (body structure)"
* SCT#35039007       "Uterine structure (body structure)"
* SCT#71252005       "Cervix uteri structure (body structure)"
* SCT#76784001       "Vaginal structure (body structure)"
* SCT#45292006       "Vulval structure (body structure)"
* SCT#89546000       "Bone structure of cranium (body structure)"
* SCT#44300000       "Entire vertebral column (body structure)"
* SCT#16982005       "Shoulder region structure (body structure)"
* SCT#113197003       "Bone structure of rib (body structure)"
* SCT#29836001       "Hip region structure (body structure)"
* SCT#46633002       "Entire bony pelvis (body structure)"
* SCT#12921003       "Pelvic structure (body structure)"
* SCT#48566001       "Bone structure of extremity (body structure)"
* SCT#39937001       "Skin structure (body structure)"
* SCT#87784001       "Soft tissues (body structure)"
* SCT#38266002       "Entire body as a whole (body structure)"
// no concept for hemibody
