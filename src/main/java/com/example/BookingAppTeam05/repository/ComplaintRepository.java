package com.example.BookingAppTeam05.repository;

import com.example.BookingAppTeam05.dto.ComplaintDTO;
import com.example.BookingAppTeam05.model.Complaint;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.Optional;
import java.util.List;

public interface ComplaintRepository extends JpaRepository<Complaint, Long> {
    @Query("select c from Complaint c join fetch c.reservation r " +
            "where r.id=?1")
    Optional<ComplaintDTO> findByReservationId(Long id);

    @Query(value="select distinct c from Complaint c left join fetch c.reservation s left join fetch s.bookingEntity b left join fetch s.client l where c.processed=true")
    List<Complaint> getAllProcessedComplaintsWithReservation();

    @Query(value="select distinct c from Complaint c left join fetch c.reservation s left join fetch s.bookingEntity b left join fetch s.client l where c.processed=false")
    List<Complaint> getAllUnprocessedComplaintsWithReservation();
}
