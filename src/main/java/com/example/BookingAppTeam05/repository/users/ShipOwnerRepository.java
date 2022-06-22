package com.example.BookingAppTeam05.repository.users;

import com.example.BookingAppTeam05.model.users.ShipOwner;
import com.example.BookingAppTeam05.model.users.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ShipOwnerRepository extends JpaRepository<ShipOwner, Long> {
    @Query("select u from ShipOwner u left join fetch u.place p left join fetch u.role r left join fetch u.ships s where u.id=?1")
    ShipOwner getShipOwnerWithShipsById(Long id);
}
