// Function to calculate area
double calculateArea(double length, double width) {
  return length * width;
}

void main() {
  double rectLength = 10.5;
  double rectWidth = 4.0;

  double area = calculateArea(rectLength, rectWidth);

  print(
    "The area of a rectangle with length $rectLength and width $rectWidth is: $area",
  );
}
