using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AspDotNetProject_Final_Elias.Startup))]
namespace AspDotNetProject_Final_Elias
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
