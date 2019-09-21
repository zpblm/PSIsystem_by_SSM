package cn.kgc.entity;

import java.sql.Date;

public class OutProduct {
	private int opid;
	private String cname;
	private String pname;
	private int onu;
	private Date odate;
	private String uname;
	private String ointrog;

	public int getOpid() {
		return opid;
	}

	public void setOpid(int opid) {
		this.opid = opid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getOnu() {
		return onu;
	}

	public void setOnu(int onu) {
		this.onu = onu;
	}

	public Date getOdate() {
		return odate;
	}

	public void setOdate(Date odate) {
		this.odate = odate;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getOintrog() {
		return ointrog;
	}

	public void setOintrog(String ointrog) {
		this.ointrog = ointrog;
	}
}
