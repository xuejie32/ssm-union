package com.qf.admin.pojo;

public class CarVO {
    private int cid;
    private int uid;

    @Override
    public String toString() {
        return "CarVO{" +
                "cid=" + cid +
                ", uid=" + uid +
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
}
