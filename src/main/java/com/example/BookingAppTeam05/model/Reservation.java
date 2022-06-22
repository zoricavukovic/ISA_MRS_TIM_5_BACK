package com.example.BookingAppTeam05.model;

import com.example.BookingAppTeam05.model.entities.BookingEntity;
import com.example.BookingAppTeam05.model.users.Client;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.*;

@Entity
@Table(name="reservations")
public class Reservation {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Long id;

   @Column(name="startDate", nullable = false)
   private LocalDateTime startDate;

   @Column(name="numOfDays", nullable = false)
   private int numOfDays;

   @Column(name="numOfPersons", nullable = false)
   private int numOfPersons;

   @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
   @JoinTable(name = "reservation_additional_service", joinColumns = @JoinColumn(name = "reservation_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "additional_service_id", referencedColumnName = "id"))
   private Set<AdditionalService> additionalServices;

   @Column(name="fastReservation", nullable = false)
   private boolean fastReservation;

   @Version
   @Column(name="version", unique=false, nullable=false)
   private int version;

   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name="entity_id")
   private BookingEntity bookingEntity;

   @Column(name="canceled")
   private boolean canceled;

   @Column(name="cost")
   private double cost;

   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "client_id")
   private Client client;

   @Column(name="clientDiscountValue")
   private double clientDiscountValue;

   @Column(name="ownerBonus")
   private double ownerBonus;

   @Column(name="systemTakes")
   private double systemTakes;


   public Reservation() {}

   public Reservation(LocalDateTime startDate, int numOfDays, double cost, int numOfPersons, Set<AdditionalService> additionalServices, boolean fastReservation, BookingEntity entity, boolean canceled, Client client) {
      this.startDate = startDate;
      this.numOfPersons = numOfPersons;
      this.additionalServices = additionalServices;
      this.fastReservation = fastReservation;
      this.bookingEntity = entity;
      this.canceled = canceled;
      this.client = client;
      this.numOfDays = numOfDays;
      this.cost = cost;
   }

   public Reservation(Reservation res){
      this.startDate = res.getStartDate();
      this.numOfPersons = res.getNumOfPersons();
      this.additionalServices = res.getAdditionalServices();
      this.fastReservation = res.isFastReservation();
      this.bookingEntity = res.getBookingEntity();
      this.canceled = res.isCanceled();
      this.client = res.getClient();
      this.numOfDays = res.getNumOfDays();
      this.cost = res.getCost();
      this.clientDiscountValue = res.getClientDiscountValue();
      this.ownerBonus = res.getOwnerBonus();
      this.systemTakes = res.getSystemTakes();
   }

   public double getClientDiscountValue() {
      return clientDiscountValue;
   }

   public void setClientDiscountValue(double clientDiscountValue) {
      this.clientDiscountValue = clientDiscountValue;
   }

   public double getOwnerBonus() {
      return ownerBonus;
   }

   public void setOwnerBonus(double ownerBonus) {
      this.ownerBonus = ownerBonus;
   }

   public double getSystemTakes() {
      return systemTakes;
   }

   public void setSystemTakes(double systemTakes) {
      this.systemTakes = systemTakes;
   }

   public Long getId() {
      return id;
   }

   public LocalDateTime getStartDate() {
      return startDate;
   }

   public LocalDateTime getEndDate() {
      return this.startDate.plusDays(this.numOfDays);
   }

   public int getNumOfPersons() {
      return numOfPersons;
   }

   public Set<AdditionalService> getAdditionalServices() {
      return additionalServices;
   }

   public boolean isFastReservation() {
      return fastReservation;
   }

   public BookingEntity getBookingEntity() {
      return bookingEntity;
   }


   public Client getClient() {
      return client;
   }

   public void setStartDate(LocalDateTime startDate) {
      this.startDate = startDate;
   }

   public void setNumOfPersons(int numOfPersons) {
      this.numOfPersons = numOfPersons;
   }

   public void setAdditionalServices(Set<AdditionalService> additionalServices) {
      this.additionalServices = additionalServices;
   }

   public void setFastReservation(boolean fastReservation) {
      this.fastReservation = fastReservation;
   }

   public void setBookingEntity(BookingEntity entity) {
      this.bookingEntity = entity;
   }

   public void setClient(Client client) {
      this.client = client;
   }

   public boolean isCanceled() {
      return canceled;
   }

   public boolean isFinished() {
      return this.getEndDate().isBefore(LocalDateTime.now());
   }

   public void setCanceled(boolean canceled) {
      this.canceled = canceled;
   }

   public int getNumOfDays() {
      return numOfDays;
   }

   public void setNumOfDays(int numOfDays) {
      this.numOfDays = numOfDays;
   }

   public int getVersion() {
      return version;
   }

   public void setVersion(int version) {
      this.version = version;
   }

   public double getCost() {
      return cost;
   }

   public void setCost(double cost) {
      this.cost = cost;
   }
}