namespace GPF.Domain.Models
{
    public class ClassStatus : ValueDescription
    {
        private ClassStatus(string value, string description)
        {
            _value = value;
            _description = description;
        }

        public static readonly ClassStatus Open = new ClassStatus("O", "Open");
        public static readonly ClassStatus WaitList = new ClassStatus("W", "Wait List");
        public static readonly ClassStatus Closed = new ClassStatus("C", "Closed");
    }
}
