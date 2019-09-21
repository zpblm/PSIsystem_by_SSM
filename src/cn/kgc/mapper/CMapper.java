package cn.kgc.mapper;

import cn.kgc.entity.C;
import cn.kgc.entity.InProduct;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

public interface CMapper {

	@Select(" SELECT * FROM tb_class ")
	public List<C> selectC();

	@Select(" SELECT cname FROM tb_class ")
	public List<String> selectCname();

	@Insert(" INSERT INTO tb_class ( cname,cintrog ) VALUES (#{cname},#{cintrog}) ")
	public void addC(C c);

	@Select(" SELECT pid FROM tb_product WHERE cname=#{cname} LIMIT 1 ")
	public String predeleteC(String cname);

	@Delete(" DELETE FROM tb_class WHERE cname=#{cname} ")
	public void deleteC(String cname);

	@Update(" UPDATE tb_class SET cname=#{cname},cintrog=#{cintrog} WHERE cid=#{cid} ")
	public void updateC(C c);

	@Update(" UPDATE tb_product SET cname=#{cname} WHERE cname=#{cname} ")
	public void postupdateC(String cname);
}
