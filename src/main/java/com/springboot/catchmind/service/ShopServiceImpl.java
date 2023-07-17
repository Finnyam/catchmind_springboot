package com.springboot.catchmind.service;

import java.text.SimpleDateFormat;
import java.util.*;

import com.springboot.catchmind.dto.SessionDto;
import com.springboot.catchmind.dto.BookingDto;
import com.springboot.catchmind.dto.FacilityDto;
import com.springboot.catchmind.dto.ShopDto;
import com.springboot.catchmind.dto.ShopPhotoDto;
import com.springboot.catchmind.repository.ShopMapper;
import com.springboot.catchmind.repository.ShopPhotoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.catchmind.dao.ShopDao;
import com.springboot.catchmind.dao.ShopPhotoDao;
import com.springboot.catchmind.vo.BookingVo;
import com.springboot.catchmind.vo.FacilityVo;
import com.springboot.catchmind.vo.SessionVo;
import com.springboot.catchmind.vo.ShopPhotoVo;
import com.springboot.catchmind.vo.ShopVo;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Service("shopService")
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	private ShopDao shopDao;
	@Autowired
	private ShopPhotoDao shopPhotoDao;
	@Autowired
	private ShopMapper shopMapper;
	@Autowired
	private ShopPhotoMapper shopPhotoMapper;
	
	@Override
	public int getInsert(ShopDto shopDto) {
		int result = 0;

		String spass = shopMapper.selectSpass();
		int spassCheck = shopMapper.selectSpassCheck(spass);

		if(spassCheck == 0) {
			shopDto.setSpass(spass);
			result = shopMapper.insert(shopDto);
		}
		return result;
	}
	
	@Override
	public int getDetailInsert(ShopDto shopDto) {
		return shopMapper.detailInsert(shopDto);
	}
	
	@Override
	public int getDetailUpdate(ShopDto shopDto) {
		return shopMapper.detailUpdate(shopDto);
	}
	
	@Override
	public int getDetailFacilityUpdate(FacilityDto facilityDto) {

		int facilityExisting = shopMapper.facilityCheck(facilityDto.getSid());

		int result = 0;
		if(facilityExisting == 0) {
			result = shopMapper.facilityInsert(facilityDto);
		}else {
			result = shopMapper.facilityUpdate(facilityDto);
		}
		return result;
	}
	
	@Override
	public FacilityDto getShopFacilitySelect(String sid) {
		return shopMapper.facilitySelect(sid);
	}

	@Override
	public ShopPhotoDto getShopPhotoSelect(String sid) {
		return shopMapper.photoSelect(sid);
	}
	
	@Override
	public int getConfirmUpdate(String sid) {
		return shopDao.update(sid);
	}
	
	@Override
	public ShopDto getShopInfoSelect(String sid) {
		return shopMapper.shopInfoSelect(sid);
	}
	
	@Override
	public List<BookingDto> getShopReservationSelectJson(String sid, String startDate, String endDate) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("sid", sid);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		return shopMapper.reservationSelect(map);
	}
	
	@Override
	public int getPhotoSelectCheck(String sid) {
		return shopMapper.photoSelectCheck(sid);
	}

	@Override
	public int getPhotoInsert(String sid, ShopPhotoDto shopPhotoDto) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sid", sid);
		map.put("shopPhotoDto", shopPhotoDto);
		return shopPhotoMapper.insert(map);
	}
	
	@Override
	public int getPhotoUpdate(String sid, ShopPhotoDto shopPhotoDto) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sid", sid);
		map.put("shopPhotoDto", shopPhotoDto);
		return shopPhotoMapper.update(map);
	}
	
	@Override
	public int getShopIdCheck(ShopVo shopVo) {
		return shopDao.shopIdCheck(shopVo);
	}
	
	@Override
	public SessionDto getShopLogin(ShopVo shopVo) {
		return shopDao.shopLogin(shopVo);
	}
	
	@Override
	public int getRegistrationCheck(ShopDto shopDto) {
		return shopMapper.shopRegistrationCheck(shopDto);
	}

	@Override
	public void dateCheck(String startDate, String endDate) throws Exception {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date startDateForm = dateFormat.parse(startDate);
		Date endDateForm = dateFormat.parse(endDate);

		if (startDateForm.compareTo(endDateForm) > 0) {
			throw new Exception("dateCheck Method Exception");
		}
	}
}
