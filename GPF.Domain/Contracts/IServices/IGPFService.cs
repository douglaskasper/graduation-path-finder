using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Domain.Contracts.IServices
{
    public interface IGPFService
    {
        bool SaveSession(GPFSession session);
        GPFSession GetSessionById(int sessionId);
        List<GPFSession> GetSessions();
        List<GPFSession> GetSessionsByAccountId(int accountId);
        GPFSchedule GetSessionSchedule(GPFSession session);
    }
}
