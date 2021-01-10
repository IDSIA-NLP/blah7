> [***Back to the main page***](index.md)  

**Table of content:**

- [Subtask 1: Application of OGER to novel papers](#subtask-1-application-of-oger-to-novel-papers)
  - [Introduction to OGER](#introduction-to-oger)
  - [1. Check dictionary availability](#1-check-dictionary-availability)
  - [2. Request the annotation](#2-request-the-annotation)
- [Subtask 1: more details](#more-details)

## Subtask 1: Application of OGER to novel papers

In the first subtask, we plan to use OntoGene's Biomedical Entity Recogniser (OGER) to annotate novel papers. For this purpose we will use OGER's for COVID-19 dedicated API, which will allow us to obtain COVID-19 specific information in the second subtask.

### Introduction to OGER
OGER is a fast, accurate entity annotation tool, which is accessible either as a software package, or as a web service. Given text as input, it delivers annotations as output, as illustrated in the picture below.

The dictionaries used for annotation are obtained from major life science databases (cellosaurus, cell ontology, ChEBI, CTD, EntrezGene, Gene Ontology, MeSH, Molecular Process Ontology, NCBI Taxonomy, Protein Ontology, RxNorm, Sequence Ontology, Swiss-Prot, Uberon).

OGER dictionaries are sourced and kept synchronized with the original databases through usage of our own Bio Term Hub.

OGER APIs are Web service APIs (type REST) that allows easy access to online OGER annotation capabilities.

The APIs’ information

Base URL: https://pub.cl.uzh.ch/projects/ontogene/oger/

Below there is a minimal example to perform an online annotation.

### 1. Check dictionary availability
In this example we are using the default dictionary. This dictionary is already available and its hexacode is 509f822aaf527390.

To check status and description by running:

```sh
curl --location --request GET 'https://pub.cl.uzh.ch/projects/ontogene/oger/dict/509f822aaf527390/status'
```

Which would respond something similar to:
```json
{
    "status": "ready",
    "description": "default"
}
```

So, we are ready to go.


### 2. Request the annotation

We can request the annotation of local data by doing a POST to the /upload endpoint and passing the route parameters that specify the input and output format.

Below there is an example of the request. In this example the uploaded data is raw text (txt), the requested output format is a tabular table (tsv) and the text to be annotated is passed in the POST payload.

```sh
curl --location \
--request POST 'https://pub.cl.uzh.ch/projects/ontogene/oger/upload/txt/tsv?dict=509f822aaf527390' \
--header 'Content-Type: text/plain' \
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
![OGER response](./img/response.png)

## More details

You can find a more detailed example [here](https://covid19.nlp.idsia.ch/oger-rest.html).

In order to better understand what is OGER, and how to use it, we recommend watching this [video](https://files.ifi.uzh.ch/cl/rinaldi/ISMB2020/ismb-609.mp4) (less than 10 minutes).

----------------

> [***Next: Subtask 2***](task2.md)
