# -*-coding: utf-8 -*-
while True:
    age = int(input("請輸入你的年紀："))
    with_parent = input("和父母一起來嗎？(y/n)")
    if((with_parent == 'Y' or with_parent == 'y') or (with_parent == 'N' or with_parent == 'n')) and (age >=0 and age <=100):
        bcs = with_parent.lower()
        break
    else:
        print("Error, Please Try again!!")
        
if age >= 18:
    print("可以看限制級電影")
elif age >= 12:
    print("可以看輔導級電影")
elif (age >= 6 and age < 12) and bcs == "y":
        print("可以看保護級電影")
else:
        print("只能看普遍級電影")

