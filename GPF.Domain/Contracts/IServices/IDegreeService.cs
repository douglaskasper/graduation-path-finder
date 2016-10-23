using System.Collections.Generic;
using GPF.Domain.Models;

namespace GPF.Domain.Contracts.IServices
{
    public interface IDegreeService
    {
        Degree GetDegreeById(Degree degree);
        List<Degree> GetDegrees();
        List<Degree> GetDegreesByCollege(Degree degree);
    }
}
