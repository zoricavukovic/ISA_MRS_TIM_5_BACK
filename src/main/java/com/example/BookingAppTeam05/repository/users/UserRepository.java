package com.example.BookingAppTeam05.repository.users;

import com.example.BookingAppTeam05.dto.SearchedBookingEntityDTO;
import com.example.BookingAppTeam05.model.LoyaltyProgramEnum;
import com.example.BookingAppTeam05.model.users.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    @Query("select u from User u left join fetch u.place p left join fetch u.role r where u.id=?1")
    User findUserById(Long id);

    @Query("select u from User u join fetch u.place p join fetch u.role r where u.email=?1 and u.deleted=false and u.notYetActivated=false")
    User findByEmail(String email);

    @Query("select u from User u join fetch u.place p join fetch u.role r where u.email=?1 and u.deleted=false")
    User findByEmailAndNotYetActivated(String email);

    @Query("select u from User u join fetch u.place p join fetch u.role r where u.email=?1")
    User findByEmailAllUser(String email);

    @Query(value = "update User u SET u.deleted = true where u.id = ?1")
    @Modifying
    void logicalDeleteUserById(Long id);

    @Query("select u from User u join fetch u.place p join fetch u.role r where u.notYetActivated=true and u.deleted=false")
    List<User> getAllNewAccountRequests();

    @Modifying
    @Query(value = "delete from User u where u.id=?1")
    void physicalDeleteUserById(Long id);

    @Query("select distinct u from User u left join fetch u.role r where u.notYetActivated = false and u.deleted = false")
    List<User> getAllUsers();
}

