RuleSet: CancerStageCommonRules
* value[x] only CodeableConcept
* value[x] ^comment = ""    // suppress QA error on #notes link
* insert NotUsed(device)
* insert NotUsed(referenceRange)
* insert NotUsed(component)
* focus only Reference(PrimaryCancerCondition)
* subject only Reference(CancerPatient)
* method from CancerStagingSystemVS (extensible)
// MS flags -- for Pathological staging, they might be redundant with US Core Lab Observation (but that's harmless)
* status and code and subject and effective[x] and value[x] and method and focus MS

Profile: TNMStageGroup
Id: mcode-tnm-stage-group
Parent: Observation
Title: "TNM Stage Group"
Description: "The extent of the cancer in the body, according to the TNM classification system, based on evidence such as physical examination, imaging, and/or biopsy or based on pathologic analysis of a specimen."
* insert CancerStageCommonRules
* hasMember MS
* code from ObservationCodesStageGroupVS (required)
* value[x] from TNMStageGroupVS (preferred)
* insert ObservationHasMemberSlicingRules
* hasMember contains
    tnmPrimaryTumorCategory 0..1 and
    tnmRegionalNodesCategory 0..1 and
    tnmDistantMetastasesCategory 0..1
// Set metadata attributes that show up in the IG
* hasMember[tnmPrimaryTumorCategory] only Reference(TNMPrimaryTumorCategory)
* hasMember[tnmPrimaryTumorCategory] ^short = "TNM Primary Tumor Category"
* hasMember[tnmPrimaryTumorCategory] ^definition = "Category of the primary tumor, based on its size and extent, and based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmPrimaryTumorCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmRegionalNodesCategory] only Reference(TNMRegionalNodesCategory)
* hasMember[tnmRegionalNodesCategory] ^short = "TNM  Regional Nodes Category"
* hasMember[tnmRegionalNodesCategory] ^definition = "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmRegionalNodesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."
* hasMember[tnmDistantMetastasesCategory] only Reference(TNMDistantMetastasesCategory)
* hasMember[tnmDistantMetastasesCategory] ^short = "TNM  Distant Metastases Category"
* hasMember[tnmDistantMetastasesCategory] ^definition = "Category describing the presence or absence of metastases in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmDistantMetastasesCategory] ^comment = "When using this element, the Observation must validate against the specified profile."

Profile:  TNMPrimaryTumorCategory
Id: mcode-tnm-primary-tumor-category
Parent: Observation
Title: "TNM Primary Tumor Category"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* code from ObservationCodesPrimaryTumorVS (required)
* value[x] from TNMPrimaryTumorCategoryVS (preferred)

Profile:  TNMRegionalNodesCategory
Id: mcode-tnm-regional-nodes-category
Parent: Observation
Title: "TNM Regional Nodes Category"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* code from ObservationCodesRegionalNodesVS (required)
* value[x] from TNMRegionalNodesCategoryVS (preferred)

Profile:  TNMDistantMetastasesCategory
Id: mcode-tnm-distant-metastases-category
Parent: Observation
Title: "TNM Distant Metastases Category"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* insert CancerStageCommonRules
* code from ObservationCodesDistantMetastasesVS (required)
* value[x] from TNMDistantMetastasesCategoryVS (preferred)
