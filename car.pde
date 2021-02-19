class Car {
    float x, y, v;
    boolean down = true;
    PImage picture; //definere rødbil som et billede

    void start(float xpos, float ypos) {
        y = ypos-12.5;
        x = xpos-25;
        v = random(1, 2); 
        down = random(1) > .5;
    }

    void draw() {
        picture = loadImage("assets/car/Blåbilop.png");
        if (down) {
            picture = loadImage("assets/car/Blåbilned.png");
        }
        
        picture.resize(50,100);
        image(picture,x,y);

        if (y > 600) {
            
        }
    }
    
    void drive() {
        if (down) {
            y = y+v;
        } else {
            y = y-v;
        }
    }
}