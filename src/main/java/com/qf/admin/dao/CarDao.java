package com.qf.admin.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.CarVO1;
import com.qf.admin.pojo.po.Car;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarDao {
    @Select("<script>select" +
            " pdesc,count,pname,price,pimage,cid,uid,tb_car.pid" +
            " from tb_car,tb_product"+
           "<where><if test=\"search!=null and search!=''\">" +
                " uid=#{search} and" +
            "</if>" +
            " tb_car.pid=tb_product.pid</where>" +
            " limit #{offset},#{limit}</script>")
    List<CarVO1> getCar(JSONObject obj);
    @Update("insert into tb_car(uid,pid,count) values(#{uid},#{pid},#{count})")
    void addCar(Car car);
    @Update("update tb_car set uid=#{uid},pid=#{pid},count=#{count} where cid=#{cid}")
    void upCar(Car car);
    @Update("delete from tb_car where cid = #{cid}")
    void delCar(Car car);
    @Select("select * from tb_car where cid=#{cid}")
    Car getCarByCid(Car car);
    @Select("<script>select" +
            " count(*)" +
            " from tb_car,tb_product"+
            "<where><if test=\"search!=null and search!=''\">" +
            " uid=#{search} and" +
            "</if>" +
            " tb_car.pid=tb_product.pid</where></script>")
    int getCarCount(JSONObject obj);
    @Select("select pdesc,count,pname,price,pimage from tb_product p,(select * from tb_car where uid = ${uid})" +
            " c where p.pid = c.pid")
    List<CarVO1> getCar1(@Param("uid") String uid);
}
