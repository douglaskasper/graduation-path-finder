namespace GPF.Domain.Models
{
    public class ClassDay : ValueDescription
    {
        private ClassDay(string value, string description)
        {
            _value = value;
            _description = description;
        }

        public static readonly ClassDay Online = new ClassDay("O", "Online");
        public static readonly ClassDay Mon = new ClassDay("M", "Monday");
        public static readonly ClassDay Tues = new ClassDay("Tu", "Tuesday");
        public static readonly ClassDay Wed = new ClassDay("W", "Wednesday");
        public static readonly ClassDay Thurs = new ClassDay("Th", "Thursday");
        public static readonly ClassDay Fri = new ClassDay("F", "Friday");
        public static readonly ClassDay MonWed = new ClassDay("MW", "Monday, Wednesday");
        public static readonly ClassDay MonWedFri = new ClassDay("MWF", "Monday, Wednesday, Friday");
        public static readonly ClassDay TuesThurs = new ClassDay("TuTh", "Tuesday, Thursday");
    }
}
