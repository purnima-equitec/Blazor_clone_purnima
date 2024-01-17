﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace BlazorApp1.Models;

public partial class DapperDBContext : DbContext
{
    public DapperDBContext(DbContextOptions<DapperDBContext> options)
        : base(options)
    {
    }

    public DbSet<Employee> Employees { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Employee>(entity =>
        {
            entity.HasKey(e => e.Empid);

            entity.ToTable("Employee");

            entity.Property(e => e.Empid).HasColumnName("EMPID");
            entity.Property(e => e.EmpAge).HasColumnName("EMP_AGE");
            entity.Property(e => e.EmpDesignation)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("EMP_DESIGNATION");
            entity.Property(e => e.EmpEmail)
                .HasMaxLength(100)
                .HasColumnName("EMP_EMAIL");
            entity.Property(e => e.EmpGender)
                .HasMaxLength(10)
                .HasColumnName("EMP_GENDER");
            entity.Property(e => e.EmpSalary).HasColumnName("EMP_SALARY");
            entity.Property(e => e.EmpSkills).HasColumnName("EMP_SKILLS");
            entity.Property(e => e.Empname)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("EMPNAME");
            entity.Property(e => e.IsDeleted).HasDefaultValueSql("((0))");
        });

        OnModelCreatingGeneratedProcedures(modelBuilder);
        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}