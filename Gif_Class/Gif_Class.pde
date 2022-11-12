//Johnny Geng
//1-2
//Oct 29 2022
//Gif Class

Gif banana1, banana2, pond;

void setup() {
  size(800, 600);
  pond = new Gif ("koi_pond/frame_", "_delay-0.16s.gif", 16, 5, 0, 0, width, height);
  banana1 = new Gif("dancing_banana/frame_", "_delay-0.1s.gif", 8, 5, 0, 0);
  banana2 = new Gif("dancing_banana/frame_", "_delay-0.1s.gif", 8, 4, 300, 0, 500, 500);
}

void draw() {
  background(#FF91AF);
  pond.show();
  banana1.show();
  banana2.show();
}
