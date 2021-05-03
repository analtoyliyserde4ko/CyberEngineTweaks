#pragma once

#include "Type.h"

struct EnumStatic : ClassType
{
    EnumStatic(const TiltedPhoques::Lockable<sol::state, std::recursive_mutex>::Ref& aView,
                       RED4ext::IRTTIType* apClass);
    ~EnumStatic();
    
    sol::object Index_Impl(const std::string& acName, sol::this_environment aThisEnv) override;
};
