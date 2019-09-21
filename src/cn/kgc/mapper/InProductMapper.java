package cn.kgc.mapper;

import cn.kgc.entity.InProduct;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface InProductMapper {

	@Select(" SELECT * FROM tb_in ")
	public List<InProduct> select();

	@Insert(" INSERT INTO tb_in ( pname,cname,inu,idate,uname,iintrog ) VALUES (#{pname},#{cname},#{inu},#{idate},#{uname},#{iintrog}) ")
	public void add(InProduct inProduct);



	@Delete(" DELETE FROM tb_in WHERE ipid=#{ipid} ")
	public void delete(int id);
}
