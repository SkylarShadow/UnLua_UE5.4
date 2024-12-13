---Helper class to derive from to use debug draw delegate functionalities (i.e. DrawDebugLabels)
---The class will take care of registering a delegate to the UDebugDrawService and draw all FText3d provided by the scene proxy.
---This functionality only requires the derived classes to override `CreateDebugSceneProxy`.
---It is also possible to add text from other sources of data from the scene proxy but that requires a few extra steps:
--- + create a class that inherits from `FDebugDrawDelegateHelper`
---            - override `DrawDebugLabels`
---            - add a method to be able to populate the source data from the scene proxy
---            ex: class FMyDelegateHelper : public FDebugDrawDelegateHelper
---                    {
---                            public:
---                                    void SetupFromProxy(const FMySceneProxy* InSceneProxy) { <collect data> };
---                            protected:
---                                    virtual void DrawDebugLabels(UCanvas* Canvas, APlayerController*) override { <draw data> };
---                            private:
---                                    TArray<FVector> SomeData;
---                    };
--- + Within the component inheriting from `UDebugDrawComponent`
---            - add a property of that new helper type in the component inheriting from `UDebugDrawComponent`
---            - override `GetDebugDrawDelegateHelper` to return that new member as the new delegate helper to use
---            - and then use it in `CreateDebugSceneProxy` before returning the created proxy.
---            ex: class MyDebugDrawComponent : public UDebugDrawComponent
---                    {
---                            protected:
---                                    virtual FDebugRenderSceneProxy* CreateDebugSceneProxy() override
---                                    {
---                                            FMySceneProxy* Proxy = new FMySceneProxy(this);
---                                            MyDelegateHelper.SetupFromProxy(Proxy);
---                                            return Proxy;
---                                    }
---                                    virtual FDebugDrawDelegateHelper& GetDebugDrawDelegateHelper() override { return MyDelegateHelper; }
---                            private:
---                                    FMyDelegateHelper MyDelegateHelper;
---                    }
---@class UDebugDrawComponent : UPrimitiveComponent
local UDebugDrawComponent = {}

