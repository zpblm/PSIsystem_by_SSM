package cn.kgc.mapper;

import cn.kgc.entity.C;
import cn.kgc.entity.P;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface PMapper {

    @Select(" SELECT * FROM tb_product ")
    public List<P> selectP();

    @Select(" SELECT cname FROM tb_product GROUP BY cname")
    public List<String> selectPclass();

    @Update(" UPDATE tb_product SET pnu=pnu+#{inu} WHERE pname = #{pname}")
    public void preInProduct(@Param("pname") String pname,@Param("inu") int inu);

    @Update(" UPDATE tb_product SET pnu=pnu-#{inu} WHERE pname = #{pname}")
    public void preOutProduct(@Param("pname") String pname,@Param("inu") int inu);

    @Update(" UPDATE tb_product SET wnu=#{wnu} WHERE pid=#{pid} ")
    public void updateWnu(@Param("pid") int pid,@Param("wnu") int wnu);

    @Update(" UPDATE tb_product SET pname=#{pname},price=#{price},pintrog=#{pintrog} WHERE pid=#{pid} ")
    public void updateP(P p);

    @Insert(" INSERT INTO tb_product ( pid,pname,price,cname,pintrog,pnu ) VALUES (#{pid},#{pname},#{price},#{cname},#{pintrog},#{pnu}) ")
    public void addP(P p);

    @Delete(" DELETE FROM tb_product WHERE pid=#{pid} ")
    public void deleteP(String pid);
}
