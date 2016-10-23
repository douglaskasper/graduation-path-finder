using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Domain.Contracts.IServices
{
    public interface IGPFService
    {
        bool SaveSession(GPFSession session);
        GPFSession GetSessionById(GPFSession session);
        List<GPFSession> GetSessions();
        List<GPFSession> GetSessionsByAccountId(Account account);
    }
}
