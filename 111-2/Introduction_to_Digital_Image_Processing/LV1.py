import cv2
import numpy as np

DATAIMG = r'C:\\DIP\\image\\'

def scan_image(image):
    min_value = np.min(image)

    return min_value

def Sobel_gradient(f, direction=1):
    sobel_x = np.array([[-1,-2,-1], [0,0,0], [1,2,1]])
    sobel_y = np.array([[-1,0,1], [-2,0,2], [-1,0,1]])

    if direction == 1:
        g = cv2.filter2D(f, cv2.CV_32F, sobel_x)

    elif direction == 2:
        g = cv2.filter2D(f, cv2.CV_32F, sobel_y)

    else:
        grad_x = cv2.filter2D(f, cv2.CV_32F, sobel_x)
        grad_y = cv2.filter2D(f, cv2.CV_32F, sobel_y)
        g = grad_x + grad_y

    return g
def calulation(image,min_value):
    height, width = image.shape
    if min_value < 0:
        for y in range(height):
            for x in range(width):
                pixel = image[y, x]
                pixel +=abs(min_value)
                image[y, x] = pixel
    if min_value >=0:
        for y in range(height):
            for x in range(width):
                pixel = image[y, x]
                pixel -= min_value
                image[y, x] = pixel
    max_value = np.max(image)
    print('最大值', max_value)
    for y in range(height):
        for x in range(width):
            pixel = image[y, x]
            pixel=pixel /max_value
            pixel=pixel*255
            image[y, x] = pixel

    return image
def main():
    img_path = DATAIMG + "monalisa.pgm"
    img0 = cv2.imread(img_path, -1)
    cv2.imshow('original image',img0)
    img1 = Sobel_gradient(img0, 3)
    cv2.imshow('filter image ', img1)
    min_value=scan_image(img1)
    print('最小值', min_value)
    img2=calulation(img1,min_value)
    img2 = cv2.convertScaleAbs(img2)
    img2 = cv2.applyColorMap(img2, cv2.COLORMAP_JET)
    cv2.imshow('JET image',img2)
    cv2.waitKey(0)

main()