package com.amc.service.product;

import java.util.Map;

import com.amc.service.domain.Product;
import com.amc.common.Search;

public interface ProductService {

	public int addProduct(Product product) throws Exception;
	
	public Product getProduct(int prodNo) throws Exception;
	
	public Map<String,Object> getGoodsList(Search search, Product product) throws Exception;
	
	public Map<String,Object> getSnackList(Search search, Product product) throws Exception;
	
	public void updateProduct(Product product) throws Exception;
	
	/*public void deleteProduct(Product product) throws Exception;*/
	public void deleteProduct(int prodNo) throws Exception;
	
}