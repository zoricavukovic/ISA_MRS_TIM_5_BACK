package com.example.BookingAppTeam05.repository;

import com.example.BookingAppTeam05.model.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

    @Query(value="select r from Reservation r where r.bookingEntity.id=?1 and r.canceled=false")
    List<Reservation> findAllActiveReservationsForBookingEntity(Long entityOwner);

    @Query(value="select distinct r from Reservation r left join fetch r.bookingEntity b left join fetch r.client c where r.bookingEntity.id=?1 and r.canceled=false")
    List<Reservation> getReservationsByEntityId(Long cottageId);

    @Query(value="select distinct r from Reservation r left join fetch r.bookingEntity b left join fetch r.client c where r.id=?1")
    Reservation getReservationById(Long id);

    @Query(value="select distinct r from Reservation r left join fetch r.client c left join fetch r.bookingEntity b where r.bookingEntity.id=?1 and r.canceled=false and r.fastReservation=false")
    List<Reservation> findAllReservationsForEntityId(Long id);

    @Query(value="select distinct r from Reservation  r where r.bookingEntity.id=?1 and r.canceled=false")
    List<Reservation> findAllRegularAndFastReservationsForEntityId(Long id);

    @Query(value="select distinct r from Reservation  r where r.bookingEntity.id=?1 and r.fastReservation = true and r.canceled=false")
    List<Reservation> findAllFastReservationsForEntityId(Long id);

    @Query(value="select distinct r from Reservation r left join fetch r.bookingEntity b left join fetch r.client c left join fetch r.additionalServices where r.bookingEntity.id=?1 and r.fastReservation=true and r.canceled=false")
    List<Reservation> getFastReservationsByBookingEntityId(Long bookingEntityId);

    @Query(value="select distinct r from Reservation r left join fetch r.bookingEntity b left join fetch r.client c where c.id=?1 and r.canceled = false ")
    List<Reservation> getReservationsByClientId(Long clientId);

    @Query(value="select r from Reservation r left join fetch r.bookingEntity b left join fetch r.client c left join fetch r.additionalServices where r.id=?1 and r.fastReservation=true and r.canceled=false")
    Optional<Reservation> findFastReservationsById(Long id);

    @Query(value="select r from Reservation r left join fetch r.bookingEntity b left join fetch r.client c left join fetch r.additionalServices where r.id=?1 and r.canceled=false")
    Optional<Reservation> findById(Long id);

    @Query(value="select distinct r from Reservation r left join fetch r.bookingEntity b left join fetch r.client c where r.canceled = false and r.fastReservation = false")
    List<Reservation> getAllFinishedReservations();

    @Query(value="select distinct r from Reservation  r left join fetch r.client c where r.bookingEntity.id=?1 and r.canceled=false")
    List<Reservation> findAllRegularAndFastReservationsForEntityIdWithClient(Long id);

    @Query(value="select distinct r from Reservation  r left join fetch r.client c where r.bookingEntity.id=?1 and r.canceled=true")
    List<Reservation> findAllCanceledReservationsForEntityId(Long entityId);


}
