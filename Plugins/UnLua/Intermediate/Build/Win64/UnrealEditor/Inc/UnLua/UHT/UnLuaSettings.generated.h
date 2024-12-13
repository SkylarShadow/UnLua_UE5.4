// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "UnLuaSettings.h"
#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS
#ifdef UNLUA_UnLuaSettings_generated_h
#error "UnLuaSettings.generated.h already included, missing '#pragma once' in UnLuaSettings.h"
#endif
#define UNLUA_UnLuaSettings_generated_h

#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaSettings_h_26_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesUUnLuaSettings(); \
	friend struct Z_Construct_UClass_UUnLuaSettings_Statics; \
public: \
	DECLARE_CLASS(UUnLuaSettings, UObject, COMPILED_IN_FLAGS(0 | CLASS_DefaultConfig | CLASS_Config), CASTCLASS_None, TEXT("/Script/UnLua"), NO_API) \
	DECLARE_SERIALIZER(UUnLuaSettings) \
	static const TCHAR* StaticConfigName() {return TEXT("UnLuaSettings");} \



#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaSettings_h_26_ENHANCED_CONSTRUCTORS \
private: \
	/** Private move- and copy-constructors, should never be used */ \
	UUnLuaSettings(UUnLuaSettings&&); \
	UUnLuaSettings(const UUnLuaSettings&); \
public: \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, UUnLuaSettings); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(UUnLuaSettings); \
	DEFINE_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(UUnLuaSettings) \
	NO_API virtual ~UUnLuaSettings();


#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaSettings_h_23_PROLOG
#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaSettings_h_26_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaSettings_h_26_INCLASS_NO_PURE_DECLS \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaSettings_h_26_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


template<> UNLUA_API UClass* StaticClass<class UUnLuaSettings>();

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaSettings_h


PRAGMA_ENABLE_DEPRECATION_WARNINGS
