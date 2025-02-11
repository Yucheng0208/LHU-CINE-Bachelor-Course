//Auther: D1094181017 張育丞
//Datetime: 20220108
public class D1094181017_2 {
    public static void main(String[] args){
        int a=10, b=0, c;
        int[] arr = new int[10];
        try{
            c = a/b;
            arr[20] = 500;
            int m = Integer.parseInt("Great");
        }
        catch(ArrayIndexOutOfBoundsException e){
            System.out.println(e.toString());
        }
        catch(ArithmeticException e){
            System.out.println(e.toString());
        }
        catch(Exception e){
            System.out.println(e.toString());
        }
    }
}