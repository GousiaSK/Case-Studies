import os 
import pandas as pd 
class fun():
    def __init__(self,source,destination):
        self.source = source
        self.destination = destination 
        self.d = {"outcomes.csv" : 'outcomes',"street.csv" : "crimes","stop-and-search.csv" : "stop_and_search"}
    def mapping(self):
        files = os.listdir(self.source)
        self.d1 = {}
        for file in files:
            for i in self.d:
                if i in file:
                    if self.d[i] not in self.d1:
                        self.d1[self.d[i]]=[]
                    else:
                        self.d1[self.d[i]].append(file) 
    def l(self):
        self.mapping()
        self.data = {}
        for i in self.d1:
            l = []
            for file in self.d1[i]:
                path = os.path.join(self.source,file)
                l.append(pd.read_csv(path))
            self.data[i] = pd.concat(l,axis=0)
    def fun_two(self):
        self.l()
        for i in self.data:
            path = os.path.join(self.destination,f"{i}.csv")
            self.data[i].to_csv(path)