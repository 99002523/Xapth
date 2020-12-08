import    sys 
import    csv

def csvfinder(b):
    csv_file="C:\\Users\\99002523\\eclipse-workspace\\chropath\\files\\apple3.csv"
    # open csv file
    str=""
    with open(csv_file, 'r') as csvfile:
       
        for line in csvfile.readlines():
            array = line.split(',')
            if array[0] == b:
                str=array[2]
                if  "contains" in array[2]:
                    str=array[2]+","+array[3]
                    print(str)
    return str

def stepFinder():
    csv_file="C:\\Users\\99002523\\eclipse-workspace\\chropath\\files\\apple3.csv"
    # open csv file
    array=[]
    myList=[]
    str=""
    with open(csv_file, 'r') as csvfile:
       
        for line in csvfile.readlines():
            array = line.split(',')
            myList.append(array[0])
    return  myList
