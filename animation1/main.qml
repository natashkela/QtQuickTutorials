import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    id:root
    width: 500
    height: 500
    title: qsTr("Hello World")
    property bool running: false
    Rectangle{
        id:body
        width:root.width
        height:root.height
        anchors.centerIn: root

        Image{
            id:background
            source:"/files/rotation.jpg"
            anchors.centerIn:body;
            fillMode:Image.PreserveAspectFit
            width:root.width;
            height:root.height;
            RotationAnimation on rotation{
                from: 0
                to: 360
                duration:3000
                running: root.running
                loops:Animation.Infinite
            }
        }

        MouseArea{
            anchors.fill: background
            onClicked:{
                root.running = true;
            }
        }
    }
}
