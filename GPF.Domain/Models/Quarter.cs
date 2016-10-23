namespace GPF.Domain.Models
{
    public class Quarter : ValueDescription
    {
        private Quarter(string value, string description)
        {
            _value = value;
            _description = description;
        }

        public static readonly Quarter Fall = new Quarter("Fall", "Fall");
        public static readonly Quarter Winter = new Quarter("Winter", "Winter");
        public static readonly Quarter Spring = new Quarter("Spring", "Spring");
        public static readonly Quarter SummerI = new Quarter("SummerI", "SummerI");
        public static readonly Quarter SummerII = new Quarter("SummerII", "SummerII");
        public static readonly Quarter Summer10Week = new Quarter("Summer10Week", "Summer10Week");
        public static readonly Quarter DecIntersession = new Quarter("DecIntersession", "DecIntersession");
    }
}
