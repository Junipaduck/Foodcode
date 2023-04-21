package com.itwillbs.foodcode.mapper;

import java.util.*;

import org.apache.ibatis.annotations.*;

import com.itwillbs.foodcode.vo.MenuVO;

public interface MenuMapper {

	int insertMenu(@Param("menu") MenuVO menu,@Param("store_idx") int store_idx);

	List getMenuList(int store_idx);

	int modifyMenu(@Param("store_idx") int store_idx,@Param("menu") MenuVO menu);

	int deleteMenu(@Param("store_idxD") int store_idxD,@Param("menu_idxD") int menu_idxD);

}
