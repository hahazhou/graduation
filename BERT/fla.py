from flask import Flask,redirect,url_for,request,render_template
import dfatest
import pymysql
import classification

app = Flask(__name__)
connection = pymysql.Connect(host="localhost",port=3306,user="root",password="zhouxiao0828",charset="utf8",db="bert")
cursor = connection.cursor()
label_dict = {
   0:"体育",
   1:"娱乐",
   2:"家居",
   3:"彩票",
   4:"房产",
   5:"教育",
   6:"时尚",
   7:"时政",
   8:"星座",
   9:"游戏",
   10:"社会",
   11:"科技",
   12:"股票",
   13:"财经"
 }

@app.route('/index')
def index():
   cursor.execute('select * from article')
   items = cursor.fetchall()
##   print(items)
##   print(classification.classify())
   return render_template('trueindex.html',content = items)

@app.route('/upload/<text>')
def upload(text):
   user = dfatest.test(text)
   labelid = classification.classify(text)
   label = label_dict[labelid]
   print(user)
   print(label)
   sen_word = user[-1]
   kind = user[:-1]
   return render_template('index_single.html',name = sen_word,content = label,word = kind)

@app.route('/file_upload/<filename>')
def file_upload(filename):
   text_list = dfatest.filetest(filename)
   labelids = classification.file_classify(text_list)
   label = []
   result = {}
   for index in range(len(labelids)):
      label.append(label_dict[labelids[index]])
      result[text_list[index]] = label_dict[labelids[index]]
   print(label)
   return render_template('index.html',content = result)


@app.route('/input')
def input():
   return render_template('login.html')

@app.route('/login',methods = ['POST', 'GET'])
def login():
   if request.method == 'POST':
      content = request.form['nm']
      return redirect(url_for('upload',text = content))
   
@app.route('/file_login',methods = ['POST', 'GET'])
def file_login():
   if request.method == 'POST':
      content = request.form['fn']
      return redirect(url_for('file_upload',filename = content))

if __name__ == '__main__':
   
   app.run()

