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
        rotation: 30
        opacity: 0.5
        scale:0.2
        x:brandName.x+100; y:0
        source: "../images/rocket.png"
        transformOrigin: Item.TopLeft
        Component.onCompleted: console.log("Completed")
        transform: Rotation {
        origin.x : rocket.width / 4
        origin.y : 300

        RotationAnimation on angle {
            from:0
            to:180*2
            duration: 30000
            loops: Animation.Infinite

        }
                    }


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
        anchors.left: root.left

        id: brandName
        color:"white"
        text: qsTr("QtSimple")
        font.pointSize: 24
        font.bold: true
    }

    AnimatedImage {
        id: shoes
        height:150; width:150
        anchors {
            right: brandName.right
            top: brandName.bottom
            left: root.left
            leftMargin: 200
        }

        source: "https://media.giphy.com/media/klzrrcs2rcxpq2o1wY/giphy.gif"
    }



    Rectangle {
        color: 'lightgreen'
        width: 250; height: 250;
        anchors {
        left: brandName.right
        leftMargin: 30
        rightMargin: 30
        }

        Rectangle {
        color:"#CD66FE"
        anchors {
        fill: parent
        margins: 10
        }

        }

        Rectangle {
            color:"red"
            height:50; width:50
            opacity: 0.5
            anchors {
            centerIn: parent
            }



        }

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
