package com.slavisa.misic.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Table(name = "emaildb")
public class Emaildb extends AbstractBaseEntity {

    @Column
    private String subject;

    @Column
    @Email
    @NotBlank
    private String sender;

    @Column
    private String message;

    @Column(name = "registered", columnDefinition = "timestamp default now()")
    @NotNull
    @JsonProperty(access = JsonProperty.Access.READ_ONLY)
    private Date registered = new Date();

    public Emaildb() {
    }

    public Emaildb(Emaildb e){
        this(e.getId(), e.getSubject(), e.getSender(), e.getMessage());
    }

    public Emaildb(Integer id, String subject, @Email @NotBlank String sender, String message) {
        super(id);
        this.subject = subject;
        this.sender = sender;
        this.message = message;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getRegistered() {
        return registered;
    }

    @Override
    public String toString() {
        return "Emaildb{" +
                ", id=" + id +
                "subject='" + subject + '\'' +
                ", sender='" + sender + '\'' +
                ", message='" + message + '\'' +
                ", registered=" + registered +
                '}';
    }
}
