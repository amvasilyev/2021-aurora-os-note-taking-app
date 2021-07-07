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

void NoteList::addNote(QString name, QString text) {
    beginInsertRows(index(0), m_notes.size(), m_notes.size() + 1);
    m_notes.append(Note(name, text));
    endInsertRows();
}

void NoteList::readList() {
}

void NoteList::storeList() {
}
