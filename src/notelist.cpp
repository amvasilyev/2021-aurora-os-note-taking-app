#include "notelist.h"
#include <QVariant>
#include "datastorer.h"

NoteList::NoteList(QObject* parent) : QAbstractListModel(parent), m_notes()
{

}

QHash<int, QByteArray> NoteList::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[NameRole] = "name";
    roles[TextRole] = "text";
    return roles;
}

QVariant NoteList::data(const QModelIndex &index, int role) const {
    if(!index.isValid())
        return QVariant();
    switch(role) {
    case NameRole:
        return QVariant(m_notes[index.row()].name);
    case TextRole:
        return QVariant(m_notes[index.row()].text);
    default:
        return QVariant();
    }
}

void NoteList::readList() {
    m_notes = DataStorer::readData();
}

void NoteList::storeList() {
    DataStorer::storeData(m_notes);
}
