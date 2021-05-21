import pandas as pd
import numpy as np
from sklearn.metrics import recall_score
from sklearn.metrics import f1_score
from sklearn.metrics import precision_score

result = pd.read_csv('./dataset/test.csv', delimiter='_!_', encoding='utf-8')
predictedAll = pd.read_csv('./path_to/test_results.csv', delimiter='\t')

predictedAll = np.array(predictedAll)
result = np.array(result[1:])

num=0
print(len(predictedAll))
print(len(result))
#for i in range(0, len(predictedAll)):
#    print(predictedAll[i])
#    index = np.argmax(predictedAll[i])
#    print(index,result[i][0])
#    if(index == int(result[i][0])):
#        num+=1

#res = num*1.0/len(predictedAll)

#print(res)
