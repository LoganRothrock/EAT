using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestPlayGround
{
    class BorderTester
    {
        public int Width { get; set; }
        public int Height { get; set; }
        public BorderTester(int width, int height)
        {
            Width = width;
            Height = height;
        }
        public string MakeBox(BorderTester border)
        {
            string box = "";
            for (int i = 0; i <= Height; i++)
            {
                for (int j = 0; j <= Width; j++)
                {
                    if (i == 0 && j != 0 && j != Width)
                    {
                        box += "-";
                    }else if (i == Height && j != 0 && j != Width)
                    {
                        box += "-";
                    }
                    else if(j == 0 || j == Width)
                    {
                        box += "|";
                    }
                    else
                    {
                        box += " ";
                    }

                }
                box += "\n";
            }
            return box;
        }
        public string MakeBoxAtPosition(BorderTester border, int startCol, int startRow)
        {
            Console.SetCursorPosition(startCol,startRow);
            string box = "";
            for (int i = 1; i <= Height; i++)
            {
                box = "";
                for (int j = 0; j <= Width; j++)
                {
                    if (i == 1 && j != 0 && j != Width)
                    {
                        box += "-";
                    }
                    else if (i == Height && j != 0 && j != Width)
                    {
                        box += "-";
                    }
                    else if (j == 0 || j == Width)
                    {
                        box += "|";
                    }
                    else
                    {
                        box += " ";
                    }

                }
                Console.Write(box);
                if (i != Height)
                {
                   Console.SetCursorPosition(startCol, i + startRow);
                }
               
            }
            return " ";
        }
        public static void TextFormatter(BorderTester box, string[] menus, int startRow, int startCol, bool list )
        {
            Random rand = new Random();
            int spaceIndex = 0;
            int r1 = rand.Next(0, menus.Length);
            if (list)
            {
                foreach (string menu in menus)
                {
                    if (menu.Length < box.Width)
                    {
                        Console.SetCursorPosition(startCol, startRow);
                        Console.WriteLine(menu);
                        startRow++;
                    }
                }
            }
            else
            {
                if (menus[r1].Length > box.Width)
                {
                    string longText = menus[r1];
                   while(longText.Length >= box.Width){
                        spaceIndex = longText.LastIndexOf(' ', (box.Width)) + 1;
                        Console.SetCursorPosition(startCol, startRow);
                        Console.WriteLine(longText.Substring(0, spaceIndex));
                        longText = longText.Remove(0, spaceIndex);
                        startRow++;
                    }
                    Console.SetCursorPosition(startCol, startRow);
                    Console.WriteLine(longText);
                }
                else
                {
                    Console.SetCursorPosition(startCol, startRow);
                    Console.WriteLine(menus[r1]);
                }
            }



        }
    }
}
