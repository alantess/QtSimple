import QtQuick 2.4

Item {
    id:root
    property alias  text: label.text

    implicitWidth:  label.implicitWidth + __margin *2
    implicitHeight: background.implicitHeight


    readonly property int __margin: 50

    Rectangle {
        id:background
        width: 100; height: 59
        radius: 5
        smooth: true
        anchors {
        margins: root.__margin
        }
        color:"blue"
        Text {
            id: label
            anchors.centerIn: parent
            font.pixelSize: 30
        }
    }


}
