class Globo
{
  float x, y,vx,vy;
  color c;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   c = color(random(0,255),100,100);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      square(x,y,45,45);
      imageMode(CENTER);
      image(cara, x, y);
  }
  
}

ArrayList<Globo> globos;
PImage cara;
void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>(); 
  cara = loadImage("toad3.png");
}

void draw()
{
  background(0,0,255);

  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();

  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
