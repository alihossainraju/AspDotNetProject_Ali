using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AspDotNetProject_Ali.Startup))]
namespace AspDotNetProject_Ali
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
