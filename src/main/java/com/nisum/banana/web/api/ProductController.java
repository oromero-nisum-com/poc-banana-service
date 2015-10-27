package com.nisum.banana.web.api;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nisum.banana.web.api.model.Product;

@Controller
@RequestMapping("/productService")
public class ProductController {
	
	
	private static Map<String, Product> products = new HashMap<String, Product>();
	
	static {
		
        Product product1 = new Product();
        product1.setProductId("1");
        product1.setProductName("Calvin Klein Suit");
        product1.setSellingPrice(35.10);
        products.put(product1.getProductId(), product1);
        
        Product product2 = new Product();
        product2.setProductId("2");
        product2.setProductName("Calvin Klein Brown shoe");
        product2.setSellingPrice(45.35);
        products.put(product2.getProductId(), product2);
        
    }

	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public @ResponseBody Product getProduct(@PathVariable String id) throws Exception {		
		Product product = null;
		if (products.containsKey(id)){
			product = products.get(id);
			//get random price for our tests
			DecimalFormat df = new DecimalFormat(".##");
	        product.setSellingPrice(Double.valueOf(df.format(Math.random()*10)));
		}
		return product;

	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public @ResponseBody List<Product> getProducts(ModelMap model) {
		return new ArrayList<Product>(products.values());
	}

}