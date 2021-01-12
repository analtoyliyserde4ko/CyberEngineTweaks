#include <stdafx.h>

#include "Scripting.h"

#include "GameOptions.h"

#include <sol_imgui/sol_imgui.h>
#include <lsqlite3/lsqlite3.h>

#include <d3d12/D3D12.h>

#include <reverse/Type.h>
#include <reverse/Array.h>
#include <reverse/BasicTypes.h>
#include <reverse/SingletonReference.h>
#include <reverse/StrongReference.h>
#include <reverse/Converter.h>
#include <reverse/WeakReference.h>
#include <reverse/Enum.h>

static RED4ext::IRTTIType* s_pStringType = nullptr;

void Scripting::Initialize()
{
    m_lua.open_libraries(sol::lib::base, sol::lib::string, sol::lib::io, sol::lib::math, sol::lib::package, sol::lib::os, sol::lib::table);
    m_lua.require("sqlite3", luaopen_lsqlite3);

    sol_ImGui::InitBindings(m_lua);
    
    m_lua["GetDisplayResolution"] = []() -> std::tuple<float, float>
    {
        auto resolution = D3D12::Get().GetResolution();
        return
        {
            static_cast<float>(resolution.cx),
            static_cast<float>(resolution.cy)
        };
    };

    m_lua["ToVector3"] = [](sol::table table) -> Vector3
    {
        return Vector3
        {
            table["x"].get_or(0.f),
            table["y"].get_or(0.f),
            table["z"].get_or(0.f)
        };
    };

    m_lua.new_usertype<Scripting>("__Game",
        sol::meta_function::construct, sol::no_constructor,
        sol::meta_function::index, &Scripting::Index,
        sol::meta_function::new_index, &Scripting::NewIndex);

    m_lua.new_usertype<Type>("__Type",
        sol::meta_function::construct, sol::no_constructor,
        sol::meta_function::index, &Type::Index,
        sol::meta_function::new_index, &Type::NewIndex);

    m_lua.new_usertype<StrongReference>("StrongReference",
        sol::meta_function::construct, sol::no_constructor,
        sol::base_classes, sol::bases<Type>(),
        sol::meta_function::index, &StrongReference::Index,
        sol::meta_function::new_index, &StrongReference::NewIndex);

    m_lua.new_usertype<WeakReference>("WeakReference",
        sol::meta_function::construct, sol::no_constructor,
        sol::base_classes, sol::bases<Type>(),
        sol::meta_function::index, &WeakReference::Index,
        sol::meta_function::new_index, &WeakReference::NewIndex);

    m_lua.new_usertype<SingletonReference>("SingletonReference",
        sol::meta_function::construct, sol::no_constructor,
        sol::base_classes, sol::bases<Type>(),
        sol::meta_function::index, &SingletonReference::Index,
        sol::meta_function::new_index, &SingletonReference::NewIndex);

    m_lua.new_usertype<ClassReference>("ClassReference",
        sol::meta_function::construct, sol::no_constructor,
        sol::base_classes, sol::bases<Type>(),
        sol::meta_function::index, &ClassReference::Index,
        sol::meta_function::new_index, &ClassReference::NewIndex);

    m_lua.new_usertype<UnknownType>("Unknown",
        sol::meta_function::construct, sol::no_constructor,
        sol::base_classes, sol::bases<Type>(),
        sol::meta_function::index, &UnknownType::Index,
        sol::meta_function::new_index, &UnknownType::NewIndex);

    m_lua.new_usertype<GameOptions>("GameOptions",
        sol::meta_function::construct, sol::no_constructor,
        "Print", &GameOptions::Print,
        "Get", &GameOptions::Get,
        "GetBool", &GameOptions::GetBool,
        "GetInt", &GameOptions::GetInt,
        "GetFloat", &GameOptions::GetFloat,
        "Set", &GameOptions::Set,
        "SetBool", &GameOptions::SetBool,
        "SetInt", &GameOptions::SetInt,
        "SetFloat", &GameOptions::SetFloat,
        "Toggle", &GameOptions::Toggle,
        "Dump", &GameOptions::Dump,
        "List", &GameOptions::List);

    m_lua.new_usertype<Vector3>("Vector3",
        sol::constructors<Vector3(float, float, float), Vector3(float, float), Vector3(float), Vector3()>(),
        sol::meta_function::to_string, &Vector3::ToString,
        "x", &Vector3::x,
        "y", &Vector3::y,
        "z", &Vector3::z);

    m_lua["ToVector3"] = [](sol::table table) -> Vector3
    {
        return Vector3
        {
            table["x"].get_or(0.f),
            table["y"].get_or(0.f),
            table["z"].get_or(0.f)
        };
    };

    m_lua.new_usertype<Vector4>("Vector4",
        sol::constructors<Vector4(float, float, float, float), Vector4(float, float, float), Vector4(float, float), Vector4(float), Vector4()>(),
        sol::meta_function::to_string, &Vector4::ToString,
        "x", &Vector4::x,
        "y", &Vector4::y,
        "z", &Vector4::z,
        "w", &Vector4::w);

    m_lua.new_usertype<Enum>("Enum",
        sol::constructors<Enum(const std::string&, const std::string&), Enum(const std::string&, uint32_t)>(),
        sol::meta_function::to_string, &Enum::ToString,
        "value", sol::property(&Enum::GetValueName, &Enum::SetValueByName));

    m_lua["ToVector4"] = [](sol::table table) -> Vector4
    {
        return Vector4
        {
            table["x"].get_or(0.f),
            table["y"].get_or(0.f),
            table["z"].get_or(0.f),
            table["w"].get_or(0.f)
        };
    };

    m_lua.new_usertype<EulerAngles>("EulerAngles",
        sol::constructors<EulerAngles(float, float, float), EulerAngles(float, float), EulerAngles(float), EulerAngles()>(),
        sol::meta_function::to_string, &EulerAngles::ToString,
        "pitch", &EulerAngles::pitch,
        "yaw", &EulerAngles::yaw,
        "roll", &EulerAngles::roll);

    m_lua["ToEulerAngles"] = [](sol::table table) -> EulerAngles
    {
        return EulerAngles
        {
            table["pitch"].get_or(0.f),
            table["roll"].get_or(0.f),
            table["yaw"].get_or(0.f)
        };
    };

    m_lua.new_usertype<Quaternion>("Quaternion",
        sol::constructors<Quaternion(float, float, float, float), Quaternion(float, float, float), Quaternion(float, float), Quaternion(float), Quaternion()>(),
        sol::meta_function::to_string, &Quaternion::ToString,
        "i", &Quaternion::i,
        "j", &Quaternion::j,
        "k", &Quaternion::k,
        "r", &Quaternion::r);

    m_lua["ToQuaternion"] = [](sol::table table) -> Quaternion
    {
        return Quaternion
        {
            table["i"].get_or(0.f),
            table["j"].get_or(0.f),
            table["k"].get_or(0.f),
            table["r"].get_or(0.f)
        };
    };

    m_lua.new_usertype<CName>("CName",
        sol::constructors<CName(const std::string&), CName(uint32_t), CName(uint32_t, uint32_t), CName()>(),
        sol::meta_function::to_string, &CName::ToString,
        "hash_lo", &CName::hash_lo,
        "hash_hi", &CName::hash_hi,
        "value", sol::property(&CName::AsString));

    m_lua["ToCName"] = [](sol::table table) -> CName
    {
        return CName
        {
            table["hash_lo"].get_or<uint32_t>(0),
            table["hash_hi"].get_or<uint32_t>(0)
        };
    };

    m_lua.new_usertype<TweakDBID>("TweakDBID",
        sol::constructors<TweakDBID(const std::string&), TweakDBID(const TweakDBID&, const std::string&), TweakDBID(uint32_t, uint8_t), TweakDBID()>(),
        sol::meta_function::to_string, &TweakDBID::ToString,
        "hash", &TweakDBID::name_hash);

    m_lua["ToTweakDBID"] = [](sol::table table) -> TweakDBID
    {
        return TweakDBID
        {
            table["hash"].get_or<uint32_t>(0),
            table["length"].get_or<uint8_t>(0)
        };
    };

    m_lua.new_usertype<ItemID>("ItemID",
        sol::constructors<ItemID(const TweakDBID&, uint32_t, uint16_t, uint8_t), ItemID(const TweakDBID&, uint32_t, uint16_t), ItemID(const TweakDBID&, uint32_t), ItemID(const TweakDBID&), ItemID()>(),
        sol::meta_function::to_string, &ItemID::ToString,
        "tdbid", &ItemID::id);

    m_lua["ToItemID"] = [](sol::table table) -> ItemID
    {
        return ItemID
        {
            table["id"].get_or<TweakDBID>(0),
            table["rng_seed"].get_or<uint32_t>(2),
            table["unknown"].get_or<uint16_t>(0),
            table["maybe_type"].get_or<uint8_t>(0),
        };
    };

    m_lua.new_usertype<Type::Descriptor>("Descriptor",
        sol::meta_function::to_string, &Type::Descriptor::ToString);

    m_lua["Game"] = this;
    m_lua["GetSingleton"] = [this](const std::string& acName)
    {
        return this->GetSingletonHandle(acName);
    };

    m_lua["GameDump"] = [this](Type* apType)
    {
        return apType ? apType->GameDump() : "Null";
    };

    m_lua["Dump"] = [this](Type* apType, bool aDetailed)
    {
        return apType != nullptr ? apType->Dump(aDetailed) : Type::Descriptor{};
    };

    m_lua["DumpType"] = [this](const std::string& acName, bool aDetailed)
    {
        auto* pRtti = RED4ext::CRTTISystem::Get();
        auto* pType = pRtti->GetClass(RED4ext::FNV1a(acName.c_str()));
        if (!pType || pType->GetType() == RED4ext::ERTTIType::Simple)
            return Type::Descriptor();

        const Type type(m_lua, pType);
        return type.Dump(aDetailed);
    };

    m_lua["print"] = [](sol::variadic_args aArgs, sol::this_environment aEnvironment, sol::this_state aState)
    {
        std::ostringstream oss;
        sol::state_view s(aState);
        for (auto it = aArgs.cbegin(); it != aArgs.cend(); ++it)
        {
            if (it != aArgs.cbegin())
            {
                oss << " ";
            }
            std::string str = s["tostring"]((*it).get<sol::object>());
            oss << str;
        }
        Logger::InfoToMods(oss.str());
        Logger::ToConsole(oss.str());
    };

    // execute autoexec.lua inside our default script directory
    std::filesystem::current_path(Paths::CETPath / "scripts");
    if (std::filesystem::exists("autoexec.lua"))
        m_lua.do_file("autoexec.lua");
    else
    {
        Logger::InfoToMain("Scripting::Initialize() - missing CET autoexec.lua!");
        Logger::ToConsole("WARNING: missing CET autoexec.lua!");
    }

    // set current path for following scripts to our ModsPath
    std::filesystem::current_path(Paths::ModsPath);

    // load mods
    ReloadAllMods();
}

std::vector<VKBindInfo>& Scripting::GetBinds()
{
    return m_store.GetBinds();
}

void Scripting::TriggerOnInit() const
{
    m_store.TriggerOnInit();
}

void Scripting::TriggerOnUpdate(float aDeltaTime) const
{
    m_store.TriggerOnUpdate(aDeltaTime);
}

void Scripting::TriggerOnDraw() const
{
    m_store.TriggerOnDraw();
}

void Scripting::TriggerOnToolbarOpen() const
{
    m_store.TriggerOnToolbarOpen();
}

void Scripting::TriggerOnToolbarClose() const
{
    m_store.TriggerOnToolbarClose();
}

sol::object Scripting::GetMod(const std::string& acName) const
{
    return m_store.GetMod(acName);
}

void Scripting::ReloadAllMods()
{
    m_store.LoadAll(m_lua);
}

bool Scripting::ExecuteLua(const std::string& acCommand)
{
    // TODO: proper exception handling!
    try
    {
        m_lua.script(acCommand);
        return true;
    }
    catch(std::exception& e)
    {
        Logger::ToConsole(e.what());
    }
    return false;
}

size_t Scripting::Size(RED4ext::IRTTIType* apRttiType)
{
    if (apRttiType == s_pStringType)
        return sizeof(RED4ext::CString);
    if (apRttiType->GetType() == RED4ext::ERTTIType::Handle)
        return sizeof(RED4ext::Handle<RED4ext::IScriptable>);
    if (apRttiType->GetType() == RED4ext::ERTTIType::WeakHandle)
        return sizeof(RED4ext::WeakHandle<RED4ext::IScriptable>);

    return Converter::Size(apRttiType);
}

sol::object Scripting::ToLua(sol::state_view aState, RED4ext::CStackType& aResult)
{
    auto* pType = aResult.type;

    if (pType == nullptr)
        return sol::nil;
    if (pType == s_pStringType)
        return make_object(aState, std::string(static_cast<RED4ext::CString*>(aResult.value)->c_str()));
    if (pType->GetType() == RED4ext::ERTTIType::Handle)
    {
        const auto handle = *static_cast<RED4ext::Handle<RED4ext::IScriptable>*>(aResult.value);
        if (handle)
            return make_object(aState, StrongReference(aState, handle));
    }
    else if (pType->GetType() == RED4ext::ERTTIType::WeakHandle)
    {
        const auto handle = *static_cast<RED4ext::WeakHandle<RED4ext::IScriptable>*>(aResult.value);
        if (handle)
            return make_object(aState, WeakReference(aState, handle));
    }
    else if (pType->GetType() == RED4ext::ERTTIType::Array)
    {
        auto* pArrayType = static_cast<RED4ext::CArray*>(pType);
        uint32_t length = pArrayType->GetLength(aResult.value);
        sol::table result(aState, sol::create);
        for(auto i = 0u; i < length; ++i)
        {
            RED4ext::CStackType el;
            el.value = pArrayType->GetElement(aResult.value, i);
            el.type = pArrayType->GetInnerType();

            result[i + 1] = ToLua(aState, el);
        }

        return result;
    }
    else
    {
        auto result = Converter::ToLua(aResult, aState);
        if (result != sol::nil)
            return result;
    }

    return sol::nil;
}

RED4ext::CStackType Scripting::ToRED(sol::object aObject, RED4ext::IRTTIType* apRttiType, TiltedPhoques::Allocator* apAllocator)
{
    RED4ext::CStackType result;

    bool hasData = aObject != sol::nil;

    if (apRttiType)
    {
        result.type = apRttiType;

        if (apRttiType == s_pStringType)
        {
            std::string str;
            if (hasData)
            {
                sol::state_view v(aObject.lua_state());
                str = v["tostring"](aObject);
            }
            result.value = apAllocator->New<RED4ext::CString>(str.c_str());
        }
        else if (apRttiType->GetType() == RED4ext::ERTTIType::Handle)
        {
            if (aObject.is<StrongReference>())
            {
                auto* pSubType = static_cast<RED4ext::CClass*>(apRttiType)->parent;
                RED4ext::IRTTIType* pType = aObject.as<StrongReference*>()->m_pType;
                while (pType != nullptr && pType != pSubType)
                {
                    pType = static_cast<RED4ext::CClass*>(pType)->parent;
                }

                if (pType != nullptr)
                {
                    if (hasData)
                        result.value = apAllocator->New<RED4ext::Handle<RED4ext::IScriptable>>(aObject.as<StrongReference>().m_strongHandle);
                    else
                        result.value = apAllocator->New<RED4ext::Handle<RED4ext::IScriptable>>();
                }
            }
            else if (aObject.is<WeakReference>()) // Handle Implicit Cast - Probably an awful conversion without proper ref handling but try anyway
            {
                auto* pSubType = static_cast<RED4ext::CClass*>(apRttiType)->parent;
                RED4ext::IRTTIType* pType = aObject.as<WeakReference*>()->m_pType;
                while (pType != nullptr && pType != pSubType)
                {
                    pType = static_cast<RED4ext::CClass*>(pType)->parent;
                }

                if (pType != nullptr)
                {
                    if (hasData)
                        result.value = apAllocator->New<RED4ext::Handle<RED4ext::IScriptable>>(aObject.as<WeakReference>().m_weakHandle);
                    else
                        result.value = apAllocator->New<RED4ext::Handle<RED4ext::IScriptable>>();
                }
            }
        }
        else if (apRttiType->GetType() == RED4ext::ERTTIType::WeakHandle)
        {
            if (aObject.is<WeakReference>())
            {
                auto* pSubType = static_cast<RED4ext::CClass*>(apRttiType)->parent;
                RED4ext::IRTTIType* pType = aObject.as<WeakReference*>()->m_pType;
                while (pType != nullptr && pType != pSubType)
                {
                    pType = static_cast<RED4ext::CClass*>(pType)->parent;
                }

                if (pType != nullptr)
                {
                    if (hasData)
                        result.value = apAllocator->New<RED4ext::WeakHandle<RED4ext::IScriptable>>(aObject.as<WeakReference>().m_weakHandle);
                    else
                        result.value = apAllocator->New<RED4ext::WeakHandle<RED4ext::IScriptable>>();
                }
            }
            else if (aObject.is<StrongReference>()) // Handle Implicit Cast
            {
                auto* pSubType = static_cast<RED4ext::CClass*>(apRttiType)->parent;
                RED4ext::IRTTIType* pType = aObject.as<StrongReference*>()->m_pType;
                while (pType != nullptr && pType != pSubType)
                {
                    pType = static_cast<RED4ext::CClass*>(pType)->parent;
                }

                if (pType != nullptr)
                {
                    if (hasData)
                        result.value = apAllocator->New<RED4ext::WeakHandle<RED4ext::IScriptable>>(aObject.as<StrongReference>().m_strongHandle);
                    else
                        result.value = apAllocator->New<RED4ext::WeakHandle<RED4ext::IScriptable>>();
                }
            }
        }
        else if (apRttiType->GetType() == RED4ext::ERTTIType::Array)
        {
            auto* pArrayType = static_cast<RED4ext::CArray*>(apRttiType);
            auto mem = reinterpret_cast<RED4ext::DynArray<void*>*>(apAllocator->New<uint8_t>(apRttiType->GetSize()));
            apRttiType->Init(mem);

            if (hasData && aObject.is<sol::table>())
            {
                auto* pArrayInnerType = pArrayType->GetInnerType();

                // Copy elements from the table into the array
                auto tbl = aObject.as<sol::table>();
                pArrayType->Grow(mem, tbl.size());
                for (uint32_t i = 1; i <= tbl.size(); ++i)
                {
                    RED4ext::CStackType type = Converter::ToRED(tbl.get<sol::object>(i), pArrayInnerType, apAllocator);
                    auto element = pArrayType->GetElement(mem, i - 1);
                    pArrayInnerType->Assign(element, type.value);
                }
            }

            result.value = mem;
        }
        else
        {
            return Converter::ToRED(aObject, apRttiType, apAllocator);
        }
    }

    return result;
}

sol::object Scripting::Index(const std::string& acName)
{
    if(const auto itor = m_properties.find(acName); itor != m_properties.end())
    {
        return itor->second;
    }

    return InternalIndex(acName);
}

sol::object Scripting::NewIndex(const std::string& acName, sol::object aParam)
{
    auto& property = m_properties[acName];
    property = aParam;
    return property;
}

sol::object Scripting::GetSingletonHandle(const std::string& acName)
{
    auto itor = m_singletons.find(acName);
    if (itor != std::end(m_singletons))
        return make_object(m_lua, itor->second);

    auto* pRtti = RED4ext::CRTTISystem::Get();
    auto* pType = pRtti->GetClass(RED4ext::FNV1a(acName.c_str()));
    if (!pType)
    {
        Logger::ToConsoleFmt("Type '{}' not found or is not initialized yet.", acName);
        return sol::nil;
    }

    auto result = m_singletons.emplace(std::make_pair(acName, SingletonReference{ m_lua, pType }));
    return make_object(m_lua, result.first->second);
}

sol::protected_function Scripting::InternalIndex(const std::string& acName)
{
    const sol::state_view state(m_lua);
    auto obj = make_object(state, [this, name = acName](sol::variadic_args args, sol::this_environment env, sol::this_state L)
    {
        std::string result;
        auto code = this->Execute(name, args, env, L, result);
        if(!code)
        {
            Logger::ToConsoleFmt("Error: {}", result);
        }
        return code;
    });

    return NewIndex(acName, std::move(obj));
}

sol::object Scripting::Execute(const std::string& aFuncName, sol::variadic_args aArgs, sol::this_environment env, sol::this_state L, std::string& aReturnMessage) const
{
    auto* pRtti = RED4ext::CRTTISystem::Get();
    if (pRtti == nullptr)
    {
        aReturnMessage = "Could not retrieve RTTISystem instance.";
        return sol::nil;
    }
    s_pStringType = pRtti->GetType(RED4ext::FNV1a("String"));
    if (s_pStringType == nullptr)
    {
        aReturnMessage = "Could not retrieve String type instance.";
        return sol::nil;
    }

    RED4ext::CBaseFunction* pFunc = pRtti->GetFunction(RED4ext::FNV1a(aFuncName.c_str()));

    static const auto hashcpPlayerSystem = RED4ext::FNV1a("cpPlayerSystem");
    static const auto hashGameInstance = RED4ext::FNV1a("ScriptGameInstance");
    auto* pGIType = pRtti->GetType(RED4ext::FNV1a("ScriptGameInstance"));

    auto* pPlayerSystem = pRtti->GetClass(hashcpPlayerSystem);
    if (pPlayerSystem == nullptr)
    {
        aReturnMessage = "Could not retrieve cpPlayerSystem class.";
        return sol::nil;
    }

    auto* gameInstanceType = pRtti->GetClass(hashGameInstance);
    if (gameInstanceType == nullptr)
    {
        aReturnMessage = "Could not retrieve ScriptGameInstance class.";
        return sol::nil;
    }

    if (!pFunc)
    {
        pFunc = gameInstanceType->GetFunction(RED4ext::FNV1a(aFuncName.c_str()));
        if (!pFunc)
        {
            aReturnMessage = "Function '" + aFuncName + "' not found or is not a global.";
            return sol::nil;
        }
    }

    // 8KB should cut it
    static thread_local TiltedPhoques::ScratchAllocator s_scratchMemory(1 << 13);
    struct ResetAllocator
    {
        ~ResetAllocator()
        {
            s_scratchMemory.Reset();
        }
    };
    ResetAllocator ___allocatorReset;

    using CStackType = RED4ext::CStackType;
    const auto* engine = RED4ext::CGameEngine::Get();
    if (engine == nullptr)
    {
        aReturnMessage = "Could not retrieve GameEngine instance.";
        return sol::nil;
    }

    auto* framework = engine->framework;
    if (framework == nullptr)
    {
        aReturnMessage = "Could not retrieve GameFramework instance.";
        return sol::nil;
    }

    auto* gameInstance = framework->gameInstance;
    if (gameInstance == nullptr)
    {
        aReturnMessage = "Could not retrieve GameInstance instance.";
        return sol::nil;
    }

    RED4ext::CName name;
    uint8_t argOffset = 0;

    if (pFunc->params.size > 0)
    {
        auto* pType = pFunc->params[0]->type;
        // check if the first argument is expected to be ScriptGameInstance
        if (pType == pGIType)
        {
            argOffset = 1;
        }
    }

    std::vector<CStackType> args(aArgs.size() + argOffset);

    if (pFunc->params.size - argOffset != aArgs.size())
    {
        aReturnMessage = "Function '" + aFuncName + "' expects " +
            std::to_string(pFunc->params.size - argOffset) + " parameters, not " +
            std::to_string(aArgs.size()) + ".";

        return sol::nil;
    }

    if (argOffset > 0)
    {
        // Inject the ScriptGameInstance into first argument
        args[0].type = pFunc->params[0]->type;
        args[0].value = &gameInstance;
    }
    
    for (auto i = 0ull; i < aArgs.size(); ++i)
    {
        args[i + argOffset] = ToRED(aArgs[i].get<sol::object>(), pFunc->params[i + argOffset]->type, &s_scratchMemory); // TODO - check!

        if(!args[i + argOffset].value)
        {
            auto* pType = pFunc->params[i + argOffset]->type;

            pType->GetName(name);
            if (!name.IsEmpty())
            {
                const auto typeName = name.ToString();
                aReturnMessage = "Function '" + aFuncName + "' parameter " + std::to_string(i) + " must be " + typeName + ".";
            }

            return sol::nil;
        }
    }

    const bool hasReturnType = (pFunc->returnType) != nullptr && (pFunc->returnType->type) != nullptr;

    uint8_t buffer[1000]{ 0 };
    CStackType result;
    if (hasReturnType)
    {
        result.value = &buffer;
        result.type = pFunc->returnType->type;
    }

    auto* pScriptable = gameInstance->GetInstance(pPlayerSystem);
    if (pScriptable == nullptr)
    {
        aReturnMessage = "Could not retrieve ScriptInstance from cpPlayerSystem instance.";
        return sol::nil;
    }
    RED4ext::CStack stack(pScriptable, args.data(), static_cast<uint32_t>(args.size()), hasReturnType ? &result : nullptr, 0);

    const auto success = pFunc->Execute(&stack);
    if (!success)
    {
        aReturnMessage = "Function '" + aFuncName + "' failed to execute!";
        return sol::nil;
    }

    if(hasReturnType)
        return ToLua(m_lua, result);

    return make_object(m_lua, true);
}
