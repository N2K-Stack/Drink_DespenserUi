#include "systemcontroller.h"

systemcontroller::systemcontroller(QObject *parent)
    : QObject(parent)
    , m_drinkType(NONE)
{

}

systemcontroller::HotColdDrinkType systemcontroller::drinkType() const
{
    return m_drinkType;
}

void systemcontroller::setDrinkType(systemcontroller::HotColdDrinkType drinkType)
{
    if (m_drinkType == drinkType)
        return;

    m_drinkType = drinkType;
    emit drinkTypeChanged(m_drinkType);
}
