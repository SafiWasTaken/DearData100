
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

  fill(0, 100, 255);


  for (int i = 0; i < DataItems.getRowCount(); i++)
  {


    int steps = DataItems.getInt(i, "Daily steps");

    float barHeight = map(steps, 0, 16000, 0, 350);


    //adjusting graph size
    float graphWidth = 600;

    float barWidth = graphWidth / DataItems.getRowCount();

    float x = 100 + i * barWidth;



    rect(x, 500 - barHeight, barWidth, barHeight);


    if (mouseX > x && mouseX < x + barWidth && mouseY > 500 - barHeight && mouseY < 500) {

      fill(0);
      text(steps + " steps", x, 480 - barHeight);
    }

    fill(0);

    text("Day " + (i + 1), x, 520);


    textSize(24);
    text("Daily Steps", 300, 50);

    fill(0, 100, 255);
  }
}
