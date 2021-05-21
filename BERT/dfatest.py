import time
##time1=time.time()

# DFA算法
class DFAFilter():
    def __init__(self):
        self.keyword_chains = {}
        self.delimit = '\x00'

    def add(self, keyword):
        keyword = keyword.lower()
        chars = keyword.strip()
        if not chars:
            return
        level = self.keyword_chains
        for i in range(len(chars)):
            if chars[i] in level:
                level = level[chars[i]]
            else:
                if not isinstance(level, dict):
                    break
                for j in range(i, len(chars)):
                    level[chars[j]] = {}
                    last_level, last_char = level, chars[j]
                    level = level[chars[j]]
                last_level[last_char] = {self.delimit: 0}
                break
        if i == len(chars) - 1:
            level[self.delimit] = 0

    def parse(self, path):
        with open(path,encoding='utf-8') as f:
            for keyword in f:
                self.add(str(keyword).strip())
                
    def parsegbk(self, path):
        with open(path,encoding='GBK') as f:
            for keyword in f:
                self.add(str(keyword).strip())

    def filter(self, message, repl="*"):
        message = message.lower()
        ret = []
        result={}
        result[0]=0
        start = 0
        while start < len(message):
            level = self.keyword_chains
            step_ins = 0
            for char in message[start:]:
                if char in level:
                    step_ins += 1
                    if self.delimit not in level[char]:
                        level = level[char]
                    else:
                        ret.append(repl * step_ins)
                        result[0]=1
                        start += step_ins - 1
                        break
                else:
                    ret.append(message[start])
                    break
            else:
                ret.append(message[start])
            start += 1
        result[1] = ''.join(ret)
        return result


def test(name):
    label=[]
    gfw1 = DFAFilter()
    path="色情词库.txt"
    gfw1.parse(path)
    result1 = gfw1.filter(name)[1]
    if(gfw1.filter(name)[0] == 1):
        label.append('色情')
    gfw2 = DFAFilter()
    path="暴恐词库.txt"
    gfw2.parse(path)
    result2 = gfw2.filter(result1)[1]
    if(gfw2.filter(result1)[0] == 1):
        label.append('暴恐')
    gfw3 = DFAFilter()
    path="民生词库.txt"
    gfw3.parsegbk(path)
    result3 = gfw3.filter(result2)[1]
    if(gfw3.filter(result2)[0] == 1):
        label.append('民生')
    gfw4 = DFAFilter()
    path="反动词库.txt"
    gfw4.parsegbk(path)
    result4 = gfw4.filter(result3)[1]
    if(gfw4.filter(result3)[0] == 1):
        label.append('反动')

    print(name)
    print(result4)
##    print(result1)
    print(label)
    label.append(result4)
##    time2 = time.time()
##    print('总共耗时：' + str(time2 - time1) + 's')
    return label

def filetest(filename):
    f = open(filename,'r',encoding='GBK')
    newfile=[]
    gfw1 = DFAFilter()
    path="色情词库.txt"
    gfw1.parse(path)
    gfw2 = DFAFilter()
    path="暴恐词库.txt"
    gfw2.parse(path)
    gfw3 = DFAFilter()
    path="民生词库.txt"
    gfw3.parsegbk(path)
    gfw4 = DFAFilter()
    path="反动词库.txt"
    gfw4.parsegbk(path)
    for line in f:
        
        result1 = gfw1.filter(line)[1]
        
        result2 = gfw2.filter(result1)[1]
        
        result3 = gfw3.filter(result2)[1]
        
        result4 = gfw4.filter(result3)[1]

        newfile.append(result4)
##        print(name)
        print(result4)
##    print(result1)
##        print(label)
##    time2 = time.time()
##    print('总共耗时：' + str(time2 - time1) + 's')
    return newfile
