﻿#ifndef APPLICATION_H
#define APPLICATION_H

#include <QRunnable>
#include <QThread>
#include <QThreadPool>
#include <QDebug>

#ifndef DISABLE_GUI
#include <QApplication>
using BaseApplication = QApplication;
#else
#include <QCoreApplication>
using BaseApplication = QCoreApplication;
#endif

#include "global.h"

#define core() (Application::instance())

class ApplicationPrivate;
class Application : public BaseApplication
{
    Q_OBJECT
    D_PTR(Application)
    Q_DISABLE_COPY(Application)
public:
    explicit Application(int &argc, char **argv);
    ~Application();

    int exec(const QStringList &params = {});

signals:

public slots:
private:
    QString m_strCmd;
};

#endif // APPLICATION_H
