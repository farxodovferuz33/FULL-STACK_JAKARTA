package com.google.group_crud_jakartaee.models.group;

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
public class Groups {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    @CreationTimestamp
    @Column(insertable = true, updatable = false)
    private String createdAt;

    private int studentCount = 0;
    private String createdBy;
}