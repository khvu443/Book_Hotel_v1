/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DAO.AccountDAO.AccountDAO;
import Model.Account;
import java.util.List;

public class AccountService {
    
    AccountDAO dao = new AccountDAO();
    
    
    public List<Account> displayAllAccount() {
        return dao.getAccountList();
    }
    
    public List<Account> displayAllAccountByRole(int id) {
        return dao.getAccountListByRole(id);
    }
    
    public Account getAcount(String username, String pass) {
        return dao.getUserInfo(username, pass);
    }
    
    public Account getAcountById(int id) {
        return dao.getUserInfoById(id);
    }
    
    public boolean updateAccount(int id, String password, String re_password, String fullname) {
        //kiểm tra xem password với re-password có giống ko
        if (password.equals(re_password)) {
            dao.updateUser(id, password, fullname);
            return true;
        } else {
            return false;
        }
    }
    
    public void changeStatus(int id, int status) {
        dao.changeStatus(id, status);
    }
    
    public boolean createAccount(Account acc, String re_pass) {
        
        //check xem có cùng password
        if (re_pass.equals(acc.getPassword())) {
            //username của account tạo có trg DB chưa
            if (validUserName(acc.getUsername())) {
                return false;
            } else {
                return dao.addUser(acc.getUsername(), acc.getPassword(), acc.getFullname(), acc.getRoleID(), acc.getStatusAcc());
            }
            
        } else {
            return false;
        }
    }
    
    //Check xem có tồn tại username ko
    private boolean validUserName(String username) {
        
        for (int i = 0; i < dao.getAccountList().size(); i++) {
            if (dao.getAccountList().get(i).getUsername().equals(username)) {
                return true;
            }
        }
        return false;
    }
    
}
