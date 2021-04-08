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

    Rectangle {
        x: labeltext.x
        y:labeltext.y - 10
        height: 5
        width: labeltext.width
        color: 'green'



    }

}
