.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;
.source "PositioningProviderForExtLib.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;-><init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic enable()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->enable()V

    return-void
.end method

.method protected final getDependentService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x9

    return v0
.end method

.method public bridge synthetic occurTimeOut()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->occurTimeOut()V

    return-void
.end method