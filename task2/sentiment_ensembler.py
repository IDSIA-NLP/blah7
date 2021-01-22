#from flair.models import TextClassifier
import flair
from textblob import TextBlob
import nltk
from nltk.sentiment.vader import SentimentIntensityAnalyzer
import numpy as np



class SentimentEnsembler(object):

    def __init__(self):
        
        self.flair_analyzer = flair.models.TextClassifier.load('en-sentiment')
        self.textblob_analyzer = TextBlob
        nltk.download('vader_lexicon')
        self.vader_analyzer =  SentimentIntensityAnalyzer()

    def __call__(self, text):
        # compute polarity
        
        # flair score
        try:
            flair_text = flair.data.Sentence(text)
            self.flair_analyzer.predict(flair_text)
            flair_score = flair_text.labels[0].score if flair_text.labels[0].value != "NEGATIVE" else - flair_text.labels[0].score
        except Exception as e:
            print(e)
            flair_score = 0.0

        # TextBlob score
        try:
            textblob_score = self.textblob_analyzer(text).sentiment.polarity
        except Exception as e:
            print(e)
            textblob_score = 0.0

        # Vader score
        try: 
            vader_score = self.vader_analyzer.polarity_scores(text)['compound']
        except Exception as e:
            print(e)
            vader_score = 0.0

        polarity = np.average([textblob_score, vader_score, flair_score], weights=[0.425, 0.425, 0.15])
        # if error occurs force the score to the [-1,1] range
        polarity = np.clip(polarity, -1.0, 1.0)

        return polarity