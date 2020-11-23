package com.leo.NewTaco.repository.jpa;

import com.leo.NewTaco.model.MyUser;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<MyUser, Long> {

    MyUser findByUsername(String username);
}
