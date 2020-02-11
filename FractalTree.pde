private double fractionLength = .69; 
private int smallestBranch = 10; 
private double branchAngle = .4;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320, 380,120,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here  
	double angle1, angle2;
	double bAngle = branchAngle +Math.random()*0.1-0.05;
	angle1 = angle - bAngle;
	angle2 = angle + bAngle;  
	branchLength *= fractionLength+Math.random()*0.3-0.15;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
int endY1 = (int)(branchLength*Math.sin(angle1) + y);
int endX2 = (int)(branchLength*Math.cos(angle2) + x);
int endY2 = (int)(branchLength*Math.sin(angle2) + y);
line(x, y, endX1, endY1);
line(x, y, endX2, endY2);
if(branchLength > smallestBranch) {
	drawBranches(endX1, endY1, branchLength, angle1);
	drawBranches(endX2, endY2, branchLength, angle2);
}
} 
public void mouseClicked() {
	redraw();
}
