
Table DataItems;


void setup() {
  size(800, 600);


  DataItems = loadTable("DataItems.csv", "header");

  println(DataItems.getRowCount());
}

void draw() {
  //add creative background + theme later


  background(255);

  line(100, 500, 700, 500);
  line(100, 500, 100, 100);

  fill(0);

  textSize(10);

  text("0", 70, 500);
  text("4000", 60, 410);
  text("8000", 60, 325);
  text("12000", 50, 240);
  text("16000", 50, 155);


  fill(0, 100, 255);


  for (int i = 0; i < DataItems.getRowCount(); i++)
  {


    int steps = DataItems.getInt(i, "Daily steps");

    float distance = DataItems.getFloat(i, "Distance (km)");

    int calories = DataItems.getInt(i, "Energy (Calories burnt)");

    float barHeight = map(steps, 0, 16000, 0, 350);

    float distanceHeight = map(distance, 0, 15, 0, 350);

    float caloriesHeight = map(calories, 0, 400, 0, 350);

    //adjusting graph size
    float graphWidth = 600;

    float barWidth = graphWidth / DataItems.getRowCount();

    float x = 100 + i * barWidth;

    float smallBarWidth = barWidth / 3;



    // Steps (blue)
    fill(0, 100, 255);
    rect(x, 500 - barHeight, smallBarWidth, barHeight);

    // Distance (orange)
    fill(255, 165, 0);
    rect(x + smallBarWidth,
      500 - distanceHeight,
      smallBarWidth,
      distanceHeight);

    // Calories (red)
    fill(255, 0, 0);
    rect(x + (smallBarWidth * 2),
      500 - caloriesHeight,
      smallBarWidth,
      caloriesHeight);


    if (mouseX > x && mouseX < x + barWidth && mouseY > 500 - barHeight && mouseY < 500) {

      fill(0);
      text(steps + " steps", x, 480 - barHeight);
    }

    fill(0);


    //add a proper x and y headings!

    textSize(10);
    if (i == 0 || (i +1) % 5 ==0) {

      text("Day" + (i + 1), x, 520);
    }



    textSize(24);
    text("Daily Steps", 300, 50);

    fill(0, 100, 255);
  }
}
