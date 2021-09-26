package com.itheima.core.web.controller;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itheima.common.utils.Page;
import com.itheima.core.po.Category;
import com.itheima.core.po.Goods;
import com.itheima.core.po.User;
import com.itheima.core.service.GoodsService;
/**
 * 商品管理控制器类
 */
@Controller
public class GoodsController {
	// 依赖注入
	@Autowired
	private GoodsService goodsService;


	/**
	 *  商品列表
	 */
	@RequestMapping(value = "/goods/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, Model model) {
		// 所有商品列表
		Page<Goods> goods = goodsService.findGoodsList(page, rows);
		model.addAttribute("page", goods);	
		
		//商品分类列表
        
		List<Category> catelist=goodsService.findCateList();
		model.addAttribute("catelist", catelist);	
//		System.out.println("========="+model);

		return "goods_list";
	}
	
//	新建商品
	@RequestMapping(value = "/good/create.action")
	@ResponseBody
	public String goodsCreate(Goods goods) {

	    int rows = goodsService.createGoods(goods);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}
	
	//通过用户获取id
	@RequestMapping(value = "/good/getgoodById.action")
	@ResponseBody
	public Goods getUserById(Integer id) {
	    Goods goods = goodsService.getGoodsById(id);

	    return goods;
	    
	}
	
	@RequestMapping(value = "/good/update.action")
	@ResponseBody 
	public String goodsUpdate(Goods goods) {
	    int rows = goodsService.updateGoods(goods);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}
	
	
	
	
	

}
