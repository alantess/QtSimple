#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlComponent>
#include <QColor>
#include <usr.h>
#include <QTimer>
#include <iostream>


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);


    QQmlApplicationEngine engine;




    usr user("Joe", QDate(1971, 07, 11), usr::Developer);

    QTimer* timer = new QTimer(&app);
    timer->start(3000);
    QObject::connect(timer, &QTimer::timeout, &user, &usr::changeRole);

    QQmlContext *context1 = engine.rootContext();

    context1->setContextProperty("_background" , QString("#abc111"));
    context1->setContextProperty("_userData", &user);



    const QUrl url(QStringLiteral("qrc:/main.qml"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
