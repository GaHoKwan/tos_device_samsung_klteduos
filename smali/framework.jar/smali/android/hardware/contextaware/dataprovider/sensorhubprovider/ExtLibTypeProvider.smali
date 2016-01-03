.class abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "ExtLibTypeProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final checkNotifyCondition()Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getTimeOutCheckManager()Landroid/hardware/contextaware/manager/IContextTimeOutCheck;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/contextaware/manager/IContextTimeOutCheck;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->clear()V

    .line 126
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 127
    return-void
.end method

.method protected final getInstructionForDisable()B
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected final getInstructionForEnable()B
    .locals 1

    .prologue
    .line 54
    const/16 v0, -0x48

    return v0
.end method

.method public occurTimeOut()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 147
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TIME_OUT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 148
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getTimeOutCheckManager()Landroid/hardware/contextaware/manager/IContextTimeOutCheck;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/hardware/contextaware/manager/IContextTimeOutCheck;->setTimeOutOccurence(Z)V

    .line 149
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method protected abstract parse(I[B)I
.end method

.method public final parse([BI)I
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p2, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->parse(I[B)I

    move-result v0

    .line 78
    .local v0, "tmpNext":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getTimeOutCheckManager()Landroid/hardware/contextaware/manager/IContextTimeOutCheck;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextTimeOutCheck;->getHandler()Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getTimeOutCheckManager()Landroid/hardware/contextaware/manager/IContextTimeOutCheck;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextTimeOutCheck;->getHandler()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TIME_OUT_CHECK_THREAD_NOT_ALIVE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getTimeOutCheckManager()Landroid/hardware/contextaware/manager/IContextTimeOutCheck;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextTimeOutCheck;->getService()Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    move-result-object v1

    if-nez v1, :cond_3

    .line 89
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TIME_OUT_CHECK_SERVICE_NULL_EXCEPTION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    if-ltz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getTimeOutCheckManager()Landroid/hardware/contextaware/manager/IContextTimeOutCheck;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextTimeOutCheck;->getHandler()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 96
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver()V

    .line 97
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyFaultDetectionResult()V

    goto :goto_0
.end method