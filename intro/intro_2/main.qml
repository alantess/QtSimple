import QtQuick 2.5
import QtQuick.Window 2.1
import QtQuick.Controls 2.0


Window {
    id:root
    width: 1280
    height: 720
    visible: true
    color: "black"
    title: qsTr("Hello World")


    Image {
        id: rocket
        x:brandName.x+100; y:0
        height: 100
        width:100
        source: "../images/rocket.png"
        Component.onCompleted: console.log("Completed")

            }

    BorderImage {
        id: logo
        x:brandName.x + 200; y:0
        height: 100
        width:100

        source: "https://i.pinimg.com/originals/3f/3d/d9/3f3dd9219f7bb1c9617cf4f154b70383.jpg"
        Component.onCompleted: console.log("Completed")
        horizontalTileMode: BorderImage.Stretch
        verticalTileMode: BorderImage.Repeat
        border {left:30; top:30; right:30; bottom:30;}

            }

    Text {
        x:0;y:0
        id: brandName
        color:"white"
        text: qsTr("QtSimple")
        font.pointSize: 24
        font.bold: true
    }

    TextInput{
        id: labeltext
        x: root.width / 2
        color:"white"
        y:root.height / 2
        text: "??"
    }

    AnimatedImage {
        id: animmation
        x:root.width /2 + 356
        y:root.height / 2
        height:200
        width: 200
        source: "https://media.giphy.com/media/a5viI92PAF89q/giphy.gif"
    }


    Rectangle {
        x: labeltext.x
        y:labeltext.y - 10
        height: 5
        width: labeltext.width
        color: 'green'



    }

}
