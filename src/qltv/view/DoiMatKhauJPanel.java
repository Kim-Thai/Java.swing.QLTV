/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package qltv.view;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import qltv.controller.TaiKhoanController;

/**
 *
 * @author isokids
 */
public class DoiMatKhauJPanel extends javax.swing.JPanel {
    connect_sql a=new connect_sql();
    Connection con= a.getConnectionTo();
    int flag;
    public DoiMatKhauJPanel() {
        initComponents();
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        txt_MaAd = new javax.swing.JTextField();
        txt_passCu = new javax.swing.JTextField();
        txt_passMoi1 = new javax.swing.JTextField();
        txt_passMoi2 = new javax.swing.JTextField();
        txt_ThongBao = new javax.swing.JLabel();
        btn_reset = new javax.swing.JButton();
        btn_DoiMatKhau = new javax.swing.JButton();

        setLayout(new java.awt.GridBagLayout());

        jLabel1.setFont(new java.awt.Font("Arial", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 0, 51));
        jLabel1.setText("ĐỔI MẬT KHẨU");

        jLabel5.setText("Mã Nhân Viên");

        jLabel4.setText("Mật Khẩu Cũ:");

        jLabel2.setText("Mật Khẩu Mới:");

        jLabel3.setText("Nhập Lại Mật Khẩu:");

        txt_ThongBao.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        txt_ThongBao.setForeground(new java.awt.Color(255, 0, 0));
        txt_ThongBao.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);

        btn_reset.setText("Reset");
        btn_reset.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_resetActionPerformed(evt);
            }
        });

        btn_DoiMatKhau.setText("Xác nhận");
        btn_DoiMatKhau.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_DoiMatKhauActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(94, 94, 94)
                        .addComponent(jLabel1))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(jLabel5)
                        .addGap(61, 61, 61)
                        .addComponent(txt_MaAd, javax.swing.GroupLayout.PREFERRED_SIZE, 208, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(jLabel4)
                        .addGap(61, 61, 61)
                        .addComponent(txt_passCu, javax.swing.GroupLayout.PREFERRED_SIZE, 208, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(jLabel2)
                        .addGap(58, 58, 58)
                        .addComponent(txt_passMoi1, javax.swing.GroupLayout.PREFERRED_SIZE, 208, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(jLabel3)
                        .addGap(33, 33, 33)
                        .addComponent(txt_passMoi2, javax.swing.GroupLayout.PREFERRED_SIZE, 208, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(62, 62, 62)
                        .addComponent(btn_DoiMatKhau)
                        .addGap(144, 144, 144)
                        .addComponent(btn_reset))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(txt_ThongBao, javax.swing.GroupLayout.PREFERRED_SIZE, 334, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(0, 0, 0)
                .addComponent(jLabel1)
                .addGap(58, 58, 58)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5)
                    .addComponent(txt_MaAd, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(27, 27, 27)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_passCu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(29, 29, 29)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(3, 3, 3)
                        .addComponent(jLabel2))
                    .addComponent(txt_passMoi1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(35, 35, 35)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(3, 3, 3)
                        .addComponent(jLabel3))
                    .addComponent(txt_passMoi2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(txt_ThongBao, javax.swing.GroupLayout.PREFERRED_SIZE, 29, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(6, 6, 6)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_DoiMatKhau)
                    .addComponent(btn_reset)))
        );

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(0, 10, 39, 10);
        add(jPanel1, gridBagConstraints);
    }// </editor-fold>//GEN-END:initComponents

    private void btn_DoiMatKhauActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_DoiMatKhauActionPerformed
        // đổi mật khẩu.
        checknull();
        System.out.println(flag);
        if(flag==0)
        {
            // check xem có đúng mật khẩu cũ không đã.
            try {
                String sql="select * from Admin where MaAd=? and MatKhauAd=?";
                PreparedStatement statement =con.prepareStatement(sql);
                statement.setString(1, txt_MaAd.getText());
                statement.setString(2, txt_passCu.getText());
                ResultSet rs=statement.executeQuery();
                if(rs.next())
                {
                    if(txt_passMoi1.getText().trim().equals(txt_passMoi2.getText().trim())==false)
                        txt_ThongBao.setText("Mật khẩu mới không khớp nhau.");
                    else if(txt_passMoi1.getText().trim().length()<4)
                        txt_ThongBao.setText("Mật khẩu mới Phải lớn hơn hoặc bằng 4 ký tự.");
                    else
                    try {
                        String sql_update ="update Admin set MatKhauAd=? where MaAd=?";
                        PreparedStatement pre=con.prepareStatement(sql_update);
                        pre.setString(1, txt_passMoi1.getText());
                        pre.setString(2, txt_MaAd.getText());
                        int m=pre.executeUpdate();
                        if(m>0)
                        {
                            JOptionPane.showMessageDialog(this, "Bạn đã đổi mật khẩu thành công.");
                            
                            TaiKhoanController.frame.dispose();
                            TaiKhoanController.dialog.show();
                            
                        }
                            
                        
                        else
                            txt_ThongBao.setText("Bạn đã đổi mật khẩu không thành công.");
                    } catch (Exception e) {
                        System.out.println("chịu");
                    }
                }
                else txt_ThongBao.setText("Mật khẩu hoặc tài khoản không chính xác.");
            } catch (Exception e) {
                System.out.println("tc");
            }
        }
    }//GEN-LAST:event_btn_DoiMatKhauActionPerformed

    private void btn_resetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_resetActionPerformed
        // reset all text.
        txt_MaAd.setText("");
        txt_passCu.setText("");
        txt_passMoi1.setText("");
        txt_passMoi2.setText("");
        txt_ThongBao.setText("");
        
        
    }//GEN-LAST:event_btn_resetActionPerformed
        private void checknull()
        {
            txt_ThongBao.setText("");
             flag=0;
             if(txt_MaAd.getText().trim().length()==0)
             {
                 txt_ThongBao.setText("Bạn chưa nhập mã admin.");
                flag=1;
             }
            if(txt_passCu.getText().trim().length()==0)
            {
                txt_ThongBao.setText("Bạn chưa nhập mật khẩu cũ");
                flag=1;
            }
            else if(txt_passMoi1.getText().trim().length()==0)
            {
                txt_ThongBao.setText("Bạn chưa nhập mật khẩu mới");
                flag=1;
            }
            else if(txt_passMoi2.getText().trim().length()==0)
            {
                txt_ThongBao.setText("Bạn chưa nhập xác nhận mật khẩu mới");
                flag=1;
            }
        }
        
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_DoiMatKhau;
    private javax.swing.JButton btn_reset;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField txt_MaAd;
    private javax.swing.JLabel txt_ThongBao;
    private javax.swing.JTextField txt_passCu;
    private javax.swing.JTextField txt_passMoi1;
    private javax.swing.JTextField txt_passMoi2;
    // End of variables declaration//GEN-END:variables
}
