using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiscountReceipt.Model
{
    public class Receipt
    {
        private double _subtotal;

        public double SubTotal {
            get { return _subtotal; }
            private set {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException();
                }
                else
                {
                    _subtotal = value;
                }
            }
        }
        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Total { get; private set; }

        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }

        public void Calculate(double subtotal)
        {
            SubTotal = subtotal;
            SetDiscountRate();
            MoneyOff = SubTotal * DiscountRate;
            Total = SubTotal - MoneyOff;
        }

        private void SetDiscountRate()
        {
            if (SubTotal >= 5000)
            {
                DiscountRate = 0.15;
            }
            else if (SubTotal >= 1000)
            {
                DiscountRate = 0.10;
            }
            else if (SubTotal >= 500)
            {
                DiscountRate = 0.5;
            }
            else
            {
                DiscountRate = 0;
            }
        }
        
    }
}