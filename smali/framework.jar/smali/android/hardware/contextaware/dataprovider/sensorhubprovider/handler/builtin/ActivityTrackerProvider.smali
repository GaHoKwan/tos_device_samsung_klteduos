.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActivityTrackerProvider.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 53
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected final byteArrayToLong([B)J
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    const/16 v4, 0x8

    .line 271
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 272
    .local v0, "byte_buf":Ljava/nio/ByteBuffer;
    new-array v1, v4, [B

    .line 273
    .local v1, "change":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 274
    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 277
    rsub-int/lit8 v3, v2, 0x7

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 280
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 281
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    return-wide v3
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->disable()V

    .line 161
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    .line 162
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->enable()V

    .line 149
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 150
    return-void
.end method

.method protected getAccuracyType()B
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method protected getActivityType()B
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method protected getBatchingPeriod()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OperationMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ActivityType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 87
    const/16 v6, 0x8

    new-array v3, v6, [B

    .line 89
    .local v3, "packet":[B
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v6

    aput-byte v6, v3, v8

    .line 91
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()B

    move-result v6

    if-gez v6, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 111
    .end local v3    # "packet":[B
    :goto_0
    return-object v3

    .line 94
    .restart local v3    # "packet":[B
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()B

    move-result v6

    aput-byte v6, v3, v9

    .line 95
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v6

    aput-byte v6, v3, v7

    .line 97
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v6

    invoke-static {v6, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 99
    .local v0, "arBatchingPeriod":[B
    const/4 v6, 0x3

    aget-byte v7, v0, v8

    aput-byte v7, v3, v6

    .line 100
    const/4 v6, 0x4

    aget-byte v7, v0, v9

    aput-byte v7, v3, v6

    .line 102
    new-instance v6, Ljava/util/SimpleTimeZone;

    const-string v7, "GMT"

    invoke-direct {v6, v8, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 104
    .local v5, "temp":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 105
    .local v1, "hour":I
    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 106
    .local v2, "minute":I
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 107
    .local v4, "second":I
    const/4 v6, 0x5

    int-to-byte v7, v1

    aput-byte v7, v3, v6

    .line 108
    const/4 v6, 0x6

    int-to-byte v7, v2

    aput-byte v7, v3, v6

    .line 109
    const/4 v6, 0x7

    int-to-byte v7, v4

    aput-byte v7, v3, v6

    goto :goto_0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    const/4 v2, 0x5

    new-array v1, v2, [B

    .line 124
    .local v1, "packet":[B
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v2

    aput-byte v2, v1, v3

    .line 126
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()B

    move-result v2

    if-gez v2, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 137
    .end local v1    # "packet":[B
    :goto_0
    return-object v1

    .line 129
    .restart local v1    # "packet":[B
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()B

    move-result v2

    aput-byte v2, v1, v4

    .line 130
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v2

    aput-byte v2, v1, v5

    .line 132
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v2

    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 134
    .local v0, "arBatchingPeriod":[B
    const/4 v2, 0x3

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    .line 135
    const/4 v2, 0x4

    aget-byte v3, v0, v4

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x1a

    return v0
.end method

.method protected abstract getModeType()B
.end method

.method public parse([BI)I
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 199
    move v4, p2

    .line 201
    .local v4, "tmpNext":I
    array-length v6, p1

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x4

    if-gez v6, :cond_0

    .line 202
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 203
    const/4 v6, -0x1

    .line 225
    :goto_0
    return v6

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "names":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 210
    const/4 v6, 0x4

    new-array v1, v6, [B

    .line 211
    .local v1, "timeTemp":[B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v6, p1, v4

    aput-byte v6, v1, v9

    .line 212
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v6, p1, v5

    aput-byte v6, v1, v10

    .line 213
    const/4 v6, 0x2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v7, p1, v4

    aput-byte v7, v1, v6

    .line 214
    const/4 v6, 0x3

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v7, p1, v5

    aput-byte v7, v1, v6

    .line 215
    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->byteArrayToLong([B)J

    move-result-wide v2

    .line 216
    .local v2, "time_tempdata":J
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v10

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 219
    invoke-virtual {p0, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->parseData([BI)I

    move-result v4

    .line 221
    if-lez v4, :cond_1

    .line 222
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver()V

    :cond_1
    move v6, v4

    .line 225
    goto :goto_0
.end method

.method protected parseData([BI)I
    .locals 7
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 238
    move v3, p2

    .line 240
    .local v3, "tmpNext":I
    array-length v5, p1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_0

    .line 241
    sget-object v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 242
    const/4 v5, -0x1

    .line 253
    :goto_0
    return v5

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "names":[Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v1, p1, v3

    .line 248
    .local v1, "activityType":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 250
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v0, p1, v4

    .line 251
    .local v0, "accuracy":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move v5, v3

    .line 253
    goto :goto_0
.end method
