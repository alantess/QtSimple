import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:window
    width: 1040
    height: 780
    visible: true
    title: qsTr("Intro")



    // Repeater
    Rectangle{
    width: 120; height:120; color:"black"
    anchors.bottom: parent.bottom
    anchors.margins:10

            Grid{
            x:5;y:5
            rows:5;columns:5; spacing:5
            anchors.centerIn: parent
                Repeater{
                model:25
                delegate: Rectangle{
                radius: 50
                width: 20; height: 20
                color:'lightgreen'
                }
                }
            }
    }

    // Arraning Items
    Grid {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    height:200
    width:200
    columns: 2; rows:2 ;spacing:20
    Rectangle {width: 100; height:100; color:"blue"}
    Rectangle {width: 100; height:100; color:"red"}
    Rectangle {width: 100; height:100; color:"orange"}
    Rectangle {width: 100; height:100; color:"cyan"}
    }

    // Custom Buttons

    Button {
    text: "test"
    anchors {
    left: bt2.right
    }
    }


    Button	{
    id: bt2
    text: "hi"}
// States

    Rectangle {
    id:root
    color:"black"
    width: 150
    height: 360
    anchors.right: parent.right
    anchors.top:parent.top
    anchors.margins: 30

            Rectangle{
            id:light1
            color: root.state === "stopState" ? "red" : "lightGray"
            width: 75
            height: 75
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.margins: 5
            radius: 50
                            }
            Rectangle{
            id:light2
            width: 75
            color: root.state === "waitState" ? "yellow": "lightgray"
            height: 75
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: light1.bottom
            anchors.margins: 5
            radius: 50
                            }

            Rectangle{
            id:light3
            width: 75
            height: 75
            color: root.state ==='goState' ? "green" : "lightGray"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: light2.bottom
            anchors.margins: 5
            radius: 50
                            }





        state:"stopState"

        Timer {
        interval: 1000
        repeat: true
        running:true
        onTriggered:{
            var states = ["stopState", "waitState", "goState"]
            var nextState = (states.indexOf(parent.state) + 1 ) % states.length
            parent.state = states[nextState]
                    }
        }

    }




 // Change colors
    Rectangle {
    id:box
    width:50
    height:50
    color:'lightblue'
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.margins: 50


    ColorAnimation {
        target:box
        property: "color"
        from: "white"
        to: "black"
        duration: 3000
        running: true
    }
    }




}
