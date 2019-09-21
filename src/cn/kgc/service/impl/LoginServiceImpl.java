package cn.kgc.service.impl;

import cn.kgc.mapper.LoginMapper;
import cn.kgc.mapper.UMapper;
import cn.kgc.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;

    @Autowired
    private UMapper uMapper;

    @Override
    public boolean login(String uname, String pwd) {
        try {
            return this.loginMapper.login(uname).equals(pwd);
        }catch (NullPointerException e){
            return false;
        }
    }

    @Override
    public String predatePwd(String uname) {
        return this.uMapper.predatePwd(uname);
    }

    @Override
    public void updatePwd(String uname, String pwd) {
        this.uMapper.updatePwd(uname,pwd);
    }


}
