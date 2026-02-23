import QtQuick 2.15

Rectangle {
    id: addDiveBtn
    width: 60
    height: 60
    radius: 30
    color: accentColor
    anchors {
        horizontalCenter: parent.horizontalCenter
        bottom: parent.bottom
        bottomMargin: 24
    }

    Text {
        anchors.centerIn: parent
        text: "+"
        font.pixelSize: 36
        color: "white"
        // nudge the + up slightly so it looks visually centred
        topPadding: -2
    }

    MouseArea {
        anchors.fill: parent
        onClicked: console.log("+ clicked")
    }
}
