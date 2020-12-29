Alias: AssertedDate = http://hl7.org/fhir/StructureDefinition/condition-assertedDate

RuleSet: CancerConditionCommonRules
* extension contains
    AssertedDate named assertedDate 0..1 and
    HistologyMorphologyBehavior named histologyMorphologyBehavior 0..1
* bodySite.extension contains
    LocationQualifier named locationQualifier 0..1
* extension[assertedDate] and extension[histologyMorphologyBehavior] and bodySite and bodySite.extension[locationQualifier] MS
// removed the non-US Core category and allow clinicians to choose MK 11-19-2020
//* category = SCT#64572001 //"Disease"
* bodySite from CancerBodyLocationVS (extensible)
* asserter only Reference(Practitioner or PractitionerRole)
* recorder only Reference(Practitioner or PractitionerRole)

Profile: PrimaryCancerCondition
Id: mcode-primary-cancer-condition
Title: "Primary Cancer Condition"
Parent: USCoreCondition
Description: "Records the the primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.

Cancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the TNMClinicalStageGroup and/or TNMPathologicalStageGroup, which refer back to PrimaryCancerCondition.

Conformance statement:

Condition resources associated with an mCODE patient with a Condition.code in the value set PrimaryOrUncertainBehaviorCancerDisorderVS MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form, for example, when employing a code that extends the PrimaryOrUncertainBehaviorCancerDisorderVS value set. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly."

* insert CancerConditionCommonRules
* code from PrimaryOrUncertainBehaviorCancerDisorderVS (required)
* code obeys primary-cancer-condition-code-invariant
* stage.assessment only Reference(TNMClinicalStageGroup or TNMClinicalPrimaryTumorCategory or TNMClinicalRegionalNodesCategory or TNMClinicalDistantMetastasesCategory or TNMPathologicalStageGroup or TNMPathologicalPrimaryTumorCategory or TNMPathologicalRegionalNodesCategory or TNMPathologicalDistantMetastasesCategory)

Invariant: primary-cancer-condition-code-invariant
Description: "If the code representing 'Other primary cancer condition, specify' is used, a second code from outside the original value set must be present."
Expression: "coding.where(code = 'OtherPrimaryCancerCondition').exists() implies coding.where(code != 'OtherPrimaryCancerCondition' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs').not()).exists()"
Severity: #error

Profile: SecondaryCancerCondition
Parent: USCoreCondition
Id: mcode-secondary-cancer-condition
Title: "Secondary Cancer Condition"
Description: "Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).

Conformance statement:

Condition resources associated with an mCODE patient with a Condition.code in the value set SecondaryCancerDisorderVS MUST conform to this profile. Beyond this requirement, a producer of resources SHOULD ensure that any resource instance associated with an mCODE patient that would reasonably be expected to conform to this profile SHOULD be published in this form, for example, when employing a code that extends the SecondaryCancerDisorderVS value set. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly."

* insert CancerConditionCommonRules
* extension contains RelatedPrimaryCancerCondition named relatedPrimaryCancerCondition 0..1 MS
* code from SecondaryCancerDisorderVS (required)
* code obeys secondary-cancer-condition-code-invariant
* stage 0..0

Invariant: secondary-cancer-condition-code-invariant
Description: "If the code representing 'Other secondary cancer condition, specify' is used, a second code from outside the original value set must be present."
Expression: "coding.where(code = 'OtherSecondaryCancerCondition').exists() implies coding.where(code != 'OtherSecondaryCancerCondition' and $this.memberOf('http://hl7.org/fhir/us/mcode/ValueSet/mcode-secondary-cancer-disorder-vs').not()).exists()"
Severity: #error