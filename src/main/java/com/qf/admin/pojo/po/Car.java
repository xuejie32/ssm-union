package com.qf.admin.pojo.po;

public class Car {
    private int cid;
    private int uid;
    private int pid;
    private int count;

    @Override
    public String toString() {
        return "Car{" +
                "cid=" + cid +
                ", uid=" + uid +
                ", pid=" + pid +
                ", count=" + count +
                '}';
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
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

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
