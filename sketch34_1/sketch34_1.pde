int numFrames = 15; 
PImage[] images = new PImage[numFrames]; 
void setup() {
size(400, 400);
frameRate(15);
 
for (int i = 0; i < images.length; i++) {
 
String imageName = nf(i, 1) + ".gif";
images[i] = loadImage(imageName);
}
}
void draw() {
// Use % to cycle through frames - from textbook
int frame = frameCount % numFrames;
if (frame == 0){frame =1;} 

image(images[frame], 0, 0);
if (frame == 15){
  frame = 1;
}
}
