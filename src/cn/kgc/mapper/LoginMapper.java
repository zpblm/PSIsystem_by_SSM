package cn.kgc.mapper;

import org.apache.ibatis.annotations.Select;

public interface LoginMapper {

    @Select(" SELECT pwd From tb_user WHERE uname=#{uname}")
    public String login(String uid);
}
