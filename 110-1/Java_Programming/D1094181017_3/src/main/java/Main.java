/**
 *
 * @author Yu.cheng
 * @Datetime 202111111
 * @學號 D1094181017
 * @姓名 張育丞
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int area1 ,h1=5 ,w1=8; //設定int的長寬預設值
        float area2 ,h2=4.3f ,w2=7.5f; //設定float的長寬預設值
        area1 = cal_area(h1,w1); //呼叫多載
        area2 = cal_area(h2,w2);//呼叫多載
        System.out.println(""+area1); //顯示
        System.out.println(""+area2); //顯示
    }
    static int cal_area(int hgt,int whd){
        return hgt * whd; //將main傳過來的值進行運算
    }
    static float cal_area(float hgt,float whd){
        return hgt * whd; //將main傳過來的值進行運算
    }/*執行結果：
    40
    30.25
    */
}
