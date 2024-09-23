package com.spring.practice.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.practice.common.dto.SearchDTO;
import com.spring.practice.common.exception.BizNotFoundException;
import com.spring.practice.product.dao.IProductDAO;
import com.spring.practice.product.dto.ProductDTO;

@Service
public class ProductService {
	
	@Autowired
	IProductDAO dao;
	
	public List<ProductDTO> getProductList(SearchDTO search){
		List<ProductDTO> result = dao.getProductList(search);
		return result;
	}
	
	public ProductDTO getProduct(int productNo) throws BizNotFoundException {
		ProductDTO result = dao.getProduct(productNo);
		
		if(result == null) {
			throw new BizNotFoundException("해당 게시글의 번호가 존재하지 않습니다.", "API_001");
		}
		return result;
	}
}
