import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

     Slider{
        id:slide
        width:parent.width
        minimumValue: 0
        maximumValue: 360
        value:0
        enabled:true
        onValueChanged:{
            recCenter.rotation = slide.value
        }
     }

     //MouseArea is enabled only in the big rectangle
     //therefore clicking the big rectangle that is green
     //should be shrinking the height and width of
     //all the elements connected to recCenter
    MouseArea{
        anchors.fill:recCenter
        onClicked: {
            recCenter.width = parent.width/4
            recCenter.height = parent.height/4
        }
    }

    //creating green rectangle with half the
    //size of width and height of its ParentAnimation
    //making the rectangle in the center of the window
    //We placed greenboxes in rectangle
    //to make them its children so that when rotating all
     //the rectangles are going to be rotating as well
    Rectangle{
        id: recCenter
        width:parent.width/2
        height:parent.height/2
        color:"green"
        anchors.centerIn: parent

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


}
