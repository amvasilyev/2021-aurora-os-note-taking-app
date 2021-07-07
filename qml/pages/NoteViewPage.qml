import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property alias noteName: noteNameLabel.text
    property alias noteText: noteTextLabel.text

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: content.height

        Column {
            id: content
            anchors {
                left: parent.left
                right: parent.right
                leftMargin: Theme.horizontalPageMargin
                rightMargin: Theme.horizontalPageMargin
            }
            spacing: Theme.paddingMedium

            PageHeader {
                title: qsTr("Note information")
            }

            Label {
                text: qsTr("Note name:")
                font.pixelSize: Theme.fontSizeSmall
            }

            Label {
                id: noteNameLabel
                color: Theme.highlightColor
            }

            Label {
                text: qsTr("Note text:")
                font.pixelSize: Theme.fontSizeSmall
            }

            Label {
                id: noteTextLabel
                color: Theme.highlightColor
            }
        }
        VerticalScrollDecorator {}
    }
}
