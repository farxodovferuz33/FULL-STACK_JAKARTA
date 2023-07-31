package com.google.group_crud_jakartaee.models.student;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
public class Students {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String fullName;

    @CreationTimestamp
    @Column(insertable = true, updatable = false)
    private String createdAt;
    private int groupID = 4;

    private int age;

    private String createdBy;
}
