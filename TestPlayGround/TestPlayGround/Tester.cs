using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestPlayGround
{
    class Tester
    {
        static void Main(string[] args)
        {
            string[] lines = { "Attack", "Run Away", "Player Info" };
            string[] roomInfoText = { "Its a stinky marsh full of creatures. Lets see if this wraps a third time or its broken", "This is an empty room" };
            BorderTester Rectangle = new BorderTester(15, 10);
            string box = Rectangle.MakeBox(Rectangle);
            //Console.WriteLine(box);
            BorderTester playermenus = new BorderTester(15, 10);
            BorderTester roomInfo = new BorderTester(31, 5);
            playermenus.MakeBoxAtPosition(playermenus,1,0);
            playermenus.MakeBoxAtPosition(playermenus,17,0);
            roomInfo.MakeBoxAtPosition(roomInfo, 1, 10);
            BorderTester BattleArea = new BorderTester(40, 25);
            BattleArea.MakeBoxAtPosition(BattleArea, 40,0);
            //Console.WriteLine(box);
            //Console.SetCursorPosition(1, 1);
            //string insideBoxTest = "Player actions";
            Console.SetCursorPosition(2, 1);
            Console.WriteLine("Player actions");
            Console.SetCursorPosition(2, 11);
            Console.WriteLine("Room Info");
            Console.SetCursorPosition(41,1);
            Console.WriteLine("Battle info");
            Console.SetCursorPosition(18, 1);
            Console.WriteLine("Player info");
            BorderTester.TextFormatter(playermenus, lines, 2, 2, true);
            BorderTester.TextFormatter(roomInfo, roomInfoText, 11, 2, false);
            //if (insideBoxTest.Length >= Rectangle.Width)
            //{
            //    Console.SetCursorPosition(2, 1);
            //    string insideBoxTest1 = insideBoxTest.Substring((insideBoxTest.Length - (Rectangle.Width)) + 2);
            //    string insideBoxTest2 = insideBoxTest.Substring(Rectangle.Width+1);

            //    Console.WriteLine(insideBoxTest1);
            //    Console.SetCursorPosition(1, 2);
            //    Console.WriteLine(insideBoxTest2);
            //    Console.SetCursorPosition(1, 11);
            //}
            Console.SetCursorPosition(0, 20);
            Console.WriteLine(roomInfoText[0].Length);
            //Console.WriteLine(Rectangle.MakeBoxAtPosition(Rectangle, 16));
            //Console.WriteLine(Rectangle.MakeBoxAtPosition(Rectangle, 31));

        }
    }
}
