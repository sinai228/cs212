using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.IO;


namespace Bingo
{
    class Program
    {
        private static RelationshipGraph rg;

        // Read RelationshipGraph whose filename is passed in as a parameter.
        // Build a RelationshipGraph in RelationshipGraph rg
        private static void ReadRelationshipGraph(string filename)
        {
            rg = new RelationshipGraph();                           // create a new RelationshipGraph object

            string name = "";                                       // name of person currently being read
            int numPeople = 0;
            string[] values;
            Console.Write("Reading file " + filename + "\n");
            try
            {
                string input = System.IO.File.ReadAllText(filename);// read file
                input = input.Replace("\r", ";");                   // get rid of nasty carriage returns 
                input = input.Replace("\n", ";");                   // get rid of nasty new lines
                string[] inputItems = Regex.Split(input, @";\s*");  // parse out the relationships (separated by ;)
                foreach (string item in inputItems)
                {
                    if (item.Length > 2)                            // don't bother with empty relationships
                    {
                        values = Regex.Split(item, @"\s*:\s*");     // parse out relationship:name
                        if (values[0] == "name")                    // name:[personname] indicates start of new person
                        {
                            name = values[1];                       // remember name for future relationships
                            rg.AddNode(name);                       // create the node
                            numPeople++;
                        }
                        else
                        {
                            rg.AddEdge(name, values[1], values[0]); // add relationship (name1, name2, relationship)

                            // handle symmetric relationships -- add the other way
                            if (values[0] == "hasSpouse" || values[0] == "hasFriend")
                                rg.AddEdge(values[1], name, values[0]);

                            // for parent relationships add child as well
                            else if (values[0] == "hasParent")
                                rg.AddEdge(values[1], name, "hasChild");
                            else if (values[0] == "hasChild")
                                rg.AddEdge(values[1], name, "hasParent");
                        }
                    }
                }
            }
            catch (Exception e)
            {
                Console.Write("Unable to read file {0}: {1}\n", filename, e.ToString());
            }
            Console.WriteLine(numPeople + " people read");
        }

        // Show the relationships a person is involved in
        private static void ShowPerson(string name)
        {
            GraphNode n = rg.GetNode(name);
            if (n != null)
                Console.Write(n.ToString());
            else
                Console.WriteLine("{0} not found", name);
        }

        // Show a person's friends
        private static void ShowFriends(string name)
        {
            GraphNode n = rg.GetNode(name);
            if (n != null)
            {
                Console.Write("{0}'s friends: ", name);
                List<GraphEdge> friendEdges = n.GetEdges("hasFriend");
                foreach (GraphEdge e in friendEdges)
                {
                    Console.Write("{0} ", e.To());
                }
                Console.WriteLine();
            }
            else
                Console.WriteLine("{0} not found", name);
        }

        // show the orphans 
        /*parameters: none
        * returns: all the names inside the list of orphans, created inside the function
        * 
        */

        private static void ShowOrphans()
        {
            int num_orphans = 0;     //initialize a counter 
            List<GraphNode> orphanList = new List<GraphNode>();     //Create a new list to store the Orphans in

            foreach (GraphNode node in rg.nodes)
            {
                List<GraphEdge> parentEdges = node.GetEdges("hasParent");  //look at the edges from the nodes leading to the parent

                if (parentEdges.Count == 0)
                {
                    orphanList.Add(node);           //Add the node to the list of orphans
                    num_orphans++;                   //Increment the orphan counter
                }
            }

            string numberOrphans = Convert.ToString(num_orphans);

            foreach (GraphNode node in orphanList)      //For each orphan node in the List, print out the name of the orphan
            {
                Console.Write(node.Get_Name() + '\n');
            }
            Console.Write("There are " + numberOrphans + " orphans in the GraphRelationship.");     //Inform the user how many orphans were found

        }


        // show the siblings of a person 
        /*parameters: string name 
        * returns: all the names of the childrelationships, excluding the name itself
        * from the parents of the name
        */
        private static void ShowSiblings(string name)
        {
            GraphNode n = rg.GetNode(name);
            if (n != null)
            {
                Console.Write("{0}'s siblings: ", name);
                List<GraphEdge> parentEdges = n.GetEdges("hasParent");

                GraphNode p = rg.GetNode(parentEdges[0].To());
                List<GraphEdge> childEdges = p.GetEdges("hasChild");
                foreach (GraphEdge s in childEdges)
                {
                    if (s.To() != name)
                    // && !childEdges.Contains(s.To()))
                    {
                        Console.Write("{0} ", s.To());
                    }
                }

                Console.WriteLine();
            }
            else
                Console.WriteLine("{0} not found", name);
        }

        // Prints all descendants, including chidlren, grandchilren, great grandchildren of one person
        /* parameter: string name
         * searchs for all hasChild edges and stores them in a list
         *      create two other lists for the next generations 
         * for every node in the list, get the hasChild relationships and add them
         * to the next_gen list
         * increment th generation_level counter
         * 
         * print the names of each n in the descendant lists 
        * 
        */
        private static void Descendants(string name)
        {
            GraphNode n = rg.GetNode(name);
            int generation_level = 0;
            if (n == null)
            {
                Console.Write("{0} not found\n", name);
            }
            else if (n.GetEdges("hasChild").Count == 0)
            {
                Console.Write("{0} has no descendants\n", name);
            }
            else
            {
                List<GraphEdge> descendantsList = n.GetEdges("hasChild");        //Get the edges hasChild of the individual
                List<GraphNode> next_gen = new List<GraphNode>();                //Create two new lists of GraphNodes, one for the current generation of
                List<GraphNode> current_gen = new List<GraphNode>();             //descendants, and one for the following generation of descendants

                foreach (GraphEdge edge in descendantsList)                      //For every edge hasChild, add the node that the edge is directed towards
                {                                                                       //to the current descendants list of individuals
                    current_gen.Add(rg.GetNode(edge.To()));
                }

                while (current_gen.Count > 0)                                //As long as the currentDescendants List is not zero
                {
                    //The following if, if-else, and else statements determine the label of descendants to write to the console
                    if (generation_level == 0)
                    {
                        Console.Write(n.Get_Name() + "'s Children:\n");
                    }
                    else if (generation_level == 1)
                    {
                        Console.Write(n.Get_Name() + "'s Grandchildren:\n");
                    }
                    else
                    {
                        Console.Write(n.Get_Name());
                        for (int i = 0; i < generation_level; i++)
                        {
                            Console.Write(" Great");
                        }
                        Console.Write(" GrandChildren:\n");
                    }
                    //For each node in the current descendants list
                    foreach (GraphNode descendant in current_gen)
                    {
                        Console.Write("{0}\n", descendant.Get_Name());              //Write out the name of the descendant to the console
                        descendantsList = descendant.GetEdges("hasChild");      //Get a list of the edges hasChild from that descendant
                        foreach (GraphEdge edge1 in descendantsList)            //For each of those edges hasChild of the current descendant
                        {
                            next_gen.Add(rg.GetNode(edge1.To()));    //Add the node that the edge hasChild is directed towards
                        }
                    }
                    current_gen = next_gen;                       //Copy the nextDescendant List nodes to the currentDescandents List
                    next_gen = new List<GraphNode>();                    //Clear our the nextDescendant List
                    generation_level++;                                         //Increment the generation counter to be used for future labeling of descendants

                }
            }
        }

        // Find the shortest path of relationships between two people
        private static void Bingo(string person1, string person2)
        {
            GraphNode startNode = rg.GetNode(person1);
            GraphNode endNode = rg.GetNode(person2);
            if (startNode != null && endNode != null)
            {
                Hashtable visitedEdges = new Hashtable();
                Queue<GraphNode> nodeBFS = new Queue<GraphNode>();
                nodeBFS.Enqueue(startNode);
                while (nodeBFS.Count != 0 && nodeBFS.Peek() != endNode)
                {
                    GraphNode tempNode = nodeBFS.Dequeue();
                    List<GraphEdge> childEdges = tempNode.GetEdges();
                    foreach (GraphEdge edge in childEdges)
                    {
                       if (!visitedEdges.Contains(edge.ToNode()))
                        {
                            visitedEdges.Add(edge.ToNode(), tempNode);      // keeps track of the spanning tree via edges
                            nodeBFS.Enqueue(edge.ToNode());
                        }
                    }
                }
                if (nodeBFS.Count >= 1 && nodeBFS.Peek() == endNode)
                {
                    GraphNode currentNode = endNode;
                    GraphNode parentNode = endNode;
                    Stack<string> relationshipStack = new Stack<string>();
                    while (currentNode != startNode)
                    {
                       parentNode = (GraphNode)visitedEdges[currentNode];
                        List<GraphEdge> parentEdges = parentNode.GetEdges();
                        foreach (GraphEdge graphEdge in parentEdges)
                        {
                            if (graphEdge.ToNode() == currentNode)
                            {
                                relationshipStack.Push(graphEdge.ToString());
                                break;
                            }
                        }
                       currentNode = parentNode;
                    }
                    while (relationshipStack.Count != 0)
                        Console.Write(relationshipStack.Pop() + "\n");
                }
                else
                {
                    Console.WriteLine("No relationship found between {0} and {1}", person1, person2);
                }
            }
            else
               Console.WriteLine("Either {0} and/or {1} were not found", person1, person2);
    }


        // Find all of a person’s nth-cousins k times removed where n and k are nonnegative integers
        /*Parameters: string name, int n, int k 
         * integer n: N+1 up generations
         * integer k: N+1+k down generations
         * 
         * first label the ones already visited
         * have to create a depth first search
         */
        private static void Cousins(string name, int nth, int kth)
        {
            GraphNode n = rg.GetNode(name);
            if (n == null)
            {
                Console.Write("{0} not found\n", name);
            }
            else if (n.GetEdges("hasParent").Count == 0)
            {
                Console.Write("{0} has no cousins\n", name);
            }
            else
            {
                Console.Write("{0} ", name + "'s " + nth + " cousins " + kth + " times removed are: ");

                //if (nth >= 0)
                //{
                //    List<GraphEdge> parentsList = n.GetEdges("hasParent");        //Get the edges hasParent of the individual
                //    List<GraphNode> first_gen = new List<GraphNode>();          //descendants, and one for the following generation of descendants

                //    //if (nth == 1)
                //    //{
                //    //    GraphNode p = rg.GetNode(parentsList[0].To());
                //    //    List<GraphEdge> next_parent_Edges = p.GetEdges("hasParent");
                //    //}

                //    foreach (GraphEdge edge in parentsList)                      //For every edge hasChild, add the node that the edge is directed towards
                //    {                                                            //to the current descendants list of individuals
                //        first_gen.Add(rg.GetNode(edge.To()));
                //    }
                //    if (kth == 0)
                //    {
                //        List<GraphNode> next_gen = new List<GraphNode>();             //Create two new lists of GraphNodes, one for the current generation of

                //        foreach (GraphNode edge in next_gen)                      //For every edge hasChild, add the node that the edge is directed towards
                //        {                                                            //to the current descendants list of individuals
                //            next_gen.Add(rg.GetNode(edge.ToString()));
                //        }


                //    }

                //            Console.Write("{0} ", name + "'s " + nth+ " cousins " + kth+ " times removed are: ");

                //    }


                    //foreach (GraphNode parent in first_gen)
                    //{
                    //    Console.Write("{0}\n", parent.Get_Name());              //Write out the name of the descendant to the console
                    //    parentsList = parent.GetEdges("hasChild");              //Get a list of the edges hasChild from that descendant
                    //    foreach (GraphEdge edge1 in parentsList)                //For each of those edges hasChild of the current descendant
                    //    {
                    //        next_gen.Add(rg.GetNode(edge1.To()));    //Add the node that the edge hasChild is directed towards
                    //    }
                    //}
                    //first_gen = next_gen;                       //Copy the nextDescendant List nodes to the currentDescandents List
                    //next_gen = new List<GraphNode>();   //Clear our the nextDescendant List

                
            }
        }

        // accept, parse, and execute user commands
        private static void CommandLoop()
        {
            string command = "";
            string[] commandWords;
            //int commandnumber = 0;
            Console.Write("Welcome to Harry's Dutch Bingo Parlor!\n");

            while (command != "exit")
            {
                Console.Write("\nEnter a command: ");
                command = Console.ReadLine();
                commandWords = Regex.Split(command, @"\s+");        // split input into array of words
                command = commandWords[0];

                if (command == "exit")
                    ;                                               // do nothing

                // read a relationship graph from a file
                else if (command == "read" && commandWords.Length > 1)
                    ReadRelationshipGraph(commandWords[1]);

                // show information for one person
                else if (command == "show" && commandWords.Length > 1)
                    ShowPerson(commandWords[1]);

                else if (command == "friends" && commandWords.Length > 1)
                    ShowFriends(commandWords[1]);

                // dump command prints out the graph
                else if (command == "dump")
                    rg.Dump();

                // shorOrphan command prints out all the children with no parents
                else if (command == "showOrphans")
                    ShowOrphans();

                // siblings command prints out all the siblings of one person
                else if (command == "siblings" && commandWords.Length > 1)
                    ShowSiblings(commandWords[1]);

                // descendants command prints out all the siblings of one person
                else if (command == "descendants" && commandWords.Length > 1)
                    Descendants(commandWords[1]);

                // bingo command prints out the shortest relationship between two people
                else if (command == "bingo" && commandWords.Length > 1 && commandWords.Length > 1)
                    Bingo(commandWords[1], commandWords[2]);

                // cousins command prints out all of a person’s nth-cousins k times removed 
                else if (command == "cousins")
                    Cousins(commandWords[1], Convert.ToInt32(commandWords[2]), Convert.ToInt32(commandWords[3]));

                // illegal command
                else
                    Console.Write("\nLegal commands: read [filename], dump, show [personname], showOrphans,\n " +
                        "siblings [personname], descendants [personname], bingo [personname] && [personname], " +
                        "cousins [personname] [2 non-negative integers], friends [personname], exit\n");
            }
        }

        static void Main(string[] args)
        {
            CommandLoop();
        }
    }
}
