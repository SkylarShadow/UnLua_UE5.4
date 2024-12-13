// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/LuaEnvLocator.h"
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeLuaEnvLocator() {}

// Begin Cross Module References
COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
UNLUA_API UClass* Z_Construct_UClass_ULuaEnvLocator();
UNLUA_API UClass* Z_Construct_UClass_ULuaEnvLocator_ByGameInstance();
UNLUA_API UClass* Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_NoRegister();
UNLUA_API UClass* Z_Construct_UClass_ULuaEnvLocator_NoRegister();
UPackage* Z_Construct_UPackage__Script_UnLua();
// End Cross Module References

// Begin Class ULuaEnvLocator
void ULuaEnvLocator::StaticRegisterNativesULuaEnvLocator()
{
}
IMPLEMENT_CLASS_NO_AUTO_REGISTRATION(ULuaEnvLocator);
UClass* Z_Construct_UClass_ULuaEnvLocator_NoRegister()
{
	return ULuaEnvLocator::StaticClass();
}
struct Z_Construct_UClass_ULuaEnvLocator_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Class_MetaDataParams[] = {
		{ "IncludePath", "LuaEnvLocator.h" },
		{ "ModuleRelativePath", "Public/LuaEnvLocator.h" },
	};
#endif // WITH_METADATA
	static UObject* (*const DependentSingletons[])();
	static constexpr FCppClassTypeInfoStatic StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaEnvLocator>::IsAbstract,
	};
	static const UECodeGen_Private::FClassParams ClassParams;
};
UObject* (*const Z_Construct_UClass_ULuaEnvLocator_Statics::DependentSingletons[])() = {
	(UObject* (*)())Z_Construct_UClass_UObject,
	(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_ULuaEnvLocator_Statics::DependentSingletons) < 16);
const UECodeGen_Private::FClassParams Z_Construct_UClass_ULuaEnvLocator_Statics::ClassParams = {
	&ULuaEnvLocator::StaticClass,
	nullptr,
	&StaticCppClassTypeInfo,
	DependentSingletons,
	nullptr,
	nullptr,
	nullptr,
	UE_ARRAY_COUNT(DependentSingletons),
	0,
	0,
	0,
	0x001000A0u,
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UClass_ULuaEnvLocator_Statics::Class_MetaDataParams), Z_Construct_UClass_ULuaEnvLocator_Statics::Class_MetaDataParams)
};
UClass* Z_Construct_UClass_ULuaEnvLocator()
{
	if (!Z_Registration_Info_UClass_ULuaEnvLocator.OuterSingleton)
	{
		UECodeGen_Private::ConstructUClass(Z_Registration_Info_UClass_ULuaEnvLocator.OuterSingleton, Z_Construct_UClass_ULuaEnvLocator_Statics::ClassParams);
	}
	return Z_Registration_Info_UClass_ULuaEnvLocator.OuterSingleton;
}
template<> UNLUA_API UClass* StaticClass<ULuaEnvLocator>()
{
	return ULuaEnvLocator::StaticClass();
}
ULuaEnvLocator::ULuaEnvLocator(const FObjectInitializer& ObjectInitializer) : Super(ObjectInitializer) {}
DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaEnvLocator);
ULuaEnvLocator::~ULuaEnvLocator() {}
// End Class ULuaEnvLocator

// Begin Class ULuaEnvLocator_ByGameInstance
void ULuaEnvLocator_ByGameInstance::StaticRegisterNativesULuaEnvLocator_ByGameInstance()
{
}
IMPLEMENT_CLASS_NO_AUTO_REGISTRATION(ULuaEnvLocator_ByGameInstance);
UClass* Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_NoRegister()
{
	return ULuaEnvLocator_ByGameInstance::StaticClass();
}
struct Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Class_MetaDataParams[] = {
		{ "IncludePath", "LuaEnvLocator.h" },
		{ "ModuleRelativePath", "Public/LuaEnvLocator.h" },
	};
#endif // WITH_METADATA
	static UObject* (*const DependentSingletons[])();
	static constexpr FCppClassTypeInfoStatic StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaEnvLocator_ByGameInstance>::IsAbstract,
	};
	static const UECodeGen_Private::FClassParams ClassParams;
};
UObject* (*const Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::DependentSingletons[])() = {
	(UObject* (*)())Z_Construct_UClass_ULuaEnvLocator,
	(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::DependentSingletons) < 16);
const UECodeGen_Private::FClassParams Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::ClassParams = {
	&ULuaEnvLocator_ByGameInstance::StaticClass,
	nullptr,
	&StaticCppClassTypeInfo,
	DependentSingletons,
	nullptr,
	nullptr,
	nullptr,
	UE_ARRAY_COUNT(DependentSingletons),
	0,
	0,
	0,
	0x001000A0u,
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::Class_MetaDataParams), Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::Class_MetaDataParams)
};
UClass* Z_Construct_UClass_ULuaEnvLocator_ByGameInstance()
{
	if (!Z_Registration_Info_UClass_ULuaEnvLocator_ByGameInstance.OuterSingleton)
	{
		UECodeGen_Private::ConstructUClass(Z_Registration_Info_UClass_ULuaEnvLocator_ByGameInstance.OuterSingleton, Z_Construct_UClass_ULuaEnvLocator_ByGameInstance_Statics::ClassParams);
	}
	return Z_Registration_Info_UClass_ULuaEnvLocator_ByGameInstance.OuterSingleton;
}
template<> UNLUA_API UClass* StaticClass<ULuaEnvLocator_ByGameInstance>()
{
	return ULuaEnvLocator_ByGameInstance::StaticClass();
}
ULuaEnvLocator_ByGameInstance::ULuaEnvLocator_ByGameInstance(const FObjectInitializer& ObjectInitializer) : Super(ObjectInitializer) {}
DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaEnvLocator_ByGameInstance);
ULuaEnvLocator_ByGameInstance::~ULuaEnvLocator_ByGameInstance() {}
// End Class ULuaEnvLocator_ByGameInstance

// Begin Registration
struct Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaEnvLocator_h_Statics
{
	static constexpr FClassRegisterCompiledInInfo ClassInfo[] = {
		{ Z_Construct_UClass_ULuaEnvLocator, ULuaEnvLocator::StaticClass, TEXT("ULuaEnvLocator"), &Z_Registration_Info_UClass_ULuaEnvLocator, CONSTRUCT_RELOAD_VERSION_INFO(FClassReloadVersionInfo, sizeof(ULuaEnvLocator), 3014296444U) },
		{ Z_Construct_UClass_ULuaEnvLocator_ByGameInstance, ULuaEnvLocator_ByGameInstance::StaticClass, TEXT("ULuaEnvLocator_ByGameInstance"), &Z_Registration_Info_UClass_ULuaEnvLocator_ByGameInstance, CONSTRUCT_RELOAD_VERSION_INFO(FClassReloadVersionInfo, sizeof(ULuaEnvLocator_ByGameInstance), 4278415265U) },
	};
};
static FRegisterCompiledInInfo Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaEnvLocator_h_4257919019(TEXT("/Script/UnLua"),
	Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaEnvLocator_h_Statics::ClassInfo, UE_ARRAY_COUNT(Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaEnvLocator_h_Statics::ClassInfo),
	nullptr, 0,
	nullptr, 0);
// End Registration
PRAGMA_ENABLE_DEPRECATION_WARNINGS
