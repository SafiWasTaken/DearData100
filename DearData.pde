
int[] steps = {4994, 5736, 984, 3729, 15146};


void setup() {
  size(800, 600);
}

void draw() {
  background(255);

  line(100, 500, 700, 500);
  line(100, 500, 100, 100);

  fill(0, 100, 255);
  
  for(int i = 0; i < steps.length; i++) {

float barHeight = map(steps[i], 0, 12000, 0, 350);


  rect(120 + i * 100, 500 - barHeight, 60, barHeight);

}


}
