import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    id: noteEditor
    property string name: ""
    property string text: ""

    DialogHeader {
        id: editorHeader
        acceptText: qsTr("Create")
        title: qsTr("New note")
    }

    Column {
        id: content
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: editorHeader.bottom
            leftMargin: Theme.horizontalPageMargin
            rightMargin: Theme.horizontalPageMargin
        }
        spacing: Theme.paddingMedium

        Label {
            text: qsTr("Note name:")
            font.pixelSize: Theme.fontSizeSmall
        }

        TextField {
            id: noteNameField
            width: parent.width
            placeholderText: qsTr("Note name")
        }

        Label {
            text: qsTr("Note text:")
            font.pixelSize: Theme.fontSizeSmall
        }

        TextArea {
            id: noteTextArea
            width: parent.width
            placeholderText: qsTr("Note text")
        }
    }

    onAccepted: {
        noteEditor.name = noteNameField.text
        noteEditor.text = noteTextArea.text
    }
}
