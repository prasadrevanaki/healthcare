/*package com.mediwr.Mediware.DBSeeder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.mediwr.Mediware.constants.UserRoleType;
import com.mediwr.Mediware.domain.Address;
import com.mediwr.Mediware.domain.Hotel;
import com.mediwr.Mediware.domain.Review;
import com.mediwr.Mediware.domain.User;
import com.mediwr.Mediware.repository.HotelRepository;
import com.mediwr.Mediware.repository.UserRepository;

@Component
public class DbSeeder implements CommandLineRunner {
	
	@Autowired
	private HotelRepository hotelRepository;
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public void run(String... arg0) throws Exception {
		
		Hotel marriot = new Hotel("Marriot", 130, new Address("Paris", "France"), Arrays.asList(new Review("John", 8, false), new Review("Mary", 7, true)));
		Hotel ibis = new Hotel("Ibis", 90, new Address("Bucharest", "Romania"), Arrays.asList(new Review("Teddy", 9, true)));
		Hotel sofitel = new Hotel("Sofitel", 200, new Address("Rome", "Italy"), new ArrayList<>());
		
		this.hotelRepository.deleteAll();
		
		List<Hotel> hotels = Arrays.asList(marriot, ibis, sofitel);
		this.hotelRepository.save(hotels);

		User admin = new User("admin", "admin@123", "35326242352", "admin@gmail.com", new Address("Delhi", "India"));
		admin.setRoles(new UserRoleType[] {UserRoleType.USER, UserRoleType.ADMIN});
		User user1 = new User("user1", "password", "93729032235", "user1@gmail.com", new Address("Bangalore", "India"));
		
		userRepository.deleteAll();
		userRepository.save(Arrays.asList(user1, admin));
	}
}
*/