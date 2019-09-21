package cn.kgc.mapper;

import cn.kgc.entity.InProduct;
import cn.kgc.entity.OutProduct;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OutProductMapper {

	@Select(" SELECT * FROM tb_out ")
	public List<OutProduct> select();

	@Insert(" INSERT INTO tb_out ( pname,cname,onu,odate,uname,ointrog ) VALUES (#{pname},#{cname},#{onu},#{odate},#{uname},#{ointrog}) ")
	public void add(OutProduct outProduct);

	@Delete(" DELETE FROM tb_out WHERE opid=#{opid}")
	public void delete(int opid);
}
