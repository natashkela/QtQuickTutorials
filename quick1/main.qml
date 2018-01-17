import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    //Setting default settings
    visible: true
    width: 500
    height: 500
    //setting window name
    title: qsTr("Hello Rectangles")
    //creating first rectangle of width and height 50
    //this rectangle will be located at the top left corner
    Rectangle{
        width:50;
        height:50;
        color: "red";
        border.color:"black"
        border.width: 5
    }
    //Creating another rectangle that will have width and height of 200
    //The rectangle will be located in the center of the window
    //because the anchors.centerIn will set it to the center of the parent
    //which in this case is window
    Rectangle{
        width:200;
        height:200;
        color: "red";
        border.color:"black"
        border.width: 5
        anchors.centerIn:parent;
        //Creating another rectangle with half the width of this
        //rectangles parent which is the rectangle 200 by 200
        //setting its color to green and border white so that
        //we can differentiate them easily
        //the radius of half of the width of the parent will make the
        //rectangle an ellipse
        Rectangle{
            width:parent.width/2;
            height:parent.height/2;
            color: "green";
            radius:parent.width/2;
            border.color:"white"
            border.width: 5
            anchors.left:parent.left;
            anchors.bottom: parent.bottom;
        }
    }
}
