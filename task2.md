> [***Back to the main page***](index.md)    
  
  
   
**Table of content:**

- [Subtask 2: Find evidence in support or against specific drugs for the treatment of COVID-19](#subtask-2-find-evidence-in-support-or-against-specific-drugs-for-the-treatment-of-covid-19)

## Subtask 2: Find evidence in support or against specific drugs for the treatment of COVID-19

The goal of this subtask is to **find evidence in support or against specific drugs for the treatment of COVID-19**
within the OGER-annotated LitCovid dataset (both the abstract dataset and the full text dataset can be used).

The following drugs in particular will be considered: 
- [hydroxychloroquine](https://en.wikipedia.org/wiki/Hydroxychloroquine) ([RxNorm:5521](http://bioportal.bioontology.org/ontologies/RXNORM?p=classes&conceptid=5521), [CHEBI:5801](https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI%3A5801), [MeSH:D006886](https://meshb.nlm.nih.gov/record/ui?ui=D006886), [UMLS:C0020336](https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&version=20.01d&code=C557&ns=ncit))
- [remdesivir](https://en.wikipedia.org/wiki/Remdesivir) (RxNorm:2284718, MeSH:C000606551, UMLS:C4726677, CHEBI:145994)
- [avigan](https://en.wikipedia.org/wiki/Favipiravir) (CHEBI:134722, MeSH:C462182, UMLS:C1138226)

Notice that COVID-19 can be identified with [MeSH:C000657245](https://id.nlm.nih.gov/mesh/C000657245.html).

Examples of statements in support/against the clinical usage of Hydroxychloroquine for the treatment of COVID-19:

[32150618](https://pubmed.ncbi.nlm.nih.gov/32150618/): *Hydroxychloroquine was found to be more potent than chloroquine to inhibit SARS-CoV-2 in vitro.*

[32205204](https://pubmed.ncbi.nlm.nih.gov/32205204/): *Chloroquine and hydroxychloroquine have been found to be efficient on SARS-CoV-2, and reported to be efficient in Chinese COV-19 patients.*
*Despite its small sample size our survey shows that hydroxychloroquine treatment is significantly associated with viral load reduction/disappearance in COVID-19 patients and its effect is reinforced by azithromycin.*

[32240719](https://pubmed.ncbi.nlm.nih.gov/32240719/): *No evidence of rapid antiviral clearance or clinical benefit with the combination of hydroxychloroquine and azithromycin in patients with severe COVID-19 infection.*

It is suggested that the participants use OGER annotation to detect occurrences of the drugs, and then identify the sentences containing such mentions. Ideally, a process of classification should be implemented which classify such sentences as in support or against the usage of the drug.

## How to use OGER for this task.

(1) identify articles in PubMed that contain the drug and COVID-19. For example: 
- [PubMed:32295814](https://pubmed.ncbi.nlm.nih.gov/32295814/) *Hydroxychloroquine and COVID-19*
- [PubMed:32445440](https://pubmed.ncbi.nlm.nih.gov/32445440/) *Remdesivir for the Treatment of Covid-19 - Final Report*
- [PubMed:32895599](https://pubmed.ncbi.nlm.nih.gov/32895599/) *Favipiravir: A new and emerging antiviral option in COVID-19*

(2) process the articles with OGER, e.g.

`curl https://pub.cl.uzh.ch/projects/ontogene/oger/fetch/pubmed/tsv/32895599 > 32895599.tsv`

(3) Examine the results. 
~~~~
32895599	chemical	0	11	Favipiravir	favipiravir	CHEBI:134722	Title	S1	ChEBI	CUI-less
32895599	chemical	0	11	Favipiravir	favipiravir	C462182	Title	S1	MeSH supp (Chemicals and Drugs)	C1138226
32895599	chemical	0	11	Favipiravir	favipiravir	C462182	Title	S1	CTD (MESH)	C1138226
32895599	chemical	32	41	antiviral	antiviral agent	CHEBI:22587	Title	S1	ChEBI	CUI-less
32895599	disease	52	60	COVID-19	COVID-19	C000657245	Title	S1	MeSH supp (Diseases)	CUI-less
~~~~

- Notice that the drug has been annotated (perhaps multiple times). If the same term is present in multiple ontologies, OGER will provide an annotation line ofr each of them. 
- Notice that the term is annotated in column 5
- Notice that column 7 contains the ID of the drug and the ID for COVID-19. 
- Notice that column 9 contains a sentence ID (different for every sentence of the article)

You can find [here](https://covid19.nlp.idsia.ch/oger-rest.html#orgheadline8) a documentation of the fields of the tsv output format of OGER.

(4) Write a simple program that identifies sentences that contain both the drug and a mention of COVID-19.


--------------------

> [***Previous: Subtask 1***](task1.md)  
> [***Next: Subtask 3***](task3.md)
