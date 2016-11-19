using System.Web.Mvc;
using Microsoft.Practices.Unity;
using Unity.Mvc5;

using GPF.Domain.Contracts.IServices;

namespace GPF
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();

            // Sandbox services.
            //container.RegisterType<IAccountService, GPF.Domain.Services.Sandbox.AccountService>();
            //container.RegisterType<ICourseService, GPF.Domain.Services.Sandbox.CourseService>();
            //container.RegisterType<IDegreeService, GPF.Domain.Services.Sandbox.DegreeService>();
            //container.RegisterType<IClassOfferingService, GPF.Domain.Services.Sandbox.ClassOfferingService>();
            //container.RegisterType<IGPFService, GPF.Domain.Services.Sandbox.GPFService>();

            // Live services.
            container.RegisterType<IAccountService, GPF.Domain.Services.AccountService>();
            container.RegisterType<ICourseService, GPF.Domain.Services.CourseService>();
            container.RegisterType<IDegreeService, GPF.Domain.Services.DegreeService>();
            container.RegisterType<IClassOfferingService, GPF.Domain.Services.ClassOfferingService>();
            container.RegisterType<IGPFService, GPF.Domain.Services.GPFService>();

            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}