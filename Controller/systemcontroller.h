#ifndef SYSTEMCONTROLLER_H
#define SYSTEMCONTROLLER_H

#include <QObject>

class systemcontroller : public QObject
{
    Q_OBJECT
    Q_PROPERTY(HotColdDrinkType drinkType READ drinkType WRITE setDrinkType NOTIFY drinkTypeChanged)


public:
    explicit systemcontroller(QObject *parent = nullptr);

    enum HotColdDrinkType {
        NONE,
        HOT,
        COLD
    };

    Q_ENUM (HotColdDrinkType);

    HotColdDrinkType drinkType() const;

public slots:
    void setDrinkType(HotColdDrinkType drinkType);

signals:

    void drinkTypeChanged(HotColdDrinkType drinkType);

private:
    HotColdDrinkType m_drinkType;
};

#endif // SYSTEMCONTROLLER_H
