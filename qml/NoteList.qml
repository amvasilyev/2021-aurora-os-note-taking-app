import QtQuick 2.0

Item {
    property alias model: notesModel

    function addNote(name, text) {
        notesModel.append({
                              name: name,
                              text: text
                          });
    }

    ListModel {
        id: notesModel

        ListElement {
            name: "First note"
            text: "Make this note application work"
        }
        ListElement {
            name: "Edit notes"
            text: "Make me editable!"
        }
    }
}
