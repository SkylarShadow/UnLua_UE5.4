// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

// IWYU pragma: private, include "UnLuaInterface.h"
#include "UObject/ObjectMacros.h"
#include "UObject/ScriptMacros.h"

PRAGMA_DISABLE_DEPRECATION_WARNINGS
#ifdef UNLUA_UnLuaInterface_generated_h
#error "UnLuaInterface.generated.h already included, missing '#pragma once' in UnLuaInterface.h"
#endif
#define UNLUA_UnLuaInterface_generated_h

#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_RPC_WRAPPERS_NO_PURE_DECLS \
	virtual FString GetModuleName_Implementation() const { return TEXT(""); }; \
	DECLARE_FUNCTION(execGetModuleName);


#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_CALLBACK_WRAPPERS
#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_ENHANCED_CONSTRUCTORS \
	/** Standard constructor, called after all reflected properties have been initialized */ \
	NO_API UUnLuaInterface(const FObjectInitializer& ObjectInitializer = FObjectInitializer::Get()); \
private: \
	/** Private move- and copy-constructors, should never be used */ \
	UUnLuaInterface(UUnLuaInterface&&); \
	UUnLuaInterface(const UUnLuaInterface&); \
public: \
	DECLARE_VTABLE_PTR_HELPER_CTOR(NO_API, UUnLuaInterface); \
	DEFINE_VTABLE_PTR_HELPER_CTOR_CALLER(UUnLuaInterface); \
	DEFINE_ABSTRACT_DEFAULT_OBJECT_INITIALIZER_CONSTRUCTOR_CALL(UUnLuaInterface) \
	NO_API virtual ~UUnLuaInterface();


#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_GENERATED_UINTERFACE_BODY() \
private: \
	static void StaticRegisterNativesUUnLuaInterface(); \
	friend struct Z_Construct_UClass_UUnLuaInterface_Statics; \
public: \
	DECLARE_CLASS(UUnLuaInterface, UInterface, COMPILED_IN_FLAGS(CLASS_Abstract | CLASS_Interface), CASTCLASS_None, TEXT("/Script/UnLua"), NO_API) \
	DECLARE_SERIALIZER(UUnLuaInterface)


#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_GENERATED_BODY \
	PRAGMA_DISABLE_DEPRECATION_WARNINGS \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_GENERATED_UINTERFACE_BODY() \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_ENHANCED_CONSTRUCTORS \
private: \
	PRAGMA_ENABLE_DEPRECATION_WARNINGS


#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_INCLASS_IINTERFACE_NO_PURE_DECLS \
protected: \
	virtual ~IUnLuaInterface() {} \
public: \
	typedef UUnLuaInterface UClassType; \
	typedef IUnLuaInterface ThisClass; \
	static FString Execute_GetModuleName(const UObject* O); \
	virtual UObject* _getUObject() const { return nullptr; }


#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_23_PROLOG
#define FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_31_GENERATED_BODY \
PRAGMA_DISABLE_DEPRECATION_WARNINGS \
public: \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_RPC_WRAPPERS_NO_PURE_DECLS \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_CALLBACK_WRAPPERS \
	FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h_26_INCLASS_IINTERFACE_NO_PURE_DECLS \
private: \
PRAGMA_ENABLE_DEPRECATION_WARNINGS


template<> UNLUA_API UClass* StaticClass<class UUnLuaInterface>();

#undef CURRENT_FILE_ID
#define CURRENT_FILE_ID FID_JRPG_Plugins_UnLua_Source_UnLua_Public_UnLuaInterface_h


PRAGMA_ENABLE_DEPRECATION_WARNINGS
