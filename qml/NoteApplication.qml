import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"
import NoteApplication 1.0

ApplicationWindow
{
    initialPage: Component { NotesListPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations
    NoteList {
        id: noteListStorage
    }
}
