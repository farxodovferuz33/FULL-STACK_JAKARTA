package com.google.group_crud_jakartaee.models.student;

import com.google.group_crud_jakartaee.models.group.Groups;
import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
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
    @NotBlank
    private String fullName;

    @CreationTimestamp
    @Column(updatable = false)
    private String createdAt;

    @ManyToOne
    private Groups groups;

    @Min(value = 12, message = "Student cannot be younger than {value}")
    private int age;

    @NotNull
    private String createdBy;
}
