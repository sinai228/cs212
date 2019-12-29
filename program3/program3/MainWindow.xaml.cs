using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Media.Animation;
using System.Windows.Navigation;
using System.Windows.Shapes;



namespace FernNamespace
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            Fern f = new Fern(sizeSlider.Value, raduxSlider.Value, turnSlider.Value, canvas);
        }


        private void button1_Click(object sender, RoutedEventArgs e)
        {
            Fern f = new Fern(sizeSlider.Value, raduxSlider.Value, turnSlider.Value, canvas);
        }
    }
}

/*
 * this class draws a fractal fern when the constructor is called.
 * CS 212 program 3 -- October 2019.
 * 
 * Bugs: WPF and shape objects are the wrong tool for the task 
 */
class Fern
{
    Random rnd = new Random();
    private static double DELTATHETA = 0.05;
    private static double SEGLENGTH = 10.0;

    /* 
     * Fern constructor erases screen and draws a fern
     * 
     * Size: the length of the root fern
     * Redux: how much smaller the smaller fern lengths are compared to the parent fern
     * Turnbias: how likely the leaves(fern) are to turn right vs. left 
     * canvas: the canvas that the fern will be drawn on
     */
    public Fern(double size, double radux, double turn, Canvas canvas)
    {
        canvas.Children.Clear();                                // delete old canvas contents                                               
        Bubble(canvas);                                         // draw bubbles
        double direction = Math.PI / rnd.Next(1, 4);
        // draw a new fern at a random position with given parameters
        root(rnd.Next(50, Convert.ToInt32(canvas.Width)-50), rnd.Next(50, Convert.ToInt32(canvas.Height)-50), size, radux, turn, direction, canvas);
       
    }

    /*
    * cluster draws a cluster at the given location and then draws a bunch of tendrils out in 
    * regularly-spaced directions out of the cluster.
    *
    private void cluster(int x, int y, double size, double redux, double turnbias, Canvas canvas)
    {
        for (int i = 0; i < TENDRILS; i++)
        {
            // compute the angle of the outgoing tendril
            double theta = i * 2 * Math.PI / TENDRILS;
            fern_small(x, y, size, redux, turnbias, theta, canvas);

        }
    }*/

    /* 
    * this function erases screen and draws a fern
    * 
    * int x1, y1: integer values that act as the starting point of the fern leaf segments
    * Size: the length of the root fern
    * Redux: how much smaller the smaller fern lengths are compared to the parent fern
    * Turnbias: how likely the leaves(fern) are to turn right vs. left 
    * Direction: direction in which the leaves are drawn(sin cos continuously added)
    * byte r, g, b: values needed to randomize color for every fern drawn
    * canvas: the canvas that the fern will be drawn on
    */
    private void fern_small(int x1, int y1, double size, double radux, double turn, double direction, byte r, byte g, byte b, Canvas canvas)
    {
        
        int x2 = x1, y2 = y1;
        //draw the smaller roots coming off of the root
        for (int i = 1; i < radux; i++)
        {
            direction += (rnd.NextDouble() > turn) ? -1 * DELTATHETA : DELTATHETA;
            x1 = x2;
            y1 = y2;
            x2 = x1 + (int)((SEGLENGTH) * Math.Sin(direction));
            y2 = y1 + (int)((SEGLENGTH) * Math.Cos(direction));

            line(x1, y1, x2 , y2, r, g, b, 1 + size / 50, canvas);
            if (size > 0)
            {
                fern_small((x1 + x2) / 2, (y1 + y2) / 2, size , radux / 5 , turn, direction + (Math.PI / 4), r, g, b, canvas);
                fern_small((x1 + x2) / 2, (y1 + y2) / 2, size , radux / 5, turn, direction - (Math.PI / 4), r, g, b, canvas);

            }
        }

    }

   
    /*
     * this function draws a root (a randomly-wavy line) in the given direction, for the given length, 
     * and draws a mini-fern at the other end if the line is big enough.
     * int x1, y1: integer values that act as the starting point of the fern leaf segments
     * Size: the length of the root fern
     * Redux: how much smaller the smaller fern lengths are compared to the parent fern
     * Turnbias: how likely the leaves(fern) are to turn right vs. left 
     * Direction: direction in which the leaves are drawn(sin cos continuously added)
     * canvas: the canvas that the fern will be drawn on
     * 
     */
    public void root(int x1, int y1, double size, double radux, double turn, double direction, Canvas canvas)
    {
        int x2 = x1, y2 = y1;
        //factor for decreasing size of the smaller fern roots
        double FACTOR = 0.9;
        //set random color
        byte RED = (byte)rnd.Next(0, 250);
        byte GREEN = (byte)rnd.Next(0, 250);
        byte BLUE = (byte)rnd.Next(0, 250);
        SolidColorBrush mySolidColorBrush = new SolidColorBrush(Color.FromArgb(250, RED, GREEN, BLUE));

        //draw the wavy line
        for (int i = 0; i < size; i++)
        {
            direction += (rnd.NextDouble() > turn) ? -1 * DELTATHETA : DELTATHETA;
            //coordinates of the lines drawing a curved line
            x1 = x2;
            y1 = y2;
            x2 = x1 + (int)(SEGLENGTH * Math.Sin(direction)); //curve the line bit by bit
            y2 = y1 + (int)(SEGLENGTH * Math.Cos(direction)); //curve the line bit by bit

            //draw the fern_root
            line(x1, y1, x2, y2, RED, GREEN, BLUE, 1 + size / 15, canvas);
            
            //draw smaller ferns from the top of the stem
            i++;

            //draw smaller ferns going in the left and right direction from the root
            if (size > 0)
            {
                fern_small((x1 + x2) / 2, (y1 + y2) / 2, size, radux - FACTOR, turn, direction + (Math.PI / 4), RED, GREEN, BLUE, canvas);
                fern_small((x1 + x2) / 2, (y1 + y2) / 2, size, radux - FACTOR, turn, direction - (Math.PI / 4), RED, GREEN, BLUE, canvas);
            }
            FACTOR += 0.4;
        }
    }

    /*this function draws a line from
     *(x1,y1) to (x2,y2) 
     * byte r, g, b: values needed to randomize color for every fern drawn
     * thickness: stroke thickness of the line on canvas
     * Canvas: the canvas that the fern will be drawn on
     */
    public void line(int x1, int y1, int x2, int y2, byte r, byte g, byte b, double thickness, Canvas canvas)
    {
        Line myLine = new Line();
        SolidColorBrush mySolidColorBrush = new SolidColorBrush(Color.FromArgb(250, r, g, b));

        myLine.X1 = x1;
        myLine.Y1 = y1;
        myLine.X2 = x2;
        myLine.Y2 = y2;
        myLine.Stroke = mySolidColorBrush;
        myLine.VerticalAlignment = VerticalAlignment.Center;
        myLine.HorizontalAlignment = HorizontalAlignment.Center;
        myLine.StrokeThickness = thickness;
        //draw line on canvas
        canvas.Children.Add(myLine);
    }
    /*
    * this function is needed to draw the random number and position of bubbles in the water
    * Parameter: canvas
    * Draws: ellipses
    */
    public void Bubble(Canvas canvas)
    {
        Random rnd = new Random();
        int bubble_num = rnd.Next(10, 50);
        for (int i = 0; i < bubble_num; i++)
        {
            // Create an Ellipse    
            Ellipse circle = new Ellipse();
            //account for random placement of the bubbles
            int x = rnd.Next(0, Convert.ToInt32(canvas.Width));
            int y = rnd.Next(0, Convert.ToInt32(canvas.Height));
            //random size values fo bubbles
            circle.Width = rnd.Next(0, 30);
            circle.Height = rnd.Next(0, 30);
            circle.SetCenter(x, y);
            // Create a blue and a black Brush    
            SolidColorBrush blueBrush = new SolidColorBrush(Color.FromArgb(200, 57, 178, 150));
            // Fill rectangle with blue color    
            circle.Fill = blueBrush;
            // Add Ellipse to the Grid. 
            canvas.Children.Add(circle);
        }
    }
}

/*
 * this class is needed to enable us to set the center for an ellipse (not built in?!)
 */
public static class EllipseX
{
    public static void SetCenter(this Ellipse ellipse, double X, double Y)
    {
        Canvas.SetTop(ellipse, Y - ellipse.Height / 2);
        Canvas.SetLeft(ellipse, X - ellipse.Width / 2);
    }
}



