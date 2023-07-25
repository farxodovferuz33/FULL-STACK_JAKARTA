package com.google.group_crud_jakartaee.models.student;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Student {
    private String id;
    private String fullName;
    private LocalDateTime createdAt;
    private String GroupID;
    private int age;
}
