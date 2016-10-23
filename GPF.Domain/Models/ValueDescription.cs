namespace GPF.Domain.Models
{
    public abstract class ValueDescription
    {
        protected string _value;
        public string Value
        {
            get
            {
                return _value;
            }
        }

        protected string _description;
        public string Description
        {
            get
            {
                return _description;
            }
        }
    }
}
