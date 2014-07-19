package com.dubovskiyM.mvc.entity;

import javax.persistence.*;

/**
 * Created by angel on 07.06.14.
 */
@Entity(name="role")
public  class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

  /*  @OneToOne
    private Signup user;*/

    private String role;

    public Role() {
    }

    public Role(String role) {
        this.role = role;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

   /* public Signup getUser() {
        return user;
    }

    public void setUser(Signup user) {
        this.user = user;
    }*/
}
