import pandas as pd 
import json 

class fun():
    def __init__(self,source,destination,source1,destination1):
        self.source = source 
        self.destination = destination
        self.source1 = source1
        self.destination1 = destination1

    def get_data(self):
        path = open(self.source)
        path1 = open(self.source1)
        data = json.load(path)
        with open(self.source1,encoding="utf8") as f:
            data1=json.load(f)
        col = data['meta']['view']['columns'] 
        Name = []
        Description = []
        Datatype = []
        for i in col:
            Name.append(i.get('fieldName').replace(":","").strip())
            Description.append(i.get('description',"").strip())
            Datatype.append(i.get('dataTypeName'))
        d = pd.DataFrame({'Column Names':Name,'Descriptions':Description,'Datatypes':Datatype})
        d.to_csv(self.destination)
        col = data1['meta']['view']['columns'] 
        Name = []
        Description = []
        Datatype = []
        for i in col:
            Name.append(i.get('fieldName').replace(":","").strip())
            Description.append(i.get('description',"").strip())
            Datatype.append(i.get('dataTypeName'))
        d1 = pd.DataFrame({'Column Names':Name,'Descriptions':Description,'Datatypes':Datatype})
        d1.to_csv(self.destination1)
