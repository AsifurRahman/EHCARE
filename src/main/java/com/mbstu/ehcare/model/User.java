package com.mbstu.ehcare.model;

import javax.persistence.*;

@Entity
@Table(name="user")
public class User {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(insertable=false,updatable=false)
    private Integer id;
    private String username;
    private String password;

    private String name;

    private String type;

    private String splzdin;

    private String contact;

    private String email;

    private boolean enabled;

    private String role;

    public User() {
        this.enabled =true;
    }

    public User(String username, String password, String email, boolean enabled, String role) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.enabled = enabled;
        this.role = role;
    }

    public User(String username, String password, String name, String type, String splzdin, String email, boolean enabled, String role) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.type = type;
        this.splzdin = splzdin;
        this.email = email;
        this.enabled = enabled;
        this.role = role;
    }

    public User(String username, String password, String name, String type, String splzdin, String contact, String email, boolean enabled, String role) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.type = type;
        this.splzdin = splzdin;
        this.contact = contact;
        this.email = email;
        this.enabled = enabled;
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getSplzdin() {
        return splzdin;
    }

    public void setSplzdin(String splzdin) {
        this.splzdin = splzdin;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", splzdin='" + splzdin + '\'' +
                ", email='" + email + '\'' +
                ", enabled=" + enabled +
                ", role='" + role + '\'' +
                '}';
    }
}