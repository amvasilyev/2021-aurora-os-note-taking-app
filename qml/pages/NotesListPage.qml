import QtQuick 2.0
import Sailfish.Silica 1.0
import ".."

Page {
    id: page

    NoteList {
        id: noteList
    }

    SilicaListView {
        id: notesView
        anchors.fill: parent
        model: noteList.model
        header: PageHeader {
            title: qsTr("My Notes")
        }
        PullDownMenu {
            MenuItem {
                text: qsTr("Add new note")
                onClicked: {
                    var dialog = pageStack.push(Qt.resolvedUrl("NoteEditor.qml"));
                    dialog.accepted.connect(function() {
                        noteList.addNote(dialog.name, dialog.text);
                    });
                }
            }
        }
        delegate: BackgroundItem {
            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    leftMargin: Theme.horizontalPageMargin
                    rightMargin: Theme.horizontalPageMargin
                }
                text: model.name
            }

            Component {
                id: noteViewPage
                NoteViewPage {}
            }

            onClicked: {
                pageStack.push(noteViewPage, {
                                   noteName: model.name,
                                   noteText: model.text
                               });
            }
        }
         VerticalScrollDecorator {}
    }
}
