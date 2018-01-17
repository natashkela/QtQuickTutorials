import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    id: root
    title: qsTr("Hello World")
    //Parallel animation allows you to animate in parallel mode
    //SequentialAnimation allows you to run one animation after another
    Rectangle{
        id:box
        width: 50
        height: 50
        color: "green"
        opacity:1
        //These are called internal animations
        NumberAnimation on x{
            to: root.width
            duration: 10000
        }
        NumberAnimation on y{
            to: root.height
            duration: 10000
        }
        RotationAnimator on rotation{
            from: 0
            to:360
            duration: 1000 //is going to go from 0 to 360 in 1 a second
            loops:Animation.Infinite; //loops inifinitely
        }
        ColorAnimation on color {
            from:"green"
            to: "red"
            duration: 8000

        }
    }
    //external animation that fades the opacity in every second
    NumberAnimation {
        id:aniOpactiy
        target:box
        running:true
        properties: "opacity"
        from:1.0
        to:0.0
        duration:1000
        loops: Animation.Infinite;
    }
}
