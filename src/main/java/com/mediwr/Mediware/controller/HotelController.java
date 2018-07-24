/*package com.mediwr.Mediware.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mediwr.Mediware.domain.Hotel;
import com.mediwr.Mediware.repository.HotelRepository;

@RestController
@RequestMapping("/hotels")
public class HotelController {

	@Autowired
	private HotelRepository hotelRepository;
	
	@GetMapping("/all")
	public List<Hotel> getAll(){
		List<Hotel> hotels = this.hotelRepository.findAll();
		
		return hotels;
	}
	
	// only inserts data
	@PutMapping
	public void insert(@RequestBody Hotel hotel) {
		this.hotelRepository.insert(hotel);
	}
	
	// save works like upsert
	@PostMapping
	public void update(@RequestBody Hotel hotel) {
		this.hotelRepository.save(hotel);
	}
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable("id") String id) {
		this.hotelRepository.delete(id);
	}
	
	@GetMapping("/{id}")
	public Hotel getById(@PathVariable("id") String id) {
		Hotel hotel = this.hotelRepository.findById(id);
		return hotel;
	}
	
	@GetMapping("/price/{maxPrice}")
	public List<Hotel> getByPricePerNight(@PathVariable("maxPrice") int maxPrice){
		List<Hotel> hotels = this.hotelRepository.findByPricePerNightLessThan(maxPrice);
		return hotels;
	}
	
	@GetMapping("/address/{city}")
	public List<Hotel> getByCity(@PathVariable("city") String city){
		List<Hotel> hotels = this.hotelRepository.findByCity(city);
		return hotels;
	}
	
}
*/