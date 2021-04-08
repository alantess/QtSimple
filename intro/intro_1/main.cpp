#include <QApplication>
#include <QLabel>
#include <QWidget>

int main(int argc, char *argv[]) {
  QApplication app(argc, argv);
  QLabel hello("<center>welcome to Qt</center>");
  hello.setWindowTitle("First Qt Application");
  hello.resize(400, 400);
  hello.show();
  return app.exec();
}
