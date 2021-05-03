#pragma once

#include "Type.h"

struct ClassStatic : ClassType
{
    ClassStatic(const TiltedPhoques::Lockable<sol::state, std::recursive_mutex>::Ref& aView,
                       RED4ext::IRTTIType* apClass);
    ~ClassStatic();
    
    sol::function GetFactory();

private:

    sol::function m_factory;
};
