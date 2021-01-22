> [***Back to the main page***](index.md)    
     


**Table of content:**  
- [Subtask 3: Document classification](#subtask-3-document-classification)
  - [Aim](#aim)
  - [Classification scheme:](#classification-scheme)
    - [Clinical specialities](#clinical-specialities)
    - [Types](#types)
    - [Topics-and-SubTopics](#topics-and-subtopics)
    - [Subtopics](#subtopics)
  - [About the data](#about-the-data)
    - [Data provided for each document](#data-provided-for-each-document)
    - [Number of documents for each class](#number-of-documents-for-each-class)


## Subtask 3: Document classification

The medical literature relevant to Coronavirus disease 2019 (COVID-19) is growing exponentially. Doctors, Clinicians, and health workers in general need tools monitoring and prioritizing the literature to make the most of their time by allowing them to focus on the literature more relevant to their endeavors. 

Text classification is one of the predominant tasks in Natural Language Processing. It has many applications, including fake news detection, sentiment analysis, among others. For the current pandemic, an immediate application is to categorize COVID-19 related documents in different medical specialty areas to respond to the need for updated information on priority topics.

### Aim


This assignment aims to classify COVID-19 literature following a 3-way classification scheme developed considering the [PRECEPT scheme](https://pubmed.ncbi.nlm.nih.gov/29019317/). The documents should be classified in 3 independent dimensions: clinical specialties, types, topics-and-subtopics. The later is a two-level classification.

**As for the majority of real-life problems the training dataset will be small --considering that for some classes there will be very few examples-- so the challenge is how to better leverage the title and abstract texts and the Named Entities identified by OGER.**


### Preliminary experiments (notebooks)

Here are some notebooks that can help you get started with your experiments:
* [Classification for type-class using document-texts + OGER features](https://github.com/coree/blah7/blob/task3/task3/blah7_subtask3.ipynb)

### Classification scheme:

![classification_scheme](./img/blah_2021_covid-clustering.png)


#### Clinical specialities

There are 29 clinical specialties represented in the dataset: Cardiology, Surgery, Cardiovascular Surgery, Dermatology, Endocrinology, Physiotherapy, Gastroenterology, Hematology, Hepatobiliary Digestive, Infectology, Immunology, Internal Medicine, Nephrology, Pulmonology, Neurology, Obstetrics, Dentistry, Ophthalmology, Oncology, Otolaryngology, Radiology, Pathology, Pediatrics , Rehabilitation, Rheumatology, Transplantation, ICU Anesthesia, Virology, Molecular Biology.

#### Types


1. **Intervention studies:** An intervention study is one in which some type of intervention is carried out on the participants (for example, the administration of a drug), in order to evaluate it. This category includes randomized controlled clinical trials, non-randomized controlled studies.
    
2. **Observational studies:** Observational studies correspond to research designs which their objective is "the observation and recording" of events without intervening in their natural course. Measurements can be made over time (longitudinal study), either prospectively or retrospectively; or uniquely (cross-sectional study).
    
3. **Narrative reviews:**  The compilation of the bibliography on a given topic
    
4. **Systematic reviews:** A systematic review aims to gather all the empirical evidence that meets previously established eligibility criteria, in order to answer a specific research question. It uses systematic and explicit methods, which are chosen in order to minimize biases, thus providing more reliable results from which conclusions can be drawn and decisions can be taken (Antman 1992, Oxman 1993).
    
5. **Clinical Practice Guides:** The clinical practice guides provide recommendations on the benefits and disadvantages of different interventions available in healthcare.
    
6. **Others:** Documents that could not be classified in any of the previous categories
    
#### Topics-and-SubTopics

The topics category was created according to the classification of the "[living evidence map on COVID-19](https://www.fhi.no/contentassets/e64790be5d3b4c4abe1f1be25fc862ce/covid-19-evidence-map-protocol-20200403.pdf)":

1. **Diagnosis:** Documents related to the COVID-19 screening tests based on PCR and RT-PCR, serological tests, clinical diagnosis (by medical history, imaging, blood tests).
2. **Prognosis:** Documents that determine the prognosis of COVID-19 disease by clinical or laboratory criteria. As well as, studies that determine the case fatality rate, complications or disability.
       
3. **Epidemiology:** Documents related to the incidence and prevalence of COVID-19 disease.
       
4. **Etiology:** Documents or articles related to: the characteristics of SARS-CoV-2 (the origin or history of SARS-CoV-2, analysis of the sequences, subtypes, serotypes of SARS-CoV-2, pathogenicity and virulence, reservoirs); modes of transmission (animal to person, person to person, aerosols, blood, feces, surfaces); pathophysiology (incubation period, SARS-CoV-2 immune response)
       
5. **Experiences, perceptions, conceptions:** Documents related to perceptions, reliability, barriers and facilitators, political aspects, economic aspects, ethical aspects, collateral consequences, social media, equity.
       
6. **Clinical overview:** Documents of cohorts that describe clinical characteristics.
       
7. **Interventions:** Documents of interventions that aim to manage the pandemic: strategies for behavior modification, case identification, follow-up contacts, communication strategies, disinfection of public spaces, warehouses and offices, information systems geographic, planning to increase ICU beds, triage, staff planning.
       
8. **Modeling:**

9. **Prevention and control:** Documents related to quarantine, restrictions on the movement of citizens, isolation, restrictions on schools, kindergartens, work from home, restrictions on business activities and events, travel restrictions, physical barriers (masks, gloves, others), hand washing, hand disinfection, vaccines.
       
10. **Health services:** Documents related to the investigation of health services.

#### Subtopics

As for the subtopics, there are 27 different categories such as: Isolation, Antivirals, Biologicals, Prisons, Chloroquine and Hydroxychloroquine, Corticosteroids, Disinfection, Clinical Diagnosis, Therapeutic Targets, Treatment Clinical Trials, Personal Protective Equipment, Images, Drug Interactions, Ivermectin, General Prevention Measures, Plasma, Serological Tests , Molecular Detection Tests, School and University Restrictions, Travel Restrictions, Citizen Circulation Restrictions, Evidence Summaries, Vital and Ventilatory Support, Alternative Therapies, Vaccine, Public Road, Others.


### About the data

The collection of documents to be classified is part of a [repository](https://covid19.ccg.unam.mx/repoinfo.html) created by an [interdisciplinary cooperation group](https://covid19.ccg.unam.mx/index.html). The sources of information were medical databases, government and institutional websites.

Contrasting with the [LitCovid](https://www.ncbi.nlm.nih.gov/research/coronavirus/) dataset and the COVID-19 Open Research Dataset ([CORD19](https://allenai.org/data/cord-19)),  the dataset here presented is not limited to scientific articles but it also includes other types of documents relevant to the health workers, e.g., *Clinical practice guides*.

#### Provided data

* **Classified** data. More than 600 documents classified accordingly to the described scheme. [Download data](https://github.com/coree/blah7/raw/gh-pages/blah7_subtask3.zip)

* **No-classified** data. Please find [Download data](https://covid19.nlp.idsia.ch/BLAH7/txts.tgz) a large collection of COVID-related clinically relevant documents (47,424)  that can be used to experiment with.


#### Classified data

The documents' metadata and classification are provided in two files: One contains the documents data and their classifications (classes ids), and the second file has the list of all the classes referenced in the first file.
Also, a plain-text file is provided for each document with the text extracted from the original pdf, the name of the correspondent text file of each document is listed in the column *txt_file* of the metadata file.

##### Data Format

**blah7_subtask3.tsv**, data is stored one-document-per-line in tsv format. The columns in the metadata tsv file are:
* title - Document's title
* cls_speciality  - assigned classes for the specialty category
* cls_type - assigned classes for the type category
* cls_topic assigned classes for the topic category
* cls_subtopic - assigned classes for the subtopic category
* abstract - document's abstract (not every document has it)
* txt_file - the name of the file with the document's text 

**blah7_subtask3_classes.tsv**, The columns in the class file are:
* id - class ID, the one used in the metadata file
* class_name - name of the class


#### Number of documents for each class

|Speciality|Docs.|
|--|--|
|Cardiology|9|
|Surgery|6|
|Cardiovascular Surgery|8|
|Dermatology|5|
|Endocrinology|8|
|Physiotherapy|2|
|Gastroenterology|12|
|Hematology|5|
|Digestive Hepatobiliary|5|
|Infectology|7|
|Immunology|4|
|Internal Medicine|6|
|Nephrology|7|
|Pneumology|19|
|Neurology|5|
|Obstetrics|11|
|Odontology|2|
|Ophthalmology|5|
|Oncology|18|
|Otorhinolaryngology|3|
|Pathology|2|
|Pediatrics|24|
|Psychiatry|14|
|Radiology|24|
|Rehabilitation|2|
|Rheumatology|3|
|Transplant|3|
|ICU Anesthesia|20|
|Virology, Molecular Biology|42|



|Types|Docs.|
|--|--|
|Observational Studies|56|
|Intervention Studies|2|
|Clinical Practice Guidelines|10|
|Others|164|
|Narrative Reviews|31|
|Systematic Reviews|9|


|Topics|Docs.|
|--|--|
|Diagnosis|25|
|Epidemiology|109|
|Experiences Perceptions Consequences|18|
|Clinical Overview|48|
|Interventions|3|
|Predictive Clinical Models|25|
|Prevention and Control|57|
|Personal Health Support Students and Society|31|
|Telemedicine|3|
|Transmission|1|
|Treatment|79|


|SubTopics|Docs.|
|--|--|
|Isolation|2|
|Antivirals|9|
|Biological|7|
|Jails|1|
|Chloroquine and Hydroxychloroquine|8|
|Corticosteroids|1|
|Disinfection|2|
|Clinical diagnosis|1|
|Therapeutic targets|4|
|Treatment Clinical Trials|3|
|Personal protection equipment|10|
|Images|1|
|Drug Interactions|3|
|Ivermectin|1|
|General Prevention Measures|15|
|Others|66|
|Plasma|5|
|Serological tests|3|
|Molecular Detection Tests|11|
|Colleges and Universities Restrictions|1|
|Travel restriction|1|
|Citizen Circulation Restriction|1|
|Evidence Summaries|4|
|Vital and Ventilatory Support|1|
|Alternative therapies|1|
|Vaccine|2|
|Public road|1|

--------------------

> [***Previous: Subtask 2***](task2.md)  
