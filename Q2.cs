using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace Q2
{
    class Q2
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter The String :-");
            string testString = Console.ReadLine();
            testString = testString.Replace("-","");
            testString = testString.Replace(" ","");
            int stringLength = testString.Length;
            string reg = "";
            string reg2 = "";
            int counter = 1;
            bool bulflag = true;
            while (bulflag == true)
            {
                int strleng = stringLength - 3;
                if (strleng == 1)
                {
                    reg += "(\\d{2})(\\d{2})";
                    reg2 += "$" + counter + "-$" + (counter + 1) + "-";
                    stringLength = 0;
                }
                else
                {
                    reg += "(\\d{3})";
                    reg2 += "$" + counter + "-";
                    stringLength = strleng;
                }

                if (stringLength == 0 || stringLength < 0)
                {
                    bulflag = false;
                    reg2 = reg2.Substring(0, reg2.Length - 1);
                }
                counter++;
            }
            Regex regg = new Regex(reg);
            testString = Regex.Replace(testString,regg.ToString(),reg2.ToString());
            Console.Write(testString);
            Console.ReadKey();
        }
    }
}
