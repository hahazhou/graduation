# -*- coding: utf-8 -*-
# 导入pandas包
import pandas as pd

input_name = 'train-origin.csv'
output_name = 'train.csv'

# 读取csv文件
data = pd.read_csv(input_name, delimiter='_!_', encoding='utf-8')

# 显示前10行数据
print(data.head(3))
print(1111)
print(data.iat[0,1])
print(type(data.iloc[[0],[1]]))
print(1111)
#print(data['content'])
print(data.shape[0])
f = open(output_name, 'w', encoding='utf-8')
for i in range(1, data.shape[0]):
#	print(index)
#	print(data.loc[[i][0]])
#	title = str(data.iat[i,2])
	content = str(data.iat[i,3])
	#print(title)
	#print(content)
	if len(content) > 510:
		data.iat[i,3] = content[:255] + content[-(255):]
	f.write(str(data.iat[i,0])+'_!_'+str(data.iat[i,1])+'_!_'+str(data.iat[i,2])+'_!_'+str(data.iat[i,3])+'\n')
	
#	print(content[-5:])
print(data.head(3))
print(len(str(data.iat[5,3])))
f.close()
#data.to_csv(output_name, sep='_!_', encoding='utf-8')
