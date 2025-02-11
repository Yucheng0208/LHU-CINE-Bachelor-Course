//Auther: D1094181017 張育丞
//Datetime: 20220108
import javax.swing.*;
import java.awt.event.*;

class MyJFrame extends JFrame{
    private JPanel contentPane;
    private JTextField txtId;
    private JButton confirm;
    JLabel title ,answer;
    MyJFrame(){
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100,100,270,180);
        contentPane = new JPanel();
        setContentPane(contentPane);
        contentPane.setLayout(null);

        title = new JLabel("請輸入整數");
        title.setBounds(30, 10, 100, 25);
        contentPane.add(title);

        answer = new JLabel("");
        answer.setBounds(30, 90, 100, 25);
        contentPane.add(answer);

        txtId = new JTextField();
        txtId.setToolTipText("");
        txtId.setColumns(20);
        txtId.setBounds(30, 50, 100, 25);
        contentPane.add(txtId);
        
        confirm = new JButton("確定");
        confirm.setBounds(150, 50, 80, 25);
        contentPane.add(confirm);

        confirm.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e) {
                try{ 
                    String number = txtId.getText();
                    int n = Integer.parseInt(number);
                    if(n==0){
                        answer.setText("");
                    }
                    else if(n%2==0){
                        answer.setText(number+" 是偶數");
                    }else{
                        answer.setText(number+" 是奇數");
                    }
                }catch(Exception a){
                    System.out.println(a.toString());
                }
               
            }
        });

        setVisible(true);
    }
}

public class D1094181017_3 {
    public static void main(String[] args){
        MyJFrame f = new MyJFrame();
    }
}