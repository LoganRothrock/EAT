using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DungeonLibrary;
using DungeonMonster;
using DungeonItems;
namespace Dungeon
{
    class MainDungeon
    {
        private int monsterSpawn = 0;

        static void Main(string[] args)
        {

            UserUI setup = new UserUI();
            Player player = new Player();
            setup.Setup();
            string[] playerActions = { "Attack", "Inventory", "Run Away", "Player Info", "Monster Info", "Exit" };
            string[] pRace = Enum.GetNames(typeof(Race));
            Weapon longSword = new Weapon(1, 8, "Long Sword", 10, false, "A simple Sword");
            UserUI.GenerateBattleScreen(setup.Boxes);
            Console.ReadLine();
            player = Menus.CharacterCreationMenu(pRace,setup.Boxes[4], player, longSword);
            Console.Clear();
            Console.ReadLine();
            int score = 0, con = 0;
            bool characterCreation = false, item = true;
            Inventory Inv = new Inventory();
            List<Weapon> weapons = new List<Weapon>();
            List<Item> items = new List<Item>();
            List<Equipment> armour = new List<Equipment>();
            //Testing Objects
            Item recover = new Item("Potion", "Heals for 20 health", "HEAL", 20, 1);
            Item recoverTest = new Item("Potion", "Heals for 20 health", "HEAL", 20, 0);
            Item bomb = new Item("Bomb", "Deals 40 points of dmg", "DMG", 40, 2);
            items.Add(recover);
            items.Add(recoverTest);
            items.Add(bomb);
            Equipment Helmet = new Equipment("Helmet", "A helmet forged in some far off place");
            Equipment ChestPlate = new Equipment("ChestPlate", "A ChestPlate forged in some far off place");
            Equipment ChestPlate1 = new Equipment("ChestPlate1", "A ChestPlate forged in some far off place");
            armour.Add(Helmet);
            armour.Add(ChestPlate);
            armour.Add(ChestPlate1);
            
            //Actual battle area
            bool exit = false;
            do
            {
                // TODO create a room
                string room = GetRoom();
                UserUI.GenerateBattleScreen(setup.Boxes);
                UserUI.TextFormatter(setup.Boxes[2], GetRoom(), 20, 1, false);
                //3. TODO Create monster
                Rabbit r1 = new Rabbit("White Rabbit", 25, 25, 50, 20, 2, 10, 15, 10, "Thats no ordinary rabbit! Look at the bones...", true);
                //Console.WriteLine(r1);
                Rabbit r2 = new Rabbit();
                Monster[] monsters = { r1, r1, r1, r2, r2 };
                Random rand = new Random();
                int randNbr = rand.Next(monsters.Length);
                Monster monster = monsters[randNbr];
                //Console.WriteLine("In this room " + monster.Name);
                bool pInv, pItems;
                bool reload = false;
                do
                {
                    Menus.FightMenu(player, monster, playerActions,setup);

                    #region Menu Switch
                    //7. Create a menu of options
                    //Console.WriteLine("\nPlease choose an action:\nA) Attack\nI) Inventory\nR) Run Away\nP) Player Info\nM) Monster Info\nX) Exit");

                    //8. Catch user choice
                    //ConsoleKey userChoice = Console.ReadKey(true).Key;

                    //9. Clear the console
                    //Console.Clear();

                    //10. Build out the switch for user choice
                    //switch (userChoice)
                    //{
                        //case ConsoleKey.A:
                            // 11. Handle an attack sequence
                            
                            //Combat.DoBattle(player, monster);

                            // 12. Handle if the player wins
                            //if (monster.Life <= 0)
                            //{
                                //TODO Give player item from Monster drop pool
                                //the monster is dead
                                //You could put some logic here to have the player collect an item, get life back, or something similiar
                                //Console.ForegroundColor = ConsoleColor.Green;
                                //Console.WriteLine("\nYou killed {0}!\n", monster.Name);
                                //Console.ResetColor();
                                //player.Exp += monster.GetStats();
                                //Console.WriteLine(player.Name + " gained " + monster.GetStats() + " exp");
                                //player.DetermineLevelUp();
                                //reload = true; //breaks out of inner loop but not outer loop
                                ////This will allow the player to be put into a new room with a new monster
                                //score++;

                    //        }
                    //        break;
                    //    case ConsoleKey.I:
                    //        pInv = true;
                    //        do
                    //        {
                    //            Console.WriteLine("1) View Items\n2) View Equipment\n3) View Weapons\n4) Exit Inventory\n");
                    //            ConsoleKey userInv = Console.ReadKey(true).Key;
                    //            switch (userInv)
                    //            {
                    //                case ConsoleKey.D1:
                    //                    pItems = true;
                    //                    do
                    //                    {
                    //                        //TODO Change this switch so the options update depending on items in inventory
                    //                        Console.WriteLine(Inv.ShowItems() + "\n");
                    //                        ConsoleKey userItem = Console.ReadKey(true).Key;
                    //                        switch (userItem)
                    //                        {
                    //                            case ConsoleKey.D1:
                    //                                Console.Clear();
                    //                                Item.UseItem(recover, player, monster);
                    //                                pInv = false;
                    //                                break;
                    //                            case ConsoleKey.D2:
                    //                                Console.Clear();
                    //                                Item.UseItem(bomb, player, monster);
                    //                                //TODO Fix this so use a method instead of code
                    //                                if (monster.Life <= 0)
                    //                                {
                                                        
                    //                                    Console.ForegroundColor = ConsoleColor.Green;
                    //                                    Console.WriteLine("\nYou killed {0}!\n", monster.Name);
                    //                                    Console.ResetColor();
                    //                                    player.Exp += monster.GetStats();
                    //                                    Console.WriteLine(player.Name + " gained " + monster.GetStats() + " exp");
                    //                                    player.DetermineLevelUp();
                    //                                    reload = true;
                    //                                    score++;
                    //                                    pInv = false;
                    //                                }
                    //                                break;
                    //                            case ConsoleKey.E:
                    //                                pItems = false;
                    //                                break;
                    //                            default:
                    //                                Console.WriteLine("Input Not Recognized");
                    //                                break;
                    //                        }
                                           
                    //                    } while (pItems && pInv);
                                        
                    //                    break;
                    //                case ConsoleKey.D2:
                    //                    //Show Equipment inv
                    //                    Console.WriteLine(Inv.ShowEquipment() + "\n");
                    //                    //TODO add a condition that shows the equipment stats and asks if you want to equip said item
                    //                    ConsoleKey userEquipment = Console.ReadKey(true).Key;
                    //                    switch (userEquipment)
                    //                    {
                    //                        case ConsoleKey.D1:
                    //                            Equipment.Equip(player, Inv.Equipments[0]);
                    //                            break;
                    //                        case ConsoleKey.U:
                    //                            Equipment.UnEquip(player, Inv.Equipments[0]);
                    //                            break;
                    //                    }
                    //                    Console.Clear();
                    //                    break;
                    //                case ConsoleKey.D3:
                    //                    //Show Weapon Inv
                    //                    Console.WriteLine(Inv.ShowWeapons() + "\n");
                    //                    Console.ReadLine();
                    //                    Console.Clear();
                    //                    break;
                    //                case ConsoleKey.D4:
                    //                    pInv = false;
                    //                    break;
                                   
                    //            }
                    //        } while (pInv);
                    //        break;
                    //    case ConsoleKey.R:
                    //        Console.WriteLine("RUN AWAY!!");
                    //        // 13. Handle the monster getting a free attack
                    //        Console.WriteLine($"{monster.Name} attacks as you flee!");
                    //        Combat.DoAttack(monster, player, monster.UsedTurn);//free attack
                    //        Console.WriteLine();

                    //        //14. Exiting the loop and getting a new room
                    //        reload = true;
                    //        break;
                    //    case ConsoleKey.P:
                    //        // 15. Print out player info
                    //        Console.WriteLine("Player info");
                    //        Console.WriteLine(player);
                    //        Console.WriteLine("Monsters Defeated: " + score);
                    //        break;
                    //    case ConsoleKey.M:
                    //        // 16. Print out monster info
                    //        Console.WriteLine("Monster Info");
                    //        Console.WriteLine(monster);
                    //        break;
                    //    case ConsoleKey.X:
                    //        Console.WriteLine("No one likes a quitter...");
                    //        exit = true;
                    //        break;
                    //    default:
                    //        Console.WriteLine("Thou has chosent poorly try again");
                    //        break;
                    //}
                    #endregion
                    if (player.Life <= 0)
                    {
                        Console.WriteLine("Game over.\a");
                        exit = true;
                    }
                } while (!exit && !reload);


            } while (!exit);
            
        }
        private static string GetRoom()
        {
            //collection initialization sytax
            string[] rooms =
            {
                "You open the door to reveal a 10-foot-by-10-foot room with a floor studded with spikes",
                "You pull open the door and hear the scrape of its opening echo throughout what must be a massive room. Peering inside, you see a vast cavern",
                "You open the door to a scene of carnage. Two male humans, a male elf, and a female dwarf lie in drying pools of their blood.",
                "You open the door and before you is a dragon's hoard of treasure. Coins cover every inch of the room, and jeweled objects of precious metal jut up from the money like glittering islands in a sea of gold.",
                "The scent of earthy decay assaults your nose upon peering through the open door to this room. Smashed bookcases and their sundered contents litter the floor. Paper rots in mold-spotted heaps, and shattered wood grows white fungus.",


            };

            Random rand = new Random();
            int indexNbr = rand.Next(rooms.Length);
            string room = rooms[indexNbr];
            return room;
            //return rooms[new Random().Next(rooms.Length)];
        }

        public int MonsterCount()
        {
            return monsterSpawn++;
        }
    }
}
