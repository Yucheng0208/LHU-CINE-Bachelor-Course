import cv2
import numpy as np
DATAIMG = r'C:\\DIP\\image\\'
def reduce(img):
    img_blur = cv2.GaussianBlur(img, (5, 5), 0)
    nr1, nc1 = img_blur.shape[:2]
    nr2, nc2 = nr1//2, nc1//2
    img_reduced = cv2.resize(img_blur, (nr2, nc2), interpolation=cv2.INTER_NEAREST)
    return img_reduced

def expand(img):
    nr1, nc1 = img.shape[:2]
    nr2, nc2 = nr1*2, nc1* 2
    img_expanded = cv2.resize(img, (nr2, nc2), interpolation=cv2.INTER_LINEAR)
    return img_expanded

def decompose(g0, dim_min=4):
    pyramid = []
    nr, nc = g0.shape[:2]
    while nr>dim_min or nc>dim_min:
        g1 = reduce(g0)
        l0 = g0 - expand(g1) # detail images
        pyramid.insert(0, l0)
        g0 = g1
        nr, nc = g0.shape[:2]
    pyramid.insert(0, g0)
    return pyramid # pyramid = [g4, l4, l3, l2, l1, l0]

def reconstruct(pyramid):
    img = pyramid[0]
    for i in range(1, len(pyramid)):
        img = expand(img) + pyramid[i]
    return img

def pyramid_show(pyramid, name, resize=True):
    level = len(pyramid)
    nr, nc = pyramid[level-1].shape[:2]
    for i in range(0, level):
        wintitle = ("%s%d" % (name, i))
        if resize:
            img = cv2.resize(pyramid[i], (nr, nc), interpolation=cv2.INTER_NEAREST)
        else:
            img = pyramid[i]
        img = cv2.normalize(img, None, 0, 1.0, cv2.NORM_MINMAX, dtype=cv2.CV_32F)
        cv2.imshow(wintitle, img)

def merge(img1, img2):
    nr1, nc1 = img1.shape[:2]
    nr2, nc2 = img2.shape[:2]
    return cv2.hconcat([img1[:, 0:nc1//2], img2[:, nc2//2:nc2]])

def pyramid_merge(pyramid1, pyramid2):
    pyramid_merged = []
    for i in range(0, len(pyramid1)):
        pyramid_merged.append(merge(pyramid1[i], pyramid2[i]))
    return pyramid_merged
orange = DATAIMG + 'orange.jpg'
apple = DATAIMG + 'apple.jpg'
g0 = cv2.imread(orange, -1 )
g0 = cv2.cvtColor(g0, cv2.COLOR_BGR2GRAY)
pyramid0 = decompose(g0, 32)
pyramid_show(pyramid0, 'orange', True)

g1 = cv2.imread(apple, -1 )
g1 = cv2.cvtColor(g1, cv2.COLOR_BGR2GRAY)
pyramid1 = decompose(g1, 32)
pyramid_show(pyramid1, "apple", True)

g_merged = merge(g0, g1)
cv2.imshow('original_merged.png', g_merged)

pyramid_merged = pyramid_merge(pyramid0, pyramid1)
img_restored = reconstruct(pyramid_merged)
cv2.imshow('restored_merged.png', img_restored)

cv2.waitKey(0)