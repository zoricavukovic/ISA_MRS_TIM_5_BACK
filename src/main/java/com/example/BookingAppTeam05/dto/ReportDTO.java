package com.example.BookingAppTeam05.dto;

import com.example.BookingAppTeam05.model.Report;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ReportDTO {
    @NotNull
    private boolean clientCome;
    @Size(max = 1024, message = "{validation.name.size.too_long}")
    private String comment;
    @NotNull
    private boolean penalizeClient;
    @NotNull
    private Long reservationId;

    private boolean processed;

    public ReportDTO() {
    }

    public ReportDTO(boolean clientCome, String comment, boolean penalizeClient, Long reservationId, boolean processed) {
        this.clientCome = clientCome;
        this.comment = comment;
        this.penalizeClient = penalizeClient;
        this.reservationId = reservationId;
        this.processed = processed;
    }
    public ReportDTO(boolean clientCome, String comment, boolean penalizeClient, Long reservationId) {
        this.clientCome = clientCome;
        this.comment = comment;
        this.penalizeClient = penalizeClient;
        this.reservationId = reservationId;
        this.processed = false;
    }

    public ReportDTO(Report report) {
        this.clientCome = report.isComeClient();
        this.comment = report.getComment();
        this.penalizeClient = report.isPenalizeClient();
        this.reservationId = report.getReservation().getId();
        this.processed = report.isProcessed();
    }

    public boolean isClientCome() {
        return clientCome;
    }

    public void setClientCome(boolean clientCome) {
        this.clientCome = clientCome;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public boolean isPenalizeClient() {
        return penalizeClient;
    }

    public void setPenalizeClient(boolean penalizeClient) {
        this.penalizeClient = penalizeClient;
    }

    public Long getReservationId() {
        return reservationId;
    }

    public void setReservationId(Long reservationId) {
        this.reservationId = reservationId;
    }

    public boolean isProcessed() {
        return processed;
    }

    public void setProcessed(boolean processed) {
        this.processed = processed;
    }
}
