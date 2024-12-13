// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "UnLua/Public/LuaDelegateHandler.h"
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeLuaDelegateHandler() {}

// Begin Cross Module References
COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
UNLUA_API UClass* Z_Construct_UClass_ULuaDelegateHandler();
UNLUA_API UClass* Z_Construct_UClass_ULuaDelegateHandler_NoRegister();
UPackage* Z_Construct_UPackage__Script_UnLua();
// End Cross Module References

// Begin Class ULuaDelegateHandler Function Dummy
struct Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Function_MetaDataParams[] = {
		{ "ModuleRelativePath", "Public/LuaDelegateHandler.h" },
	};
#endif // WITH_METADATA
	static const UECodeGen_Private::FFunctionParams FuncParams;
};
const UECodeGen_Private::FFunctionParams Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_ULuaDelegateHandler, nullptr, "Dummy", nullptr, nullptr, nullptr, 0, 0, RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x00020401, 0, 0, METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics::Function_MetaDataParams), Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics::Function_MetaDataParams) };
UFunction* Z_Construct_UFunction_ULuaDelegateHandler_Dummy()
{
	static UFunction* ReturnFunction = nullptr;
	if (!ReturnFunction)
	{
		UECodeGen_Private::ConstructUFunction(&ReturnFunction, Z_Construct_UFunction_ULuaDelegateHandler_Dummy_Statics::FuncParams);
	}
	return ReturnFunction;
}
DEFINE_FUNCTION(ULuaDelegateHandler::execDummy)
{
	P_FINISH;
	P_NATIVE_BEGIN;
	P_THIS->Dummy();
	P_NATIVE_END;
}
// End Class ULuaDelegateHandler Function Dummy

// Begin Class ULuaDelegateHandler
void ULuaDelegateHandler::StaticRegisterNativesULuaDelegateHandler()
{
	UClass* Class = ULuaDelegateHandler::StaticClass();
	static const FNameNativePtrPair Funcs[] = {
		{ "Dummy", &ULuaDelegateHandler::execDummy },
	};
	FNativeFunctionRegistrar::RegisterFunctions(Class, Funcs, UE_ARRAY_COUNT(Funcs));
}
IMPLEMENT_CLASS_NO_AUTO_REGISTRATION(ULuaDelegateHandler);
UClass* Z_Construct_UClass_ULuaDelegateHandler_NoRegister()
{
	return ULuaDelegateHandler::StaticClass();
}
struct Z_Construct_UClass_ULuaDelegateHandler_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Class_MetaDataParams[] = {
		{ "IncludePath", "LuaDelegateHandler.h" },
		{ "ModuleRelativePath", "Public/LuaDelegateHandler.h" },
	};
#endif // WITH_METADATA
	static UObject* (*const DependentSingletons[])();
	static constexpr FClassFunctionLinkInfo FuncInfo[] = {
		{ &Z_Construct_UFunction_ULuaDelegateHandler_Dummy, "Dummy" }, // 185001761
	};
	static_assert(UE_ARRAY_COUNT(FuncInfo) < 2048);
	static constexpr FCppClassTypeInfoStatic StaticCppClassTypeInfo = {
		TCppClassTypeTraits<ULuaDelegateHandler>::IsAbstract,
	};
	static const UECodeGen_Private::FClassParams ClassParams;
};
UObject* (*const Z_Construct_UClass_ULuaDelegateHandler_Statics::DependentSingletons[])() = {
	(UObject* (*)())Z_Construct_UClass_UObject,
	(UObject* (*)())Z_Construct_UPackage__Script_UnLua,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_ULuaDelegateHandler_Statics::DependentSingletons) < 16);
const UECodeGen_Private::FClassParams Z_Construct_UClass_ULuaDelegateHandler_Statics::ClassParams = {
	&ULuaDelegateHandler::StaticClass,
	nullptr,
	&StaticCppClassTypeInfo,
	DependentSingletons,
	FuncInfo,
	nullptr,
	nullptr,
	UE_ARRAY_COUNT(DependentSingletons),
	UE_ARRAY_COUNT(FuncInfo),
	0,
	0,
	0x001000A0u,
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UClass_ULuaDelegateHandler_Statics::Class_MetaDataParams), Z_Construct_UClass_ULuaDelegateHandler_Statics::Class_MetaDataParams)
};
UClass* Z_Construct_UClass_ULuaDelegateHandler()
{
	if (!Z_Registration_Info_UClass_ULuaDelegateHandler.OuterSingleton)
	{
		UECodeGen_Private::ConstructUClass(Z_Registration_Info_UClass_ULuaDelegateHandler.OuterSingleton, Z_Construct_UClass_ULuaDelegateHandler_Statics::ClassParams);
	}
	return Z_Registration_Info_UClass_ULuaDelegateHandler.OuterSingleton;
}
template<> UNLUA_API UClass* StaticClass<ULuaDelegateHandler>()
{
	return ULuaDelegateHandler::StaticClass();
}
DEFINE_VTABLE_PTR_HELPER_CTOR(ULuaDelegateHandler);
ULuaDelegateHandler::~ULuaDelegateHandler() {}
// End Class ULuaDelegateHandler

// Begin Registration
struct Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_Statics
{
	static constexpr FClassRegisterCompiledInInfo ClassInfo[] = {
		{ Z_Construct_UClass_ULuaDelegateHandler, ULuaDelegateHandler::StaticClass, TEXT("ULuaDelegateHandler"), &Z_Registration_Info_UClass_ULuaDelegateHandler, CONSTRUCT_RELOAD_VERSION_INFO(FClassReloadVersionInfo, sizeof(ULuaDelegateHandler), 1567533293U) },
	};
};
static FRegisterCompiledInInfo Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_2203313648(TEXT("/Script/UnLua"),
	Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_Statics::ClassInfo, UE_ARRAY_COUNT(Z_CompiledInDeferFile_FID_JRPG_Plugins_UnLua_Source_UnLua_Public_LuaDelegateHandler_h_Statics::ClassInfo),
	nullptr, 0,
	nullptr, 0);
// End Registration
PRAGMA_ENABLE_DEPRECATION_WARNINGS
