package com.qf.admin.pojo.po;

public class Staff {
    private int sid;
    private String sname;
    private int sage;
    private int ssex;
    private String saddress;
    private String simage;

    @Override
    public String toString() {
        return "Staff{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", sage=" + sage +
                ", ssex=" + ssex +
                ", saddress='" + saddress + '\'' +
                ", simage='" + simage + '\'' +
                '}';
    }

    public String getSimage() {
        return simage;
    }

    public void setSimage(String simage) {
        this.simage = simage;
    }



    public Staff(int sid, String sname, int sage, int ssex, String saddress,String simage) {
        this.sid = sid;
        this.sname = sname;
        this.sage = sage;
        this.ssex = ssex;
        this.saddress = saddress;
        this.simage = simage;
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

}
