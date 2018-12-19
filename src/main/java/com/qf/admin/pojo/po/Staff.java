package com.qf.admin.pojo.po;

public class Staff {
    private int sid;
    private String sname;
    private int sage;
    private int ssex;
    private String saddress;

    public Staff(int sid, String sname, int sage, int ssex, String saddress) {
        this.sid = sid;
        this.sname = sname;
        this.sage = sage;
        this.ssex = ssex;
        this.saddress = saddress;
    }

    public Staff() {
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getSage() {
        return sage;
    }

    public void setSage(int sage) {
        this.sage = sage;
    }

    public int getSsex() {
        return ssex;
    }

    public void setSsex(int ssex) {
        this.ssex = ssex;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", sage=" + sage +
                ", ssex=" + ssex +
                ", saddress='" + saddress + '\'' +
                '}';
    }
}
