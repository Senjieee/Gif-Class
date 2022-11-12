class Gif {
  
  float x, y, w, h;
  int numberOfFrames;
  int speed;
  int frameCurrent;
  PImage[] frames;
  
  Gif(String start, String end, int n, int s, float _x, float _y) {
    x = _x;
    y = _y;
    frames = new PImage[n];
    numberOfFrames = n;
    speed = s;
    frameCurrent = 0;
    
    int i = 0;
    while (i < numberOfFrames) {
      frames[i] = loadImage(start + i + end);
      i++;
    }
    
    w = frames[0].width;
    h = frames[0].height;
  }
  
  Gif(String start, String end, int n, int s, float _x, float _y, float _w, float _h) {
    this(start, end, n, s, _x, _y);
    w = _w;
    h = _h;
  }
  
  void show() {
    if (frameCurrent == numberOfFrames) frameCurrent = 0;
    image(frames[frameCurrent], x, y, w, h);
    if (frameCount % speed == 0) frameCurrent++;
  }
}
