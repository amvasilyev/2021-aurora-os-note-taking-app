#ifndef NOTE_H
#define NOTE_H

#include <QString>

struct Note
{
    Note(QString name, QString text);
    QString name;
    QString text;
};

#endif // NOTE_H
