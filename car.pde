class Car {
    float x, y, v;
    boolean down = true;
    PImage picture; //definere rødbil som et billede

    void start() {
        y = 150-12.5;
        x = 150-25;
        v = random(1, 2); 
    }

    void draw() {
        picture = loadImage("assets/car/Blåbilned.png");
        picture.resize(50,100);
        image(picture,x,y);
    }
    
    void drive() {
        if (down) {
            y = y+v;
        } else {
            y = y-v;
        }
    }
}