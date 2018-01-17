import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    //creating green rectangle with half the
    //size of width and height of its ParentAnimation
    //making the rectangle in the center
    Rectangle{
        id: recCenter
        width:parent.width/2
        height:parent.height/2
        color:"green"
        anchors.centerIn: parent
    }

    Greenbox{
        id:recTopLeft
        anchors.right: recCenter.left
        anchors.bottom:recCenter.top
    }
    Greenbox{
        id:recTopRight
        anchors.left: recCenter.right
        anchors.bottom:recCenter.top
    }
    Greenbox{
        id:recRight
        anchors.left: recCenter.right
        anchors.verticalCenter:recCenter.verticalCenter
    }
    Greenbox{
        id:recLeft
        anchors.right: recCenter.left
        anchors.verticalCenter:recCenter.verticalCenter
    }
    Greenbox{
        id:recTop
        anchors.bottom: recCenter.top
        anchors.horizontalCenter:recCenter.horizontalCenter
    }
    Greenbox{
        id:recBottom
        anchors.top: recCenter.bottom
        anchors.horizontalCenter:recCenter.horizontalCenter
    }
    Greenbox{
        id:recBottomLeft
        anchors.right: recCenter.left
        anchors.top:recCenter.bottom
    }
    Greenbox{
        id:recBottomRight
        anchors.left: recCenter.right
        anchors.top:recCenter.bottom
    }
}
