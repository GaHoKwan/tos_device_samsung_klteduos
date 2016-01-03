.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "WifiTransitionNotificationRunner.java"


# instance fields
.field private mDbList:[I

.field private mDbListCount:[I

.field private mIdList:[I

.field private mPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 38
    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mIdList:[I

    .line 41
    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbListCount:[I

    .line 44
    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbList:[I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mPeriod:I

    .line 59
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 250
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 251
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 252
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 240
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 241
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 242
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 229
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 230
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 231
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WIFI_TRANSITION_NOTIFICATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Action"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 6

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "packet":[B
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mIdList:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbListCount:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbList:[I

    if-nez v4, :cond_1

    :cond_0
    move-object v3, v2

    .line 110
    .end local v2    # "packet":[B
    .local v3, "packet":[B
    :goto_0
    return-object v3

    .line 93
    .end local v3    # "packet":[B
    .restart local v2    # "packet":[B
    :cond_1
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mIdList:[I

    array-length v4, v4

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbListCount:[I

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbList:[I

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    new-array v2, v4, [B

    .line 94
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mIdList:[I

    array-length v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 95
    const/4 v1, 0x1

    .line 96
    .local v1, "next":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mIdList:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 97
    add-int v4, v0, v1

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mIdList:[I

    aget v5, v5, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_2
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mIdList:[I

    array-length v4, v4

    add-int/2addr v1, v4

    .line 100
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbListCount:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 101
    add-int v4, v0, v1

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbListCount:[I

    aget v5, v5, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    :cond_3
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbListCount:[I

    array-length v4, v4

    add-int/2addr v1, v4

    .line 104
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbList:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 105
    add-int v4, v0, v1

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbList:[I

    aget v5, v5, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 107
    :cond_4
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbList:[I

    array-length v4, v4

    add-int/2addr v1, v4

    .line 108
    iget v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mPeriod:I

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    move-object v3, v2

    .line 110
    .end local v2    # "packet":[B
    .restart local v3    # "packet":[B
    goto :goto_0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x2b

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 208
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 219
    return-object p0
.end method

.method public final parse([BI)I
    .locals 7
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 183
    move v3, p2

    .line 185
    .local v3, "tmpNext":I
    array-length v5, p1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_0

    .line 186
    sget-object v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 187
    const/4 v5, -0x1

    .line 198
    :goto_0
    return v5

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "names":[Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v1, p1, v3

    .line 192
    .local v1, "id":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v0, p1, v4

    .line 193
    .local v0, "action":I
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 194
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 196
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v5, v3

    .line 198
    goto :goto_0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 9
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x1

    .line 122
    .local v5, "result":Z
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/16 v7, 0x36

    if-ne p1, v7, :cond_2

    .line 124
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v1, v7

    check-cast v1, [I

    .line 125
    .local v1, "idList":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v1

    if-ge v0, v7, :cond_1

    .line 126
    aget v7, v1, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-eq v0, v7, :cond_0

    .line 128
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID List = { "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 132
    iput-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mIdList:[I

    .line 160
    .end local v0    # "i":I
    .end local v1    # "idList":[I
    :goto_1
    return v5

    .line 133
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v7, 0x37

    if-ne p1, v7, :cond_5

    .line 134
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v3, v7

    check-cast v3, [I

    .line 135
    .local v3, "idListArrayCount":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_4

    .line 136
    aget v7, v3, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-eq v0, v7, :cond_3

    .line 138
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 141
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reference ID List Count = { "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 142
    iput-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbListCount:[I

    goto :goto_1

    .line 143
    .end local v0    # "i":I
    .end local v3    # "idListArrayCount":[I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_5
    const/16 v7, 0x38

    if-ne p1, v7, :cond_8

    .line 144
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v2, v7

    check-cast v2, [I

    .line 145
    .local v2, "idListArray":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v7, v2

    if-ge v0, v7, :cond_7

    .line 146
    aget v7, v2, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v0, v7, :cond_6

    .line 148
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 151
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reference ID List Array = { "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 152
    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mDbList:[I

    goto/16 :goto_1

    .line 153
    .end local v0    # "i":I
    .end local v2    # "idListArray":[I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_8
    const/16 v7, 0x39

    if-ne p1, v7, :cond_9

    .line 154
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 155
    .local v4, "period":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Period = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 156
    iput v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/WifiTransitionNotificationRunner;->mPeriod:I

    goto/16 :goto_1

    .line 158
    .end local v4    # "period":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1
.end method
