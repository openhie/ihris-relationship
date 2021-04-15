Profile:        IhrisRelationship
Parent:         Basic
Id:             ihris-relationship
Title:          "iHRIS Resources Relationship Profile"
Description:    "iHRIS Resources Relationship Profile"

* extension contains
      IhrisReportDetails named reportdetails 1..1 MS and
      IhrisReportLink named reportlink 0..* MS

Extension:      IhrisReportDetails
Id:             ihris-report-details
Title:          "Details of a report"
Description:    "Defines the primary resource of the relationship"
* ^context.type = #element
* ^context.expression = "Basic"
* extension contains
      name 1..1 MS and
      label 0..1 MS and
      resource 1..1 MS and
      query 0..1 MS and
      cachingDisabled 0..1 MS and
      displayCheckbox 0..1 MS and
      IhrisReportElement named reportelement 0..* MS
* extension[name].value[x] only string
* extension[name].valueString 1..1
* extension[name].valueString ^label = "Unique name of the primary resource in the relationship"
* extension[label].value[x] only string
* extension[label].valueString 1..1
* extension[label].valueString ^label = "Relationship title"
* extension[resource].value[x] only string
* extension[resource].valueString 1..1
* extension[resource].valueString ^label = "Resource type of the primary resource"
* extension[query].value[x] only string
* extension[query].valueString 1..1
* extension[query].valueString ^label = "FHIR path to limit instances of this resource"
* extension[cachingDisabled].value[x] only boolean
* extension[cachingDisabled].valueBoolean 1..1
* extension[cachingDisabled].valueBoolean ^label = "Disable caching data for this relationship"
* extension[displayCheckbox].value[x] only boolean
* extension[displayCheckbox].valueBoolean 1..1
* extension[displayCheckbox].valueBoolean ^label = "Whether rows of the report are selectable or not"


Extension:      IhrisReportLink
Id:             ihris-report-link
Title:          "Links to the primary resource"
Description:    "Links to the primary resource"
* extension contains
      name 1..1 MS and
      resource 1..1 MS and
      query 0..1 MS and
      linkElement 1..1 MS and
      linkTo 1..1 MS and
      linkElementSearchParameter 0..1 MS and
      multiple 0..1 MS and
      IhrisReportElement named reportelement 0..* MS
* extension[name].value[x] only string
* extension[name].valueString 1..1
* extension[name].valueString ^label = "Unique name of the link"
* extension[resource].value[x] only string
* extension[resource].valueString 1..1
* extension[resource].valueString ^label = "FHIR resource type being linked"
* extension[query].value[x] only string
* extension[query].valueString 1..1
* extension[query].valueString ^label = "FHIR path to limit instances of this resource"
* extension[linkElement].value[x] only string
* extension[linkElement].valueString 1..1
* extension[linkElement].valueString ^label = "FHIR path of the field this resource used to link to the relationship"
* extension[linkTo].value[x] only string
* extension[linkTo].valueString 1..1
* extension[linkTo].valueString ^label = "FHIR path to the field of the resource that this resource linked to"
* extension[linkElementSearchParameter].value[x] only string
* extension[linkElementSearchParameter].valueString 1..1
* extension[linkElementSearchParameter].valueString ^label = "Search parameter to the resource this resource links to, only for reverse links"


Extension:      IhrisReportElement
Id:             ihris-report-element
Title:          "Resource Fields"
Description:    "Lists fields of a resource to be displayed/cached"
* extension contains
      label 1..1 MS and
      name 1..1 MS and
      display 0..1 MS and
      filter 0..1 MS and
      dropDownFilter 0..1 MS
* extension[label].value[x] only string
* extension[label].valueString 1..1
* extension[label].valueString ^label = "Name of the field unique to the relationship"
* extension[name].value[x] only string
* extension[name].valueString 1..1
* extension[name].valueString ^label = "FHIR path to the field"
* extension[display].value[x] only string
* extension[display].valueString 1..1
* extension[display].valueString ^label = "Human readable name if the relation is to be displayed on the UI"
* extension[filter].value[x] only boolean
* extension[filter].valueBoolean 1..1
* extension[filter].valueBoolean ^label = "Display as a filter"
* extension[dropDownFilter].value[x] only boolean
* extension[dropDownFilter].valueBoolean 1..1
* extension[dropDownFilter].valueBoolean ^label = "Display as a dropdown filter"
