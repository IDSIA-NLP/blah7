#
#  1. Check dictionary availability
#

# In this example we are using the default dictionary. This dictionary is already available and its hexacode is 509f822aaf527390.

# To check status and description by running:

curl --location --request GET 'https://pub.cl.uzh.ch/projects/ontogene/oger/dict/509f822aaf527390/status'


#
#  2. Request the annotation
#


#  2.1 Analyzing plain text articles with OGER

# We can request the annotation of local data by doing a POST to the /upload endpoint and passing the route parameters that specify the input and output format.
# Below there is an example of the request. In this example the uploaded data is raw text (txt), the requested output format is a tabular table (tsv) and the text to be annotated is passed in the POST payload.

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

#  2.2 Analyzing PubMed articles with OGER

# And the most basic format to request the annotation is the following
# Since the output will be delivered to your shell (standard output), so you might want to redirect to a file
curl https://pub.cl.uzh.ch/projects/ontogene/oger/fetch/pubmed/tsv/21436587 > 21436587.tsv