package com.google.group_crud_jakartaee.models.group;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Group {
    private int id;
    private String name;
    private String createdAt;
    private int studentCount;
}