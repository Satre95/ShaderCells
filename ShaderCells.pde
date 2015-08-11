Cell cell = new Cell();
void setup() {
    //size(1920, 1080, P2D);
    fullScreen(P2D);
    
    background(255);
    
}


void draw( ) {
    //background(255);
    
    cell.generate();
}