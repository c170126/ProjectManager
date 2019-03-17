import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Universal 2.12
import Qt.labs.settings 1.0


ApplicationWindow {
    id: window
    width: 800
    height: 520
    visible: true
    title: "Project Manager"

    Rectangle{
        width: 200; height: 520
        color: "#352a2a"

    ListView{
        id: eventListView
        x: 0
        y: 0
        width: 200; height: 520

        model: EventModel {}
        delegate: EventDelegate{}
    }
    }



    TabBar {
        id: bar
        x: 145
        y: 0
        width: 600
        height: 520

        anchors.right: parent.right

        TabButton {
            text: qsTr("Context")
        }
        TabButton {
            text: qsTr("Calender")
        }
        TabButton {
            text: qsTr("Exp")
        }
    }

    StackLayout {
        width: parent.width
        currentIndex: bar.currentIndex
        Item {
            id: homeTab
            height: 520

            Rectangle {
                id: rectangle
                x: 351
                y: 142
                width: 262
                height: 209
                color: "#9bbbfb"

                Text {
                    id: element
                    x: 36
                    y: 71
                    width: 94
                    height: 63
                    text: qsTr("this is context")
                    font.pixelSize: 35
                }
            }


        }
        Item {
            id: discoverTab

            height: 520
            Rectangle {
                id: rectangle2
                x: 351
                y: 142
                width: 262
                height: 209
                color: "#ecd84e"

                Text {
                    id: element2
                    x: 36
                    y: 71
                    width: 94
                    height: 63
                    text: qsTr("this is calender")
                    font.pixelSize: 35
                }
            }


        }
        Item {
            id: activityTab

            height: 520
            Rectangle {
                id: rectangle3
                x: 351
                y: 142
                width: 262
                height: 209
                color: "#5fce78"

                Text {
                    id: element3
                    x: 36
                    y: 71
                    width: 94
                    height: 63
                    text: qsTr("this is EXP")
                    font.pixelSize: 35
                }
            }


        }
    }
    Button {
        id:addbutton
        x: 67
        y: 468
        width: 67
        height: 33
        text: qsTr("+")
        background: Rectangle {
            radius: addbutton.radius
            color: "RED"
        }

        display: AbstractButton.TextBesideIcon
        focusPolicy: Qt.ClickFocus
        highlighted: true
        anchors.margins: 10
        onClicked: eventDialog.open()

    }

    EventDialog {
        id: eventDialog
        x: Math.round((parent.width - width) / 2)
        y: Math.round((parent.height - height) / 2)
        eventModel: eventListView.model
    }



}




/*##^## Designer {
    D{i:15;anchors_height:33;anchors_width:67;anchors_x:84;anchors_y:458}
}
 ##^##*/
