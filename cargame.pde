Car car[];
void setup() {
    size(600,600);
    smooth();
    frameRate(120);
    append(car, new Car());
}    

void draw() {
    background(123);
    for (int i = 0; i < car.length; i++) {
        car[i].draw();
        car[i].drive();
    }

}
