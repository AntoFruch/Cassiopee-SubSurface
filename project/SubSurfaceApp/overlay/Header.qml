import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: header
    Layout.fillWidth: true
    height: 70
    color: accentColor

    required property string title

    Text {
        anchors.centerIn: parent
        text: title ? "SubSurface" : title
        font.pixelSize: 22
        font.bold: true
        color: "white"
    }

    // Settings button (gear icon via unicode)
    Rectangle {
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.verticalCenter: parent.verticalCenter
        width: 44
        height: 44
        radius: 22
        color: "transparent"

        Text {
            anchors.centerIn: parent
            text: "\u2699"   // ⚙ gear
            font.pixelSize: 70
            color: "white"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: console.log("settings clicked")
        }
    }
}
