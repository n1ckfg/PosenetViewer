PImage img;

Body body1, body2;
float jointSize = 15;

void setup() {
  size(640, 480, P2D);
  img = loadImage("couple.jpg");

  body1 = new Body(color(255,0,0), jointSize);
  body1.addJoint("nose", 210, 152, 1.0);
  body1.addJoint("left eye", 224, 138, 1.0);
  body1.addJoint("right eye", 199, 137, 1.0);
  body1.addJoint("left ear", 244, 135, 1.0);
  body1.addJoint("right ear", 182, 129, 0.8);
  body1.addJoint("left shoulder", 268, 168, 0.8);
  body1.addJoint("right shoulder", 160, 174, 1.0);
  body1.addJoint("left elbow", 282, 255, 0.6);
  body1.addJoint("right elbow", 154, 256, 0.9);
  body1.addJoint("left wrist", 230, 287, 0.6);
  body1.addJoint("right wrist", 162, 299, 0.6);
  body1.addJoint("left hip", 271, 317, 0.1);
  body1.addJoint("right hip", 169, 306, 0.1);
  body1.addJoint("left knee", 245, 330, 0.2);
  body1.addJoint("right knee", 172, 336, 0.0);
  body1.addJoint("left ankle", 182, 411, 0.1);
  body1.addJoint("right ankle", 184, 413, 0.1);

  body2 = new Body(color(0,0,255), jointSize);
  body2.addJoint("nose", 398, 145, 1.0);
  body2.addJoint("left eye", 416, 128, 1.0);
  body2.addJoint("right eye", 382, 127, 1.0);
  body2.addJoint("left ear", 457, 110, 0.9);
  body2.addJoint("right ear", 370, 120, 0.2);
  body2.addJoint("left shoulder", 492, 169, 0.9);
  body2.addJoint("right shoulder", 362, 150, 0.8);
  body2.addJoint("left elbow", 463, 292, 0.9);
  body2.addJoint("right elbow", 329, 245, 0.8);
  body2.addJoint("left wrist", 340, 303, 0.9);
  body2.addJoint("right wrist", 236, 329, 0.5);
  body2.addJoint("left hip", 488, 306, 0.2);
  body2.addJoint("right hip", 370, 318, 0.1);
  body2.addJoint("left knee", 472, 303, 0.0);
  body2.addJoint("right knee", 252, 327, 0.2);
  body2.addJoint("left ankle", 450, 373, 0.1);
  body2.addJoint("right ankle", 184, 410, 0.1);
}

void draw() {
  image(img,0,0);
  body1.draw();
  body2.draw();
}
