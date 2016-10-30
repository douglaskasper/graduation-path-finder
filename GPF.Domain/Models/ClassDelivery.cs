namespace GPF.Domain.Models
{
    public class ClassDelivery : ValueDescription
    {
        private ClassDelivery(string value, string description)
        {
            _value = value;
            _description = description;
        }

        public static readonly ClassDelivery InClass = new ClassDelivery("C", "In Class");
        public static readonly ClassDelivery Online = new ClassDelivery("O", "Online");
        public static readonly ClassDelivery InClassAndOnline = new ClassDelivery("CO", "In Class And Online");

        public static ClassDelivery GetClassDelivery(string value)
        {
            if (value.ToLower().Equals("C".ToLower()))
            {
                return InClass;
            }
            else if (value.ToLower().Equals("O".ToLower()))
            {
                return Online;
            }
            else if (value.ToLower().Equals("CO".ToLower()))
            {
                return InClassAndOnline;
            }

            return InClass;
        }
    }
}
