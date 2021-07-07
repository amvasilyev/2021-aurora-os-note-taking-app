#include <QtQuick>
#include <sailfishapp.h>
#include "notelist.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<NoteList>("NoteApplication", 1, 0, "NoteList");
    return SailfishApp::main(argc, argv);
}
