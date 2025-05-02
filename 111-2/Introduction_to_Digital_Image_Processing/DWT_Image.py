import numpy as np
import cv2
import pywt

DATAIMG=r'C:\\DIP\\image\\'
def DWT_image(f, wavelet):
    #LL1
    coeffs = pywt.dwt2(f, wavelet)
    LL, (LH, HL, HH) = coeffs


    nr1, nc1 = LL.shape[:2]
    g = np.zeros([nr1 * 2, nc1 * 2], dtype='uint8')


    LL_normalized = np.zeros([nr1, nc1])
    cv2.normalize(LL, LL_normalized, 0, 255, cv2.NORM_MINMAX)

    g[0:nr1, nc1:2 * nc1] = np.uint8(np.clip(LH + 128, 0, 255))
    g[nr1:2 * nr1, 0:nc1] = np.uint8(np.clip(HL + 128, 0, 255))
    g[nr1:2 * nr1, nc1:2 * nc1] = np.uint8(np.clip(HH + 128, 0, 255))
    #LL2
    coeffs2 = pywt.dwt2(LL, wavelet)
    LL2, (LH2, HL2, HH2) = coeffs2

    nr2, nc2 = LL2.shape[:2]

    LL2_normalized = np.zeros([nr2, nc2])
    cv2.normalize(LL2, LL2_normalized, 0, 255, cv2.NORM_MINMAX)

    g[0:nr2, 0:nc2] = np.uint8(LL2_normalized[:, :])
    g[0:nr2, nc2:2 * nc2] = np.uint8(np.clip(LH2 + 128, 0, 255))
    g[nr2:2 * nr2, 0:nc2] = np.uint8(np.clip(HL2 + 128, 0, 255))
    g[nr2:2 * nr2, nc2:2 * nc2] = np.uint8(np.clip(HH2 + 128, 0, 255))

    return g


def main():
    img1 = cv2.imread(DATAIMG+"lena.pgm", -1)
    img1= cv2.resize(img1, (500, 500))
    img2= DWT_image(img1, 'haar')
    cv2.imshow("Original Image", img1)
    cv2.imshow("Second Level DWT", img2)
    cv2.waitKey(0)


main()
