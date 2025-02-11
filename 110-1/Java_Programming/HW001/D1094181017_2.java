/**
 *
 * @author Yu.cheng
 * @Datetime 202111111
 * @學號 D1094181017
 * @姓名 張育丞
 */
public class Main {
  public static void main(String[] args) {
    int i = 10; //設定i預設值
    int sum = 0; //設定sum預設值
    while (i < 200) { //迴圈條件
      if (i % 5 == 0) { //判斷有沒有被5整除
        i++; //進行i累加
        continue; //持續迴圈
      }
      sum+=i; //sum = sum + i
      i++; //進行i累加
    }  
    System.out.println(sum);
  }
}
/*執行結果：
15960
*/
