using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodingChallenges
{
    class Challenges
    {
        static void Main(string[] args)
        {
            //#region MultiplesOf3And5
            //    int runningTotal = 0;
            //    //For loop to find the 3 and 5 multiples. 
            //    // change limit in (i < (limit)) to set a limit
            //    for (int i = 1; i < 1000; i++)
            //    {
            //        if (i % 3 == 0 || i % 5 == 0)
            //        {
            //            Console.WriteLine(i);
            //            runningTotal += i;
            //        }
            //    }
            //    Console.WriteLine(runningTotal);
            //#endregion
            #region FibonacciEvenSum
            int fib1 = 1, fib2 = 2, limit = 10;
            //Change "limit" to change the limit
            for (int i = 0; i < limit; i++)
            {
                Console.Write(fib1 + ", ");
                Console.Write(fib2 + ", ");
                fib1 += fib2;
                fib2 += fib1;
            }
            #endregion
        }
    }
}
