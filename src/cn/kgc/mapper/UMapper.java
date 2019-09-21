package cn.kgc.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface UMapper {

    @Select(" SELECT pwd FROM tb_user WHERE uname=#{uname} ")
    public String predatePwd(String  uname);

    @Update(" UPDATE tb_user SET pwd=#{pwd} WHERE uname=#{uname} ")
    public void updatePwd(@Param("uname") String  uname, @Param("pwd") String pwd);
}
