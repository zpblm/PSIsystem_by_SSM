package cn.kgc.entity;

import java.sql.Date;

public class InProduct {
	private int ipid;
	private String cname;
	private String pname;
	private int inu;
	private Date idate;
	private String uname;
	private String iintrog;

	public int getInu() {
		return inu;
	}

	public void setInu(int inu) {
		this.inu = inu;
	}

	public int getIpid() {
		return ipid;
	}

	public void setIpid(int ipid) {
		this.ipid = ipid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Date getIdate() {
		return idate;
	}

	public void setIdate(Date idate) {
		this.idate = idate;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getIintrog() {
		return iintrog;
	}

	public void setIintrog(String iintrog) {
		this.iintrog = iintrog;
	}
}
