/**
 *
 * @author Yu.cheng
 * @Datetime 202111111
 * @學號 D1094181017
 * @姓名 張育丞
 */

public class Main {
    public static void main(String[] args) {
	int i,j; //定義int型態的i與j
	int arrX[][]={{25,36},{67,58},{73,92}}; //arrX 3x2矩陣
        int arrX_row=arrX.length; // 取出 arrXk的row
        int arrX_column=arrX[0].length;//取出 arrX的column
        int arrY[][]= new int [arrX_row][arrX_column];//將arrX的row與column存入 arrY
	for(i=0; i<arrX.length; i++)
	{
	   for(j=0; j<arrX[i].length; j++) //這此運用到取得第i列的元素個數
	   {
               arrY[i][j] += arrX[i][j]*10; //將arrY*10
               System.out.println("arrY["+i+"]["+j+"]="+arrY[i][j]); //顯示結果
               /* 
               執行結果：
               arrY[0][0]=250
               arrY[0][1]=360
               arrY[1][0]=670
               arrY[1][1]=580
               arrY[2][0]=730
               arrY[2][1]=920
               */
           }
        }
    }
}