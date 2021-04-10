#include "usr.h"
#include <iostream>
#include <QObject>
using namespace std;



usr::usr(const QString name, const QDate& birthDay, Role role)
    : m_name(name), m_birthDay(birthDay), m_role(role)
{
}

QString usr::name() const
{
    return m_name;
}

void usr::setName(const QString &name)
{
    if ( name == m_name )
        return;
    m_name = name;
    emit nameChanged();
}

int usr::age() const
{
    // Yes I know the code is broken if you haven't had the birthday this year yet
    // It's an exercises for the interested student to fix :-)

    // Further, notice we would have to set up a signal to fire when we reaches his birthday.
    return QDate::currentDate().year() - m_birthDay.year();
}

usr::Role usr::role() const
{
    return m_role;
}

void usr::setRole(usr::Role role)
{
    if ( role == m_role )
        return;

    m_role = role;
    emit roleChanged();
}

bool usr::loggedIn() const
{
    return m_loggedIn;
}

void usr::setLoggedIn(bool loggedIn)
{
    if (loggedIn == m_loggedIn)
        return;

    m_loggedIn = loggedIn;
    emit loginChanged(loggedIn);
}

void usr::changeRole()
{
    setRole(m_role == usr::Developer ? usr::ProjectManager : usr::Developer);
}
