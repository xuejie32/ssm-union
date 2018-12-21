package com.qf.admin.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.admin.pojo.po.Product;
import com.qf.admin.service.impl.ProductServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class ProductAction {
    @Autowired
    private ProductServiceImpl ser;

    /*@GetMapping("/{page}")
    public String product(@PathVariable String page){
        return page;
    }*/
    //ee

    @ResponseBody
    @RequestMapping(value = "/products",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object listProducts(@RequestBody JSONObject jsonObject){
        System.out.println(jsonObject);
        jsonObject=ser.ListProducts(jsonObject);
        return jsonObject;
    }

    /**
     * 新增商品
     */
//    @PostMapping("/saveProduct")
//    public String addProduct(Product p){
//        int i=ser.addProduct(p);
//        System.out.println(i);
//        return "redirect:product";
//    }

    @PostMapping("/saveProduct")
    public String upload(HttpServletRequest request, @RequestParam("file")MultipartFile file , Product p ) throws IOException {
        if (!file.isEmpty()) {
            String path = request.getServletContext().getRealPath("/photo/");
            String filename = file.getOriginalFilename();
            //String newFilename="/images/"+filename;
            //获取file对象
            File filePath = new File(path, filename);
            //判断路径是否存在,不存在就创建一个
            if (!filePath.getParentFile().exists()) {
                filePath.getParentFile().mkdirs();
            }
            //将上传文件保存在一个目标文件中
            try {
                file.transferTo(new File(path + File.separator + filename));
            } catch (Exception e) {
                e.printStackTrace();
            }
            String newFilename = "photo/" + filename;
            p.setPimage(newFilename);
        }
        int i=ser.addProduct(p);
        System.out.println(i);
        return "redirect:product";
    }
        /**
         * 修改商品
         */
    @PostMapping("/updateProduct")
    public String update(Product p){
        int i=ser.updateProduct(p);
        return "redirect:product";
    }

    /**
     * 删除商品
     */
    @GetMapping("/deleteProduct")
    public String deleteProduct(Product p){
        int i=ser.deleteProduct(p);
        return "redirect:product";
    }

    /**
     * 查询所有
     */
    @GetMapping("/AllProduct")
    public String AllProduct(Model model){
       List<Product> list= ser.AllProduct();
       model.addAttribute("products",list);
        return "store";
    }
}
