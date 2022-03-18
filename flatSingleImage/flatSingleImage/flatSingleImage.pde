//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0; 
float largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger =false;
//
size(600, 300); //FullScreen; displayWidth, displayHeight
//Population
pic = loadImage("istockphoto-174959827-170667a.jpg");
//Find larger dimension for aspect ratio
int picWidth = 507;
int picHeight = 338;
if ( picWidth >= picHeight ) {
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else {
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}//End Dimension Compasison
//Println(smallerDimension, largerDimension); //Berifying Variable details
//Note: single lines IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
println(imageWidthRatio, imageHeightRatio, smallerDimension/largerDimension, 338.0/507.0); //Verify variable values
//Note: println() also verifies decimal places, compiler will truncate
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style"width;100%" (websites)
//Ratio "0.75" similar to style="height;auto" (websites)
imageX = width*0;
imageY = height*0;
imageWidth = width*imageWidthRatio;
imageHeight = height*imageWidthRatio;
if ( imageWidth > width ) println("ERROR: Image is to wide"); //Simple Display checker
if ( imageHeight > height ) println("ERROR: Image is too high"); //Simple Display checker
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
