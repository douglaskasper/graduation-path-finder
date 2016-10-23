using System.Web.Mvc;
using Microsoft.Practices.Unity;
using Unity.Mvc5;

using GPF.Domain.Contracts.IServices;
using GPF.Domain.Services.Sandbox;

namespace GPF
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();

            container.RegisterType<IAccountService, AccountService>();
            container.RegisterType<ICourseService, CourseService>();
            container.RegisterType<IDegreeService, DegreeService>();

            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}