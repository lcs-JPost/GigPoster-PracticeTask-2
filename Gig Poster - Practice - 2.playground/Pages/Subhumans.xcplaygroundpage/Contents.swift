//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Begin your solution here...

// change the background

canvas.fillColor = yellow
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// draw the text

canvas.drawText(message: "subhumans", at: Point(x: 10, y: 325), size: 45)

canvas.drawText(message: "friday, april 13 1984\nadvance $6.50, door $7.50\nno age limit", at: Point(x: 10, y: 398), size: 10)

canvas.drawText(message: "at olympic auditorium\n1801 s. grand ave.\nlos angeles, california", at: Point(x: 150, y: 398), size: 10)

canvas.drawText(message: "with the tourists\nmulti death corperations\nnew regime & red scare", at: Point(x: 275, y: 398), size: 10)

//// draw a grid for reference
//for y in stride(from: 0, through: 600, by: 50){
//    y
//    canvas.drawLine(from: Point(x: 0, y: y ), to: Point(x: 400, y: y ))
//}
////next, draw the vertical lines
//for x in stride(from: 0, through: 400, by: 50){
//    x
//    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
//}

// disable borders
canvas.drawShapesWithBorders = false
// draw the first row, the lowest, of shapes
for PolygonX in stride(from: -85, through: 535, by: 160){
    var polygonVertices: [Point] = []
    polygonVertices.append(Point(x: PolygonX, y: 150))
    polygonVertices.append(Point(x: PolygonX + 150, y: 150))
    polygonVertices.append(Point(x: PolygonX + 100, y: 50))
    polygonVertices.append(Point(x: PolygonX - 50, y: 50))

    print(PolygonX)
    if PolygonX == -85 || PolygonX == 235 {
    
    canvas.fillColor = brown
    
    }
    if PolygonX == 75 || PolygonX == 395 {
        canvas.fillColor = purple
    }
    canvas.drawCustomShape(with: polygonVertices)
}

// draw the second row, the highest
for PolygonX2 in stride(from: -85, through: 535, by: 160){
    var polygonVertices2: [Point] = []
    polygonVertices2.append(Point(x: PolygonX2, y: 325))
    polygonVertices2.append(Point(x: PolygonX2 + 150, y: 325))
    polygonVertices2.append(Point(x: PolygonX2 + 100, y: 225))
    polygonVertices2.append(Point(x: PolygonX2 - 50, y: 225))

    print(PolygonX2)
    if PolygonX2 == -85 || PolygonX2 == 235 {
    
    canvas.fillColor = brown
    
    }
    if PolygonX2 == 75 || PolygonX2 == 395 {
        canvas.fillColor = purple
    }
    canvas.drawCustomShape(with: polygonVertices2)
}


// draw the red row
canvas.fillColor = lightRed
for PolygonX in stride(from: -85, through: 535, by: 160){
    var polygonVertices3: [Point] = []
    polygonVertices3.append(Point(x: PolygonX, y: 238))
    polygonVertices3.append(Point(x: PolygonX + 150, y: 238))
    polygonVertices3.append(Point(x: PolygonX + 100, y: 138))
    polygonVertices3.append(Point(x: PolygonX - 50, y: 138))

    
    

    canvas.drawCustomShape(with: polygonVertices3)
}

/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

