namespace GPF.Domain.Models
{
    public class ClassLocation : ValueDescription
    {
        private ClassLocation(string value, string description)
        {
            _value = value;
            _description = description;
        }
        
        public static readonly ClassLocation Online = new ClassLocation("ONLINE", "Online");
        public static readonly ClassLocation Loop = new ClassLocation("LOOP", "Loop");
        public static readonly ClassLocation LincolnPark = new ClassLocation("LINCOLNPARK", "Lincoln Park");

        public static ClassLocation GetClassDelivery(string value)
        {
            if (value.ToLower().Equals("ONLINE".ToLower()))
            {
                return Online;
            }
            else if (value.ToLower().Equals("LOOP".ToLower()))
            {
                return Loop;
            }
            else if (value.ToLower().Equals("LINCOLNPARK".ToLower()))
            {
                return LincolnPark;
            }

            return Online;
        }
    }
}
