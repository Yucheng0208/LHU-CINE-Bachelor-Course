import urllib.request
url = "https://s.yimg.com/cv/apiv2/twfrontpage/logo/TW_desktop_homerun@2x_new.png"
response = urllib.request.urlopen(url)
fp = open("test2.png", "wb")
size = 0
while True:
    info = response.read(10000)
    if len(info) < 1:
        break
    size = size + len(info)
    fp.write(info)
print(size, "個字元下載...")
fp.close()
response.close()