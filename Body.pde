class Body {
  
  ArrayList<Joint> joints;
  color col;
  float strokeWeightVal;
  
  Body(color _col, float _strokeWeightVal) {
    joints = new ArrayList<Joint>();
    col = _col;  
    strokeWeightVal = _strokeWeightVal;
  }
  
  void addJoint(String _name, float _x, float _y, float _score) {
    Joint joint = new Joint(_name, _x, _y, _score);
    joints.add(joint);
  }
  
  void draw() {
    for (int i=0; i<joints.size(); i++) {
      Joint joint = joints.get(i);
      stroke(col);
      strokeWeight(strokeWeightVal);
      point(joint.x, joint.y);
      text(joint.name, joint.x, joint.y);
    }
  }
  
}
