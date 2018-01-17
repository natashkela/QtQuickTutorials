import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    title: qsTr("Hello World")
    //Importing regular png, jpg, jpeg images would be like this
    //setting width height id, centering it in parent window
    //and setting the source correctly
    Image{
        id:logo
        width:300
        height:300
        anchors.centerIn:parent
        source:"files/qtlogo.jpg"
    }
    //Why animated image? because this file is gif and if you want
    //to see it in motion you have to include it as AnimatedImage
    //opacity 0.5 fades the banana into logo.
    AnimatedImage{
        id:banana
        source:"files/giphy.gif"
        anchors.centerIn:logo
        opacity:0.5
    }

}

