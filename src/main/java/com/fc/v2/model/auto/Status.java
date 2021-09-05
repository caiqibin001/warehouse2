package com.fc.v2.model.auto;

public enum Status {
    ING("待入库"),
    IN("在库"),
    OUT("出库");

    public String name;
    Status(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
