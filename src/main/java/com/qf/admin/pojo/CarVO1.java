package com.qf.admin.pojo;

public class CarVO1 {
    private int uid;
    private int pid;
    private int cid;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    private String pname;
    private String price;
    private String pdesc;
    private String pimage;
    private int count;

    @Override
    public String toString() {
        return "CarVO1{" +
                "uid=" + uid +
                ", pid=" + pid +
                ", pname='" + pname + '\'' +
                ", price='" + price + '\'' +
                ", pdesc='" + pdesc + '\'' +
                ", pimage='" + pimage + '\'' +
                ", count=" + count +
                '}';
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
