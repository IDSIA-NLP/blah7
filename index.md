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

- use OGER to process new papers
- use the annotations to find evidence in support of drugs for the treatment of COVID-19
- classification clinical repository CCG/UNAM. Do the entities help improve classification?

### Subtask 1: Application of OGER to novel papers

In the first subtask, we plan to use OntoGene's Biomedical Entity Recogniser (OGER) to annotate novel papers. For this purpose we will use OGER's for COVID-19 dedicated API, which will allow us to obtain COVID-19 specific information in the second subtask.

#### Introduction to OGER
OGER is a fast, accurate entity annotation tool, which is accessible either as a software package, or as a web service. Given text as input, it delivers annotations as output, as illustrated in the picture below.

The dictionaries used for annotation are obtained from major life science databases (cellosaurus, cell ontology, ChEBI, CTD, EntrezGene, Gene Ontology, MeSH, Molecular Process Ontology, NCBI Taxonomy, Protein Ontology, RxNorm, Sequence Ontology, Swiss-Prot, Uberon).

OGER dictionaries are sourced and kept synchronized with the original databases through usage of our own Bio Term Hub.

OGER APIs are Web service APIs (type REST) that allows easy access to online OGER annotation capabilities.

The APIs’ information

Base URL: https://pub.cl.uzh.ch/projects/ontogene/oger/

Below there is a minimal example to perform an online annotation. (And you can find a more detailed example [here](https://covid19.nlp.idsia.ch/oger-rest.html).)

#### 1. Check dictionary availability
In this example we are not going to use the default dictionary but another one fitted for COVID19 literature. This dictionary is already available and its hexacode is 799a6414c37b2d1a.

To check status and description by running:

```sh
curl --location --request GET 'https://pub.cl.uzh.ch/projects/ontogene/oger/dict/799a6414c37b2d1a/status'
```

Which would respond something similar to:
```json
{
    "status": "ready",
    "description": "default+COVID terminology"
}
```

So, we are ready to go.


#### 2. Request the annotation

We can request the annotation of local data by doing a POST to the /upload endpoint and passing the route parameters that specify the input and output format.

Below there is an example of the request. In this example the uploaded data is raw text (txt), the requested output format is a tabular table (tsv) and the text to be annotated is passed in the POST payload.

```sh
curl --location \
--request POST 'https://pub.cl.uzh.ch/projects/ontogene/oger/upload/txt/tsv' \
--header 'Content-Type: text/plain' \
--data 'dict=799a6414c37b2d1a'\
--data-raw 'The initial cases of novel coronavirus (2019-nCoV)-infected 
pneumonia (NCIP) occurred in Wuhan, Hubei Province, China, in December 2019 
and January 2020.
We analyzed data on the first 425 confirmed cases in Wuhan to
determine the epidemiologic characteristics of NCIP.We collected
information on demographic characteristics, exposure history, and
illness timelines of laboratory-confirmed cases of NCIP that had been
reported by January 22, 2020.'
```

Which should yield this response:   
...  



## Team Members
- Nico Colic
- Joseph Cornelius
- Oscar Lithgow
- Fabio Rinaldi



