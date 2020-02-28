package com.diancan.entity;

import java.util.Arrays;
import java.util.List;

public class Order {
    private int table;
    private Food[] foods;

    @Override
    public String toString() {
        return "Order{" +
                "table=" + table +
                ", foods=" + Arrays.toString(foods) +
                '}';
    }

    public int getTable() {
        return table;
    }

    public void setTable(int table) {
        this.table = table;
    }

    public Food[] getFoods() {
        return foods;
    }

    public void setFoods(Food[] foods) {
        this.foods = foods;
    }
}
