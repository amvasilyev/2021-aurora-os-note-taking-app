#ifndef DATASTORER_H
#define DATASTORER_H

#include <QList>
#include <QString>
#include "note.h"

namespace DataStorer {
    QList<Note> readData();
    void storeData(QList<Note> &notes);
};

#endif // DATASTORER_H
