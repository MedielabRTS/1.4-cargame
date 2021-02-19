Car car[];
void setup() {
    size(600,600);
    smooth();
    frameRate(120);
    car = new Car();
    car.start(150,-50);
}    

void draw() {
    background(123);
    car.draw();
    car.drive();
}
