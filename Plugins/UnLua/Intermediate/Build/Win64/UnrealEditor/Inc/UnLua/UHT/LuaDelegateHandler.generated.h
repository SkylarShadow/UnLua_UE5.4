// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "LuaDelegateHandler.h"
#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS
#ifdef UNLUA_LuaDelegateHandler_generated_h
#error "LuaDelegateHandler.generated.h already included, missing '#pragma once' in LuaDelegateHandler.h"
#endif
#define UNLUA_LuaDelegateHandler_generated_h

#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_31_RPC_WRAPPERS_NO_PURE_DECLS \
	DECLARE_FUNCTION(execDummy);


#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_31_INCLASS_NO_PURE_DECLS \
private: \
	static void StaticRegisterNativesULuaDelegateHandler(); \
	friend struct Z_Construct_UClass_ULuaDelegateHandler_Statics; \
public: \
	DECLARE_CLASS(ULuaDelegateHandler, UObject, COMPILED_IN_FLAGS(0), CASTCLASS_None, TEXT("/Script/UnLua"), NO_API) \
	DECLARE_SERIALIZER(ULuaDelegateHandler)


#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_31_ENHANCED_CONSTRUCTORS \
private: \
	/** Private move- and copy-constructors, should never be used */ \
	ULuaDelegateHandler(ULuaDelegateHandler&&); \
	ULuaDelegateHandler(const ULuaDelegateHandler&); \
public: \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, ULuaDelegateHandler); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(ULuaDelegateHandler); \
	DEFINE_DEFAULT_CONSTRUCTOR_CALL(ULuaDelegateHandler) \
	NO_API virtual ~ULuaDelegateHandler();


#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_26_PROLOG
#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_31_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_31_RPC_WRAPPERS_NO_PURE_DECLS \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_31_INCLASS_NO_PURE_DECLS \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_31_ENHANCED_CONSTRUCTORS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


template<> UNLUA_API UClass* StaticClass<class ULuaDelegateHandler>();

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h


PRAGMA_ENABLE_DEPRECATION_WARNINGS
