#ifndef NOTELIST_H
#define NOTELIST_H

#include <QAbstractListModel>
#include <QList>
#include "note.h"


class NoteList : public QAbstractListModel
{
    Q_OBJECT
public:
    explicit NoteList(QObject *parent=nullptr);

    // Note list
    enum NoteRoles {
        NameRole = Qt::UserRole + 1,
        TextRole
    };
    virtual int rowCount(const QModelIndex&) const { return m_notes.size(); }
    virtual QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE void readList();
    Q_INVOKABLE void storeList();
private:
    QList<Note> m_notes;
};

#endif // NOTELIST_H
