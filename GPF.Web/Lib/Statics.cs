using System.Web;
using System.Web.Security;
using System.Web.WebPages;
using GPF.Domain.Models;

namespace GPF.Web.Lib
{
    public class Statics
    {
        public static bool HasAuthCookie(HttpRequestBase request)
        {
            if (request.Cookies[FormsAuthentication.FormsCookieName] != null)
            {
                return !string.IsNullOrWhiteSpace(FormsAuthentication.Decrypt(request.Cookies[FormsAuthentication.FormsCookieName].Value).Name);
            }

            return false;
        }

        public static Account ImpersonateGet(HttpSessionStateBase session)
        {
            if (session["ImpersonateAccount"] != null)
            {
                return (Account)session["ImpersonateAccount"];
            }
            return null;
        }

        public static void ImpersonateStop(HttpSessionStateBase session)
        {
            session["ImpersonateAccount"] = null;
        }
    }
}