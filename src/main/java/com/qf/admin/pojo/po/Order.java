package com.qf.admin.pojo.po;

import java.sql.Timestamp;

public class Order {
    String typeName;
    String stateName;

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }
    String pimage;

    @Override
    public String toString() {
        return "Order{" +
                "typeName='" + typeName + '\'' +
                ", stateName='" + stateName + '\'' +
                ", pimage='" + pimage + '\'' +
                ", oid=" + oid +
                ", orderNo='" + orderNo + '\'' +
                ", userId=" + userId +
                ", userName='" + userName + '\'' +
                ", payType=" + payType +
                ", totalPrice=" + totalPrice +
                ", orderState=" + orderState +
                ", createTime=" + createTime +
                ", payTime=" + payTime +
                ", supplierName='" + supplierName + '\'' +
                ", deliveryType='" + deliveryType + '\'' +
                ", goodsName='" + goodsName + '\'' +
                '}';
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }

    int oid;
    String orderNo;
    int userId;
    String userName;
    int payType;
    double totalPrice;
    int orderState;
    Timestamp createTime;
    Timestamp payTime;
    String supplierName;
    String deliveryType;
    String goodsName;

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getPayType() {
        return payType;
    }

    public void setPayType(int payType) {
        this.payType = payType;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getOrderState() {
        return orderState;
    }

    public void setOrderState(int orderState) {
        this.orderState = orderState;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Timestamp getPayTime() {
        return payTime;
    }

    public void setPayTime(Timestamp payTime) {
        this.payTime = payTime;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getDeliveryType() {
        return deliveryType;
    }

    public void setDeliveryType(String deliveryType) {
        this.deliveryType = deliveryType;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }
}
