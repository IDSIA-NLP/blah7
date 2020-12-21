**Table of content:**

- [BLAH7 project description](#blah7-project-description)
- [Tasks](#tasks)
  - [Subtask 1: Application of OGER to novel papers](#subtask-1-application-of-oger-to-novel-papers)
  - [Subtask 2: Find evidence in support or against specific drugs for the treatment of COVID-19](#subtask-2-find-evidence-in-support-or-against-specific-drugs-for-the-treatment-of-covid-19)
  - [Subtask 3: Document classification](#subtask-3-document-classification)
    - [Aim](#aim)
- [Team Members](#team-members)

## BLAH7 project description

The goal of this project is to enable the analysis of COVID-19 related scientific literature by enriching it with domain specific entities.
We have automatically processed the entire [LitCovid](https://www.ncbi.nlm.nih.gov/research/coronavirus/) corpus with our [OGER](https://nlp.idsia.ch/TOOLS/OGER/) pipeline.

Our terminologies are derived from the major life science databases using our [Bio Term Hub](https://pub.cl.uzh.ch/projects/ontogene/biotermhub/), which allows us to maintain up-to-date dictionaries synchronized with the original resources.

Our current annotation pipeline generates annotations for several entity types:

- cell lines
- clinical drugs (RxNorm)
- cells
- molecular processes
- sequences
- organ/tissue
- chemicals
- Gene Ontology (GO)
- organisms
- proteins

More specifically, we have processed two corpora derivered from LitCovid:

- [The LitCovid abstracts](https://covid19.nlp.idsia.ch/litcovid-oger-bb.html) (same as provided by LitCovid)
- [The LitCovid full texts](https://covid19.nlp.idsia.ch/litcovidPMC-oger-bb.html) (the full text papers of LitCovid abtracts, for the papers where the full text is contained in PubMed Central)


![example of abstract annotation](./img/LitCovid-PubAnnotation.png)

## Tasks

Our proposed project can be divided into the three following subtasks.

### [Subtask 1: Application of OGER to novel papers](task1.md)

In the first subtask, we plan to use OntoGene's Biomedical Entity Recogniser (OGER) to annotate novel papers. For this purpose we will use OGER's for COVID-19 dedicated API, which will allow us to obtain COVID-19 specific information in the second subtask.

>[***Go to Subtask 1***](task1.md)

### [Subtask 2: Find evidence in support or against specific drugs for the treatment of COVID-19](task2.md)

The goal of this subtask is to **find evidence in support or against specific drugs for the treatment of COVID-19**
within the OGER-annotated LitCovid dataset (both the abstract dataset and the full text dataset can be used).

>[***Go to Subtask 2***](task2.md)

### [Subtask 3: Document classification](task3.md)

The medical literature relevant to Coronavirus disease 2019 (COVID-19) is growing exponentially. Doctors, Clinicians, and health workers in general need tools monitoring and prioritizing the literature to make the most of their time by allowing them to focus on the literature more relevant to their endeavors. 

Text classification is one of the predominant tasks in Natural Language Processing. It has many applications, including fake news detection, sentiment analysis, among others. For the current pandemic, an immediate application is to categorize COVID-19 related documents in different medical specialty areas to respond to the need for updated information on priority topics.

#### Aim


This assignment aims to classify COVID-19 literature following a 3-way classification scheme developed considering the [PRECEPT scheme](https://pubmed.ncbi.nlm.nih.gov/29019317/). The documents should be classified in 3 independent dimensions: clinical specialties, types, topics-and-subtopics. The later is a two-level classification.

>[***Go to Subtask 3***](task3.md)

## Team Members
- Nico Colic
- Joseph Cornelius
- Oscar Lithgow
- Fabio Rinaldi



