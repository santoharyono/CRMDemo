package com.mitrais.dao;

import com.mitrais.entity.User;

public interface UserDetailsDao {
    User findUserByUsername(String username);
}
