Car car;
void setup() {
    size(600,600);
    smooth();
    frameRate(120);
    car = new Car();
    car.start();
}    

void draw() {
    background(123);
    car.draw();
    car.drive();
}
