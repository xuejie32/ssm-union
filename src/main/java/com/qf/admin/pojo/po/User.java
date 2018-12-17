package com.qf.admin.pojo.po;

public class User {
    private int uid;
    private String uname;
    private String usex;
    private int uage;
    private String uvip;

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public int getUage() {
        return uage;
    }

    public void setUage(int uage) {
        this.uage = uage;
    }

    public String getUvip() {
        return uvip;
    }

    public void setUvip(String uvip) {
        this.uvip = uvip;
    }

    public User(int uid, String uname, String usex, int uage, String uvip) {
        this.uid = uid;
        this.uname = uname;
        this.usex = usex;
        this.uage = uage;
        this.uvip = uvip;
    }

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", usex='" + usex + '\'' +
                ", uage=" + uage +
                ", uvip='" + uvip + '\'' +
                '}';
    }
}
