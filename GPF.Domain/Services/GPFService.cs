using System;
using System.Collections.Generic;
using GPF.Domain.Contracts.IServices;
using GPF.Domain.Models;

namespace GPF.Domain.Services
{
    public class GPFService : IGPFService
    {
        public bool SaveSession(GPFSession session)
        {
            return true;
        }

        public GPFSession GetSessionById(GPFSession session)
        {
            return null;
        }

        public List<GPFSession> GetSessions()
        {
            return null;
        }

        public List<GPFSession> GetSessionsByAccountId(Account account)
        {
            return null;
        }

        public GPFSchedule GetSessionSchedule(GPFSession session)
        {
            return null;
        }
    }
}