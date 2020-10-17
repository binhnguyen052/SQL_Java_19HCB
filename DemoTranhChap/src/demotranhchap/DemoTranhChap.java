/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demotranhchap;
import org.jdesktop.layout.GroupLayout;

/**
 *
 * @author aguyl
 */
public class DemoTranhChap {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
//        javax.swing.JFrame mainFrame = new javax.swing.JFrame("App demo tranh chap sql");
//        mainFrame.setVisible(true);
//        MainJframe mf = new MainJframe();
//        mf.setVisible(true);
//        mf.setTitle("Demo tranh chap sql");
        
        String role = "NV";
        if(role == "NV") {
            NV_Frame nvFrame = new NV_Frame();
            nvFrame.setVisible(true);
            nvFrame.setTitle("Nhan Vien");
        
        } else if(role == "KH") {
            
        } else {
            //ADMIN
        }

    }
    
}
