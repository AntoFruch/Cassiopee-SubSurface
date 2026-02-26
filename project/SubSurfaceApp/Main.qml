import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "pages" as Pages
import "overlay" as Overlay

ApplicationWindow {
    visible: true
    width: 400
    height: 750
    title: "Subsurface"

    required property var builtInStyles

    // ── Colors ──────────────────────────────────────────────────

    readonly property bool darkMode: Qt.styleHints.colorScheme === Qt.Dark

    readonly property color bgColor : darkMode ? "#000000" : "#FFFFFF"
    readonly property color textColor : darkMode ? "#FFFFFF" : "#000000"
    readonly property color listButtonColor : darkMode ?  "#333333" : "#eeeeee"
    readonly property color separatorColor : darkMode ? "#1C1C1C" : "#CCCCCC"
    readonly property color accentColor: "#1981BD"

    // ── Hardcoded dive list | expected to be deleted soon ────────────────────────────────
    ListModel {
        id: diveModel
        ListElement { name: "Cool Dive | 10/10/2026" }
        ListElement { name: "Blue Hole | 12/10/2026" }
        ListElement { name: "Coral Garden | 15/10/2026" }
        ListElement { name: "Shark Point | 18/10/2026" }
        ListElement { name: "The Wall | 20/10/2026" }
        ListElement { name: "Night Dive | 22/10/2026" }
        ListElement { name: "Wreck Dive | 25/10/2026" }
        ListElement { name: "Deep Blue | 28/10/2026" }
        ListElement { name: "Cave Dive | 01/11/2026" }
        ListElement { name: "Drift Dive | 05/11/2026" }
        ListElement { name: "Manta Point | 08/11/2026" }
        ListElement { name: "Turtle Bay | 10/11/2026" }
    }

    // ── Root column ──────────────────────────────────────────────────────────
    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        // ── Header bar ──────────────────────────────────────────────────────
        Overlay.Header{
            id: header
            title: "Saved Dives"
        }
        // --
        StackView{
            id: stack
            Layout.fillWidth: true
            Layout.fillHeight: true

            initialItem: Pages.DiveList {
                    diveModel: diveModel
            }
        }
    }

    // ──  "+" button ───────────────────────────────────────────
    Overlay.AddDiveButton{}
}
