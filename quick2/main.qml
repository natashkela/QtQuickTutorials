import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    //Creating window with default settings
    visible: true
    width: 500
    height: 500
    //setting the title for the window
    title: qsTr("Hello World")
    //creating green rectangle that is going to have
    //half the width and height of the window and is going
    //to be centered
    Rectangle{
        id:root
        width:parent.width/2;
        height:parent.height/2;
        color:"green"
        anchors.centerIn:parent;
    }
    //creating another 4 red recntagles
    //each going on different corners of the window
    Rectangle{
        width:parent.width/4;
        height:parent.height/4;
        color:"red"
        anchors.left:parent.left;
        anchors.top: parent.top;
    }
    Rectangle{
        width:parent.width/4;
        height:parent.height/4;
        color:"red"
        anchors.left:parent.left;
        anchors.bottom: parent.bottom;
    }
    Rectangle{
        width:parent.width/4;
        height:parent.height/4;
        color:"red"
        anchors.right:parent.right;
        anchors.top: parent.top;
    }
    Rectangle{
        width:parent.width/4;
        height:parent.height/4;
        color:"red"
        anchors.right:parent.right;
        anchors.bottom: parent.bottom;
    }
    //creating a rectanle that is going to be centered in the
    //biggest centered rectangle
    Rectangle{
        width:parent.width/4;
        height:parent.height/4;
        color:"black"
        anchors.centerIn:root;

    }
}
