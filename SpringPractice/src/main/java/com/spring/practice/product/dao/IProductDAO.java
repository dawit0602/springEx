package com.spring.practice.product.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.practice.common.dto.SearchDTO;
import com.spring.practice.product.dto.ProductDTO;

@Mapper
public interface IProductDAO {
	List<ProductDTO> getProductList(SearchDTO search);
	
	ProductDTO getProduct(int ProductNo);
}
