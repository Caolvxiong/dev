﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace f360
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class F360Entities : DbContext
    {
        public F360Entities()
            : base("name=F360Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Fish> Fish { get; set; }
        public virtual DbSet<SecurityToken> SecurityTokens { get; set; }
        public virtual DbSet<Trip> Trips { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}
