import QtQuick 2.5
import QtQuick.Window 2.1
import QtQuick.Controls 2.0

// Container
Window {
    id:root
    width: 1280
    height: 720
    visible: true
    color: "black"
    title: qsTr("Hello World")



 // Changing Rectangles
    Rectangle {
    width:210; height: 120
    color:"green"
    radius: 4
    smooth: true
    clip: true
    anchors {
    right:parent.right
    top: parent.top
    margins: 50
    }

    Rectangle {
    id: leftRect
    color:activeFocus ? "yellow" : "darkred"
    focus: true
    KeyNavigation.right: rightRect
    height: 100;width:60
    anchors {
    verticalCenter: parent.verticalCenter
    left:parent.left
    leftMargin: 25
            }


    }

    Rectangle {
    id: rightRect
    color: activeFocus ?  "#1835D9" :"#083CD9"
    KeyNavigation.left: leftRect
    height: 100;width:60
    anchors {
    verticalCenter: parent.verticalCenter
    right:parent.right
    rightMargin: 25

            }
    }
    }

// Text field for inputs

    Rectangle {
    width: 150; height:200
    color: "#23aaaa"
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.margins: 50

    TextInput{
    id:field1
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    text: "field 1"
    MouseArea {
    anchors.fill:parent
    onClicked: field1.text = ""
    }

    font.pixelSize: 12
    color: activeFocus ? "black" : "grey"
    focus: true
    activeFocusOnTab: true

    }
    TextInput{
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: field1.bottom
    text:"field 2"
    font.pixelSize: 12
    color: activeFocus ? "black" : "grey"
    activeFocusOnTab: true

    }
    }

 // Flickable Image -- Drag Image
    Flickable {
    id: flick
    width: 200; height:200
    contentHeight: 120
    contentWidth: 400
        AnimatedImage {
        id: flickimage
        height:flick.height; width:flick.width
        source: "https://media.giphy.com/media/DHGVKmSrNU2cOTLvZC/giphy.gif"
    }

    }



  // Center Rectangle with text areas that are clickable
    Rectangle {
        id: box
        width: 400; height: 400
        color: "#1F3B1D"
        anchors {
        centerIn: parent
        margins: 10
        }

        Text {
        text: "Click"
        id: click
        anchors.horizontalCenter: parent.horizontalCenter
        height:50
        font.pixelSize: 33

        MouseArea {
            anchors.fill:parent
            onPressed: parent.color = "red"
            onReleased: parent.color = "yellow"
        }

        }

        Text {
        text: "Press"
        id: press
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        height:50
        font.pixelSize: 33
        color: MouseArea.pressed ? "blue" : "orange"

        MouseArea {
            anchors.fill: parent
            onClicked: parent.font.bold = !parent.font.bold
        }

        }

    }
// Augmentatation of the rocket  image
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


  // Text at the top left of the screen
    Text {
        anchors.left: root.left

        id: brandName
        color:"white"
        text: qsTr("QtSimple")
        font.pointSize: 24
        font.bold: true
    }


   // Gif under the text
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



   // Gradient rectangle
    Rectangle {
        color: 'lightgreen'
        width: 250; height: 250;
        anchors {
        left: brandName.right
        leftMargin: 30
        rightMargin: 30
        }

        Rectangle {
        anchors {
        fill: parent
        margins: 10
        }

        gradient: Gradient {
            GradientStop {
            position: 0.0
            color:"#FA7664"
            }
             GradientStop {
            position: 1.0
            color:"#72FDB9"
            }

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

// Allows for text inputs and changes the rectangle size
    TextInput{
        id: labeltext
        x: root.width / 2
        color:"white"
        y:root.height / 2
        text: "??"
    }



// Batman gif
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
