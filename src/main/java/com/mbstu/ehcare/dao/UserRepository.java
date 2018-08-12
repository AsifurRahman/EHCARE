package com.mbstu.ehcare.dao;

import com.mbstu.ehcare.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    @Query("select p from User p where p.username = ?")
    User getUserByUserName(String userName);

    @Query("select p from User p where p.id = ?")
    User getUserById(Integer userId);

    @Query("select p from User p where p.type = ?")
    List<User> getUserBytype(String type);

}