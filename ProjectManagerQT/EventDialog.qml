import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11
import QtQuick.Window 2.11

Dialog {
    id: eventDialog
    title: "Add new event"
    modal: true
    standardButtons: DialogButtonBox.Ok | DialogButtonBox.Cancel

    property EventModel eventModel

    onAccepted: {
        eventModel.append({
            "event": "Lehan eats fish",

        })
    }
    onRejected: alarmDialog.close()
    Column {
        spacing: 20
        anchors.fill: parent
        Label {
            text: "Add a new event"
        }

    }

}
