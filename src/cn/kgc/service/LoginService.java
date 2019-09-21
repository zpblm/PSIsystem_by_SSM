package cn.kgc.service;


public interface LoginService {
    public boolean login(String uname,String pwd);

    public String predatePwd(String uname);

    public void updatePwd(String uname,String pwd);
}
