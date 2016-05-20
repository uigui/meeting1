namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<TestShenzhenWebApplication.AzureDBContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(TestShenzhenWebApplication.AzureDBContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //


//            context.AdminUsers.AddOrUpdate(
//                new Model.AdminUser
//                {
//                    CreateTime = DateTime.Now.AddHours(+8),
//                    Email = "dongx@microsoft.com",
//                    LastLoginTime = DateTime.Now.AddHours(+8),
//                    Password = "Pass.word,",
//                    Status = 0
//                },
//                   new Model.AdminUser
//                   {
//                       CreateTime = DateTime.Now.AddHours(+8),
//                       Email = "jies@microsoft.com",
//                       LastLoginTime = DateTime.Now.AddHours(+8),
//                       Password = "Pass.word,",
//                       Status = 0
//                   },
//                    new Model.AdminUser
//                    {
//                        CreateTime = DateTime.Now.AddHours(+8),
//                        Email = "mowang@microsoft.com",
//                        LastLoginTime = DateTime.Now.AddHours(+8),
//                        Password = "Pass.word,",
//                        Status = 0
//                    },
//                    new Model.AdminUser
//                    {
//                        CreateTime = DateTime.Now.AddHours(+8),
//                        Email = "wiwa@microsoft.com",
//                        LastLoginTime = DateTime.Now.AddHours(+8),
//                        Password = "Pass.word,",
//                        Status = 0
//                    },
//                     new Model.AdminUser
//                     {
//                         CreateTime = DateTime.Now.AddHours(+8),
//                         Email = "wiwa@microsoft.com",
//                         LastLoginTime = DateTime.Now.AddHours(+8),
//                         Password = "Pass.word,",
//                         Status = 0
//                     },
//                      new Model.AdminUser
//{
//    CreateTime = DateTime.Now.AddHours(+8),
//    Email = "v-wityu@microsoft.com",
//    LastLoginTime = DateTime.Now.AddHours(+8),
//    Password = "Pass.word,",
//    Status = 0
//},

//                              new Model.AdminUser
//                              {
//                                  CreateTime = DateTime.Now.AddHours(+8),
//                                  Email = "v-feng@microsoft.com",
//                                  LastLoginTime = DateTime.Now.AddHours(+8),
//                                  Password = "Pass.word,",
//                                  Status = 0
//                              },

//                                  new Model.AdminUser
//                                  {
//                                      CreateTime = DateTime.Now.AddHours(+8),
//                                      Email = "v-feng@microsoft.com",
//                                      LastLoginTime = DateTime.Now.AddHours(+8),
//                                      Password = "Pass.word,",
//                                      Status = 0
//                                  },
//                                   new Model.AdminUser
//                                   {
//                                       CreateTime = DateTime.Now.AddHours(+8),
//                                       Email = "feizh@microsoft.com",
//                                       LastLoginTime = DateTime.Now.AddHours(+8),
//                                       Password = "Pass.word,",
//                                       Status = 0
//                                   },
//                                    new Model.AdminUser
//                                    {
//                                        CreateTime = DateTime.Now.AddHours(+8),
//                                        Email = "yizhe@microsoft.com",
//                                        LastLoginTime = DateTime.Now.AddHours(+8),
//                                        Password = "Pass.word,",
//                                        Status = 0
//                                    }
                                 
                                  

               //);



        }
    }
}
