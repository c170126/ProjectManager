
import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.4
import QtQuick.Layouts 1.11
import QtQuick.Window 2.11

ItemDelegate {
    id: root
    width: 200
    height: 110

    checkable: true

    onClicked: ListView.view.currentIndex = index

    ColumnLayout{
        width: 200
        height: 100

        Rectangle{
            y: 0
            height: 100
            color: "#dcc3c3"
            border.width: 0

            border.color: "#e60b0b"
            Layout.fillWidth: true
            Text {
                x: 10
                color: "#de4040"
                Layout.preferredWidth: 40
                text: event
                elide: Text.ElideRight
                font.pointSize: 20
                z: 1
            }
            Button {
                x: 80
                y: 53

                text: qsTr("Delete")
                width: 112
                height: 39

                onClicked: confirmationDialog.open()
            }

        }


    }

    Dialog {
        id: confirmationDialog

        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        parent: Overlay.overlay

        modal: true
        title: "Confirmation"
        standardButtons: Dialog.Yes | Dialog.No
        onAccepted: root.ListView.view.model.remove(root.ListView.view.currentIndex, 1)



        Column {
            spacing: 20
            anchors.fill: parent
            Label {
                text: "Do you want to delete?"
            }

        }
    }


}














/*##^## Designer {
    D{i:3;anchors_height:100;anchors_width:200}D{i:1;anchors_width:200}
}
 ##^##*/
