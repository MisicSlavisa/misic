package com.slavisa.misic.service;


import com.slavisa.misic.util.exception.NotFoundException;
import com.slavisa.misic.model.User;
import com.slavisa.misic.to.UserTo;

import java.util.List;

public interface UserService {

    User create(User user);

    void delete(int id) throws NotFoundException;

    User get(int id) throws NotFoundException;

    User getByEmail(String email) throws NotFoundException;

    void update(User user);

    void update(UserTo user);

    List<User> getAll();

    void enable(int id, boolean enable);
}