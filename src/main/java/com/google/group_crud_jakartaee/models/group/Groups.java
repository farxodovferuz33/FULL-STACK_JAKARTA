package com.google.group_crud_jakartaee.models.group;

import com.google.group_crud_jakartaee.models.student.Students;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.util.ArrayList;
import java.util.List;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
public class Groups {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank
    private String name;

    @CreationTimestamp
    @Column(updatable = false)
    private String createdAt;

    @Column(columnDefinition = "INT DEFAULT 0")
    private int studentCount;

    @NotNull
    private String createdBy;

    @OneToMany(cascade = CascadeType.PERSIST, mappedBy = "groups")
    private List<Students> students = new ArrayList<>();

}