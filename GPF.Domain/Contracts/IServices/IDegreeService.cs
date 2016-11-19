using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Domain.Contracts.IServices
{
    public interface IDegreeService
    {
        Degree GetDegreeById(int degreeId);
        List<Degree> GetDegrees();
        List<Concentration> GetConcentrationsByDegreeId(int degreeId);
    }
}
