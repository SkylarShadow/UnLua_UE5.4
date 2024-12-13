// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/LuaFunction.h"
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeLuaFunction() {}

// Begin Cross Module References
COREUOBJECT_API UClass* Z_Construct_UClass_UFunction();
UNLUA_API UClass* Z_Construct_UClass_ULuaFunction();
UNLUA_API UClass* Z_Construct_UClass_ULuaFunction_NoRegister();
UPackage* Z_Construct_UPackage__Script_UnLua();
// End Cross Module References

// Begin Class ULuaFunction
void ULuaFunction::StaticRegisterNativesULuaFunction()
{
}
IMPLEMENT_CLASS_NO_AUTO_REGISTRATION(ULuaFunction);
UClass* Z_Construct_UClass_ULuaFunction_NoRegister()
{
	return ULuaFunction::StaticClass();
}
struct Z_Construct_UClass_ULuaFunction_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Class_MetaDataParams[] = {
		{ "IncludePath", "LuaFunction.h" },
		{ "ModuleRelativePath", "Public/LuaFunction.h" },
	};
	static constexpr UECodeGen_Private::FMetaDataPairParam NewProp_Overridden_MetaData[] = {
		{ "ModuleRelativePath", "Public/LuaFunction.h" },
	};
#endif // WITH_METADATA
	static const UECodeGen_Private::FObjectPropertyParams NewProp_Overridden;
	static const UECodeGen_Private::FPropertyParamsBase* const PropPointers[];
	static UObject* (*const DependentSingletons[])();
	static constexpr FCppClassTypeInfoStatic StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaFunction>::IsAbstract,
	};
	static const UECodeGen_Private::FClassParams ClassParams;
};
const UECodeGen_Private::FObjectPropertyParams Z_Construct_UClass_ULuaFunction_Statics::NewProp_Overridden = { "Overridden", nullptr, (EPropertyFlags)0x0040000000000000, UECodeGen_Private::EPropertyGenFlags::Object, RF_Public|RF_Transient|RF_MarkAsNative, nullptr, nullptr, 1, STRUCT_OFFSET(ULuaFunction, Overridden), Z_Construct_UClass_UFunction, METADATA_PARAMS(UE_ARRAY_COUNT(NewProp_Overridden_MetaData), NewProp_Overridden_MetaData) };
const UECodeGen_Private::FPropertyParamsBase* const Z_Construct_UClass_ULuaFunction_Statics::PropPointers[] = {
	(const UECodeGen_Private::FPropertyParamsBase*)&Z_Construct_UClass_ULuaFunction_Statics::NewProp_Overridden,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_ULuaFunction_Statics::PropPointers) < 2048);
UObject* (*const Z_Construct_UClass_ULuaFunction_Statics::DependentSingletons[])() = {
	(UObject* (*)())Z_Construct_UClass_UFunction,
	(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_ULuaFunction_Statics::DependentSingletons) < 16);
const UECodeGen_Private::FClassParams Z_Construct_UClass_ULuaFunction_Statics::ClassParams = {
	&ULuaFunction::StaticClass,
	nullptr,
	&StaticCppClassTypeInfo,
	DependentSingletons,
	nullptr,
	Z_Construct_UClass_ULuaFunction_Statics::PropPointers,
	nullptr,
	UE_ARRAY_COUNT(DependentSingletons),
	0,
	UE_ARRAY_COUNT(Z_Construct_UClass_ULuaFunction_Statics::PropPointers),
	0,
	0x001000A0u,
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UClass_ULuaFunction_Statics::Class_MetaDataParams), Z_Construct_UClass_ULuaFunction_Statics::Class_MetaDataParams)
};
UClass* Z_Construct_UClass_ULuaFunction()
{
	if (!Z_Registration_Info_UClass_ULuaFunction.OuterSingleton)
	{
		UECodeGen_Private::ConstructUClass(Z_Registration_Info_UClass_ULuaFunction.OuterSingleton, Z_Construct_UClass_ULuaFunction_Statics::ClassParams);
	}
	return Z_Registration_Info_UClass_ULuaFunction.OuterSingleton;
}
template<> UNLUA_API UClass* StaticClass<ULuaFunction>()
{
	return ULuaFunction::StaticClass();
}
ULuaFunction::ULuaFunction(const FObjectInitializer& ObjectInitializer) : Super(ObjectInitializer) {}
DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaFunction);
ULuaFunction::~ULuaFunction() {}
// End Class ULuaFunction

// Begin Registration
struct Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaFunction_h_Statics
{
	static constexpr FClassRegisterCompiledInInfo ClassInfo[] = {
		{ Z_Construct_UClass_ULuaFunction, ULuaFunction::StaticClass, TEXT("ULuaFunction"), &Z_Registration_Info_UClass_ULuaFunction, CONSTRUCT_RELOAD_VERSION_INFO(FClassReloadVersionInfo, sizeof(ULuaFunction), 1984593692U) },
	};
};
static FRegisterCompiledInInfo Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaFunction_h_4269435671(TEXT("/Script/UnLua"),
	Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaFunction_h_Statics::ClassInfo, UE_ARRAY_COUNT(Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaFunction_h_Statics::ClassInfo),
	nullptr, 0,
	nullptr, 0);
// End Registration
PRAGMA_ENABLE_DEPRECATION_WARNINGS
