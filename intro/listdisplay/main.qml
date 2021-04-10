import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Scroll")

    ScrollView {
        anchors.fill: parent


   ListModel {
   id:namedModel
   ListElement{name: "Jo"}
   ListElement{name: "Mike"}
   ListElement{name: "Jenna"}
   ListElement{name: "Alan"}
   ListElement{name: "Jo"}
   ListElement{name: "Mike"}
   ListElement{name: "Jenna"}
   ListElement{name: "Alan"}
   ListElement{name: "Jo"}
   ListElement{name: "Mike"}
   ListElement{name: "Jenna"}
   ListElement{name: "Alan"}
   ListElement{name: "Jo"}
   ListElement{name: "Mike"}
   ListElement{name: "Jenna"}
   ListElement{name: "Alan"}
   }

   Component {
   id:namedDelegate
    Text {
         text: model.name;
         width: parent.width
         height:40
         font.pixelSize: 32
         readonly property ListView __lv: listView.view


         MouseArea {
         anchors.fill: parent
         onClicked: __lv.currentIndex = model.index
         }
   }


   }



        ListView {
            id: listView
            populate: Transition {
               NumberAnimation {properties: "x,y" ; duration: 300}

            }
            anchors.fill: parent
            model: namedModel
            delegate:namedDelegate
            clip: true
            focus: true
            header: Rectangle {
                anchors {left:parent.left; right:parent.right}
                height:0
                color:"red"
            }

            highlight: Rectangle {
                anchors {left:parent.left; right:parent.right}
                color: "lightgray"

            }
            footer: Rectangle {
                height: 10
                anchors {left:parent.left; right:parent.right}
                color: "lightgray"

            }

        }
    }
}
