from urllib.request import urlretrieve
import os

saveDir = './images/'
if not os.path.isdir(saveDir):
    os.mkdir(saveDir)

url = 'https://www.flag.com.tw/assets/img/category/F2309.jpg'
urlretrieve(url, saveDir + 'F2309.jpg')