class Player {
    int x, y, height, width;
    PImage spiller;
    
    void setup() {
        size(600,600);
        smooth();
        frameRate(120);
        
        spiller = loadImage("spillerNed.png");
        x = 50;
        y = 50;
        width = 60;
        height = 60;
    }
    
    void draw() {
        background(123);
        
        if (keyPressed && (key == 'w')) {
            y -=5;
            spiller = loadImage("spillerOp.png");
        }
        else if (keyPressed && (key == 'a')) {
            x -=5;
            spiller = loadImage("spillerVenstre.png");
        }
        else if (keyPressed && (key == 's')) {
            y +=5;
            spiller = loadImage("spillerNed.png");
        }
        else if (keyPressed && (key == 'd')) {
            x +=5;
            spiller = loadImage("spillerHøjre.png");
        }
        image(spiller,x,y,width,height);
    }
}