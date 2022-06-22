package com.example.BookingAppTeam05.model.entities;

import com.example.BookingAppTeam05.model.*;
import com.example.BookingAppTeam05.model.users.Client;

import javax.persistence.*;
import javax.persistence.Entity;
import java.util.*;

import static javax.persistence.InheritanceType.TABLE_PER_CLASS;

@Entity
@Inheritance(strategy = TABLE_PER_CLASS)
public abstract class BookingEntity {
    @Id
    @SequenceGenerator(name = "generator2", sequenceName = "entitiesIdGen", initialValue = 1, allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "generator2")
    private Long id;

    @Column(name = "promoDescription")
    private String promoDescription;

    @OneToMany(mappedBy = "bookingEntity", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Reservation> reservations = new HashSet<>();

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name="entity_id")
    private Set<Picture> pictures = new HashSet<>();

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "name", nullable = false)
    private String name;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name="entity_id")
    private Set<UnavailableDate> unavailableDates = new HashSet<>();

    @Column(name = "entityCancelationRate")
    private float entityCancelationRate;

    @Column(name = "entityType")
    @Enumerated(EnumType.STRING)
    private EntityType entityType;

    @OneToMany(mappedBy = "bookingEntity", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Pricelist> pricelists = new HashSet<>();

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Place place;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name="entity_id", nullable = false)
    private Set<RuleOfConduct> rulesOfConduct = new HashSet<>();

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "subscribers", joinColumns = @JoinColumn(name = "booking_entity_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "client_id", referencedColumnName = "id"))
    private Set<Client> subscribedClients = new HashSet<>();

    @Column(name="deleted")
    private boolean deleted = false;

    @Version
    @Column(name="version", unique=false, nullable=false)
    private int version;

    @Column(name="locked", unique = false, nullable = false)
    private boolean locked;

    public BookingEntity() {
    }

    public BookingEntity(String promoDescription, Set<Picture> pictures, String address, String name, Set<UnavailableDate> unavailableDates, float entityCancelationRate, EntityType entityType, Set<Pricelist> pricelists, Place place, Set<RuleOfConduct> rulesOfConduct, Set<Client> subscribedClients) {
        this.promoDescription = promoDescription;
        this.pictures = pictures;
        this.address = address;
        this.name = name;
        this.unavailableDates = unavailableDates;
        this.entityCancelationRate = entityCancelationRate;
        this.entityType = entityType;
        this.pricelists = pricelists;
        this.place = place;
        this.rulesOfConduct = rulesOfConduct;
        this.subscribedClients = subscribedClients;
    }

    public BookingEntity(String promoDescription, String address, String name, float entityCancelationRate, EntityType entityType) {
        this.promoDescription = promoDescription;
        this.address = address;
        this.name = name;
        this.entityCancelationRate = entityCancelationRate;
        this.entityType = entityType;
    }

    public boolean isLocked() {
        return locked;
    }

    public void setLocked(boolean locked) {
        this.locked = locked;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public void addPriceList(Pricelist pricelist) {
        pricelists.add(pricelist);
        pricelist.setBookingEntity(this);
    }

    public Set<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(Set<Reservation> reservations) {
        this.reservations = reservations;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

    public Long getId() {
        return id;
    }

    public String getPromoDescription() {
        return promoDescription;
    }

    public Set<Picture> getPictures() {
        return pictures;
    }

    public String getAddress() {
        return address;
    }

    public String getName() {
        return name;
    }

    public Set<UnavailableDate> getUnavailableDates() {
        return unavailableDates;
    }

    public float getEntityCancelationRate() {
        return entityCancelationRate;
    }

    public EntityType getEntityType() {
        return entityType;
    }

    public Set<Pricelist> getPricelists() {
        return pricelists;
    }

    public Place getPlace() {
        return place;
    }

    public Set<RuleOfConduct> getRulesOfConduct() {
        return rulesOfConduct;
    }

    public Set<Client> getSubscribedClients() {
        return subscribedClients;
    }

    public void setPromoDescription(String promoDescription) {
        this.promoDescription = promoDescription;
    }

    public void setPictures(Set<Picture> pictures) {
        this.pictures = pictures;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setUnavailableDates(Set<UnavailableDate> unavailableDates) {
        this.unavailableDates = unavailableDates;
    }

    public void setEntityCancelationRate(float entityCancelationRate) {
        this.entityCancelationRate = entityCancelationRate;
    }

    public void setEntityType(EntityType entityType) {
        this.entityType = entityType;
    }

    public void setPricelists(Set<Pricelist> pricelists) {
        this.pricelists = pricelists;
    }

    public void setPlace(Place place) {
        this.place = place;
    }

    public void setRulesOfConduct(Set<RuleOfConduct> rulesOfConduct) {
        this.rulesOfConduct = rulesOfConduct;
    }

    public void setSubscribedClients(Set<Client> subscribedClients) {
        this.subscribedClients = subscribedClients;
    }

}