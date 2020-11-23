package com.leo.NewTaco.repository.jpa;

import com.leo.NewTaco.model.MyUser;
import com.leo.NewTaco.model.Order;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends CrudRepository<Order, Long> {
    Object findByUserOrderByPlacedAtDesc(MyUser user);
}
