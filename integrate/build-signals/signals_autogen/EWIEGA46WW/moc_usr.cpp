/****************************************************************************
** Meta object code from reading C++ file 'usr.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.0.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "usr.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'usr.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.0.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_usr_t {
    const uint offsetsAndSize[30];
    char stringdata0[124];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(offsetof(qt_meta_stringdata_usr_t, stringdata0) + ofs), len 
static const qt_meta_stringdata_usr_t qt_meta_stringdata_usr = {
    {
QT_MOC_LITERAL(0, 3), // "usr"
QT_MOC_LITERAL(4, 11), // "nameChanged"
QT_MOC_LITERAL(16, 0), // ""
QT_MOC_LITERAL(17, 10), // "ageChanged"
QT_MOC_LITERAL(28, 11), // "roleChanged"
QT_MOC_LITERAL(40, 12), // "loginChanged"
QT_MOC_LITERAL(53, 8), // "loggedIn"
QT_MOC_LITERAL(62, 10), // "changeRole"
QT_MOC_LITERAL(73, 4), // "name"
QT_MOC_LITERAL(78, 3), // "age"
QT_MOC_LITERAL(82, 4), // "role"
QT_MOC_LITERAL(87, 4), // "Role"
QT_MOC_LITERAL(92, 9), // "Developer"
QT_MOC_LITERAL(102, 6), // "Tester"
QT_MOC_LITERAL(109, 14) // "ProjectManager"

    },
    "usr\0nameChanged\0\0ageChanged\0roleChanged\0"
    "loginChanged\0loggedIn\0changeRole\0name\0"
    "age\0role\0Role\0Developer\0Tester\0"
    "ProjectManager"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_usr[] = {

 // content:
       9,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       4,   51, // properties
       1,   71, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   44,    2, 0x06,    4 /* Public */,
       3,    0,   45,    2, 0x06,    5 /* Public */,
       4,    0,   46,    2, 0x06,    6 /* Public */,
       5,    1,   47,    2, 0x06,    7 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       7,    0,   50,    2, 0x0a,    9 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    6,

 // slots: parameters
    QMetaType::Void,

 // properties: name, type, flags
       8, QMetaType::QString, 0x00015103, uint(0), 0,
       9, QMetaType::Int, 0x00015001, uint(1), 0,
      10, 0x80000000 | 11, 0x00015009, uint(2), 0,
       6, QMetaType::Bool, 0x00015103, uint(3), 0,

 // enums: name, alias, flags, count, data
      11,   11, 0x0,    3,   76,

 // enum data: key, value
      12, uint(usr::Developer),
      13, uint(usr::Tester),
      14, uint(usr::ProjectManager),

       0        // eod
};

void usr::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<usr *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->nameChanged(); break;
        case 1: _t->ageChanged(); break;
        case 2: _t->roleChanged(); break;
        case 3: _t->loginChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->changeRole(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (usr::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&usr::nameChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (usr::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&usr::ageChanged)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (usr::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&usr::roleChanged)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (usr::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&usr::loginChanged)) {
                *result = 3;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<usr *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->name(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->age(); break;
        case 2: *reinterpret_cast< Role*>(_v) = _t->role(); break;
        case 3: *reinterpret_cast< bool*>(_v) = _t->loggedIn(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<usr *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setName(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->setLoggedIn(*reinterpret_cast< bool*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject usr::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_usr.offsetsAndSize,
    qt_meta_data_usr,
    qt_static_metacall,
    nullptr,
qt_incomplete_metaTypeArray<qt_meta_stringdata_usr_t
, QtPrivate::TypeAndForceComplete<QString, std::true_type>, QtPrivate::TypeAndForceComplete<int, std::true_type>, QtPrivate::TypeAndForceComplete<Role, std::true_type>, QtPrivate::TypeAndForceComplete<bool, std::true_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<bool, std::false_type>
, QtPrivate::TypeAndForceComplete<void, std::false_type>


>,
    nullptr
} };


const QMetaObject *usr::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *usr::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_usr.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int usr::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 5;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void usr::nameChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void usr::ageChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void usr::roleChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void usr::loginChanged(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
