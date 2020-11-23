package com.leo.NewTaco.repository.jdbc;

import com.leo.NewTaco.model.Ingredient;

public interface IngredientRepository {

    Iterable<Ingredient> findAll();
    Ingredient findOne(String id);
    Ingredient save(Ingredient ingredient);
}
