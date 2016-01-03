.class public Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
.super Landroid/hardware/scontext/provider/miscprovider/MiscProvider;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    }
.end annotation


# static fields
.field private static final MAXIMUM_WAITING_TIME:I = 0xea60

.field private static final PEDOMETER_VENDOR_ADSP:I = 0x3

.field private static final PEDOMETER_VENDOR_INVENSENSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerImpl"

.field private static mCumulativeInfo:Landroid/os/Bundle;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentInfo:Landroid/os/Bundle;

.field private mDiffInfo:Landroid/os/Bundle;

.field private mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

.field private mGender:I

.field private mHeight:D

.field private mIsParsingNecessary:Z

.field private mIsStarted:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;
    .param p3, "vendor"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/MiscProvider;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    .line 60
    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    .line 64
    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 68
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .line 70
    iput v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mGender:I

    .line 72
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHeight:D

    .line 74
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mWeight:D

    .line 78
    iput-boolean v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    .line 90
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 92
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 93
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 94
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    .line 98
    :cond_0
    :goto_0
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 101
    :cond_1
    return-void

    .line 95
    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 96
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .prologue
    .line 36
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    return-object p1
.end method

.method static synthetic access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    return-object v0
.end method

.method private convertContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 8
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;
    .param p4, "mode2"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    .line 498
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "names1":[Ljava/lang/String;
    invoke-direct {p0, p4}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "names2":[Ljava/lang/String;
    move-object v0, p1

    .line 503
    .local v0, "context":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 504
    .local v4, "size":I
    array-length v5, v2

    array-length v6, v3

    if-gt v5, v6, :cond_0

    .line 505
    array-length v4, v2

    .line 509
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 510
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1

    .line 511
    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 509
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 507
    .end local v1    # "i":I
    :cond_0
    array-length v4, v3

    goto :goto_0

    .line 513
    .restart local v1    # "i":I
    :cond_1
    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 516
    :cond_2
    return-object v0
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 330
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .local v8, "sb":Ljava/lang/StringBuffer;
    const-string v14, "mode = ["

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const-string v14, "Mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 333
    .local v6, "mode":I
    packed-switch v6, :pswitch_data_0

    .line 344
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "], status = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "StepStatus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], calorie = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CalorieDiff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], distance = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "DistanceDiff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], walkingFrequencey = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "WalkingFrequency"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], totalStepCnt = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "TotalStepCountDiff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], walkStepCnt = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "WalkStepCountDiff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], runStepCnt = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "RunStepCountDiff"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], cumulativeTotalStepCnt = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "CumulativeTotalStepCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    const-string v14, "LoggingCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 353
    const-string v14, "LoggingCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 354
    .local v5, "loggingCnt":I
    const-string v14, "TimeStampArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v11

    .line 355
    .local v11, "timestamp":[J
    const-string v14, "CalorieDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 356
    .local v1, "calorie":[D
    const-string v14, "DistanceDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    .line 357
    .local v2, "distance":[D
    const-string v14, "SpeedArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v9

    .line 358
    .local v9, "speed":[D
    const-string v14, "TotalStepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v12

    .line 359
    .local v12, "totalStepCnt":[J
    const-string v14, "WalkStepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v13

    .line 360
    .local v13, "walkStepCnt":[J
    const-string v14, "RunStepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    .line 361
    .local v7, "runStepCnt":[J
    const/4 v14, 0x7

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "TimeStampArray"

    aput-object v15, v10, v14

    const/4 v14, 0x1

    const-string v15, "CalorieDiffArray"

    aput-object v15, v10, v14

    const/4 v14, 0x2

    const-string v15, "DistanceDiffArray step"

    aput-object v15, v10, v14

    const/4 v14, 0x3

    const-string v15, "SpeedArray"

    aput-object v15, v10, v14

    const/4 v14, 0x4

    const-string v15, "TotalStepCountDiffArray"

    aput-object v15, v10, v14

    const/4 v14, 0x5

    const-string v15, "WalkStepCountDiffArray"

    aput-object v15, v10, v14

    const/4 v14, 0x6

    const-string v15, "RunStepCountDiffArray"

    aput-object v15, v10, v14

    .line 365
    .local v10, "str_array":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ", LoggingCnt = ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v14, v10

    if-ge v3, v14, :cond_2

    .line 367
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v10, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 369
    packed-switch v3, :pswitch_data_1

    .line 394
    :goto_3
    add-int/lit8 v14, v5, -0x1

    if-ge v4, v14, :cond_0

    .line 395
    const-string v14, ","

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 335
    .end local v1    # "calorie":[D
    .end local v2    # "distance":[D
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "loggingCnt":I
    .end local v7    # "runStepCnt":[J
    .end local v9    # "speed":[D
    .end local v10    # "str_array":[Ljava/lang/String;
    .end local v11    # "timestamp":[J
    .end local v12    # "totalStepCnt":[J
    .end local v13    # "walkStepCnt":[J
    :pswitch_0
    const-string v14, "normal"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 338
    :pswitch_1
    const-string v14, "logging"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 371
    .restart local v1    # "calorie":[D
    .restart local v2    # "distance":[D
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "loggingCnt":I
    .restart local v7    # "runStepCnt":[J
    .restart local v9    # "speed":[D
    .restart local v10    # "str_array":[Ljava/lang/String;
    .restart local v11    # "timestamp":[J
    .restart local v12    # "totalStepCnt":[J
    .restart local v13    # "walkStepCnt":[J
    :pswitch_2
    aget-wide v14, v11, v4

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 374
    :pswitch_3
    aget-wide v14, v1, v4

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 377
    :pswitch_4
    aget-wide v14, v2, v4

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 380
    :pswitch_5
    aget-wide v14, v9, v4

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 383
    :pswitch_6
    aget-wide v14, v12, v4

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 386
    :pswitch_7
    aget-wide v14, v13, v4

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 389
    :pswitch_8
    aget-wide v14, v7, v4

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 397
    :cond_1
    const-string v14, "]"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 400
    .end local v1    # "calorie":[D
    .end local v2    # "distance":[D
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "loggingCnt":I
    .end local v7    # "runStepCnt":[J
    .end local v9    # "speed":[D
    .end local v10    # "str_array":[Ljava/lang/String;
    .end local v11    # "timestamp":[J
    .end local v12    # "totalStepCnt":[J
    .end local v13    # "walkStepCnt":[J
    :cond_2
    const-string v14, "SContext.MiscProvider.PedometerImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "display() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 369
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;
    .locals 11
    .param p1, "mode"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 404
    const/4 v2, 0x0

    .line 405
    .local v2, "names":[Ljava/lang/String;
    const/16 v4, 0xa

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "CalorieDiff"

    aput-object v4, v1, v6

    const-string v4, "DistanceDiff"

    aput-object v4, v1, v7

    const-string v4, "TotalStepCountDiff"

    aput-object v4, v1, v8

    const-string v4, "WalkStepCountDiff"

    aput-object v4, v1, v9

    const-string v4, "WalkUpStepCountDiff"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    const-string v5, "WalkDownStepCountDiff"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "RunStepCountDiff"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "RunUpStepCountDiff"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "RunDownStepCountDiff"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "UpDownStepCountDiff"

    aput-object v5, v1, v4

    .line 410
    .local v1, "diffNames":[Ljava/lang/String;
    const/16 v4, 0xa

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "Calorie"

    aput-object v4, v3, v6

    const-string v4, "Distance"

    aput-object v4, v3, v7

    const-string v4, "TotalStepCount"

    aput-object v4, v3, v8

    const-string v4, "WalkStepCount"

    aput-object v4, v3, v9

    const-string v4, "WalkUpStepCount"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "WalkDownStepCount"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "RunStepCount"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "RunUpStepCount"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "RunDownStepCount"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "UpDownStepCount"

    aput-object v5, v3, v4

    .line 415
    .local v3, "sumNames":[Ljava/lang/String;
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "CumulativeCalorie"

    aput-object v4, v0, v6

    const-string v4, "CumulativeDistance"

    aput-object v4, v0, v7

    const-string v4, "CumulativeTotalStepCount"

    aput-object v4, v0, v8

    const-string v4, "CumulativeWalkFlatStepCount"

    aput-object v4, v0, v9

    const-string v4, "CumulativeWalkUpStepCount"

    aput-object v4, v0, v10

    const/4 v4, 0x5

    const-string v5, "CumulativeWalkDownStepCount"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "CumulativeRunFlatStepCount"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "CumulativeRunUpStepCount"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "CumulativeRunDownStepCount"

    aput-object v5, v0, v4

    .line 421
    .local v0, "cumulativeNames":[Ljava/lang/String;
    sget-object v4, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_1

    .line 422
    move-object v2, v1

    .line 428
    :cond_0
    :goto_0
    return-object v2

    .line 423
    :cond_1
    sget-object v4, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_2

    .line 424
    move-object v2, v3

    goto :goto_0

    .line 425
    :cond_2
    sget-object v4, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_0

    .line 426
    move-object v2, v0

    goto :goto_0
.end method

.method private getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 10
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;
    .param p4, "mode2"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v5, 0x0

    .line 433
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    move-object v0, v5

    .line 461
    :cond_1
    :goto_0
    return-object v0

    .line 437
    :cond_2
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "names1":[Ljava/lang/String;
    invoke-direct {p0, p4}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "names2":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v0, "context":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move-object v0, v5

    .line 443
    goto :goto_0

    .line 446
    :cond_4
    const/4 v4, 0x0

    .line 447
    .local v4, "size":I
    array-length v5, v2

    array-length v6, v3

    if-gt v5, v6, :cond_5

    .line 448
    array-length v4, v2

    .line 452
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_1

    .line 453
    const/4 v5, 0x2

    if-ge v1, v5, :cond_6

    .line 454
    aget-object v5, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v8, v3, v1

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 452
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 450
    .end local v1    # "i":I
    :cond_5
    array-length v4, v3

    goto :goto_1

    .line 457
    .restart local v1    # "i":I
    :cond_6
    aget-object v5, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    aget-object v8, v3, v1

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3
.end method

.method private getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 7
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode"    # Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    .line 466
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 493
    :cond_0
    return-object v0

    .line 470
    :cond_1
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 475
    move-object v0, p1

    .line 476
    .local v0, "context":Landroid/os/Bundle;
    if-nez p2, :cond_3

    .line 477
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 478
    if-ge v1, v6, :cond_2

    .line 479
    aget-object v3, v2, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 477
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_2
    aget-object v3, v2, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 485
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 486
    if-ge v1, v6, :cond_4

    .line 487
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 485
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 489
    :cond_4
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3
.end method

.method private initializeCurrentInfo()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    .line 273
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 274
    const/4 v3, 0x0

    .line 275
    .local v3, "mode":I
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "WalkingFrequency"

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 276
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "StepStatus"

    invoke-virtual {v6, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v7, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v8, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v6, v7, v8}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 278
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const/4 v7, 0x0

    sget-object v8, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v6, v7, v8}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 280
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_2

    .line 281
    const/16 v6, 0x9

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "CalorieDiffArray"

    aput-object v6, v4, v13

    const-string v6, "DistanceDiffArray"

    aput-object v6, v4, v9

    const-string v6, "TotalStepCountDiffArray"

    aput-object v6, v4, v14

    const/4 v6, 0x3

    const-string v7, "WalkStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "WalkUpStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "WalkDownStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "RunStepCountDiffArray"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "RunUpStepCountDiffArray"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "RunDownStepCountDiffArray"

    aput-object v7, v4, v6

    .line 287
    .local v4, "names":[Ljava/lang/String;
    new-array v2, v9, [J

    .line 288
    .local v2, "longArray":[J
    new-array v0, v9, [D

    .line 289
    .local v0, "doubleArray":[D
    new-array v5, v9, [J

    .line 290
    .local v5, "timestampArray":[J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v5, v13

    .line 292
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 293
    if-ge v1, v14, :cond_0

    .line 294
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    aget-object v7, v4, v1

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 292
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    aget-object v7, v4, v1

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_1

    .line 299
    :cond_1
    const/4 v3, 0x1

    .line 300
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "LoggingCount"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "TimeStampArray"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 302
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "Speed"

    invoke-virtual {v6, v7, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 303
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "StepStatus"

    invoke-virtual {v6, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    .end local v0    # "doubleArray":[D
    .end local v1    # "i":I
    .end local v2    # "longArray":[J
    .end local v4    # "names":[Ljava/lang/String;
    .end local v5    # "timestampArray":[J
    :cond_2
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v7, "Mode"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    return-void
.end method

.method private registerScreenReceiver()V
    .locals 3

    .prologue
    .line 312
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    .line 313
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    return-void
.end method

.method private unregisterScreenReceiver()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mScreenReceiver:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ScreenReceiver;

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method public add()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_1

    .line 112
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->register()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->initializeCurrentInfo()V

    .line 116
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    .line 119
    :cond_2
    iput-boolean v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    .line 120
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->registerScreenReceiver()V

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    .line 122
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->requestToUpdate()V

    goto :goto_0
.end method

.method public handleDiedBinder()V
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v1, v2, :cond_0

    .line 245
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 246
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 248
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public onBinderDied()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    .line 227
    const-string v0, "SContext.MiscProvider.PedometerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() : mExceptionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->remove()V

    goto :goto_0
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    if-eqz p1, :cond_1

    .line 174
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    if-eqz v0, :cond_3

    .line 176
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 180
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 183
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->convertContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 186
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    .line 191
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 193
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 194
    sget-object v0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$ExceptionMode;

    .line 197
    :cond_0
    const-string v0, "LoggingCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    const-string v0, "Mode"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    :goto_0
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 207
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_4

    .line 208
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->display(Landroid/os/Bundle;)V

    .line 213
    :cond_1
    :goto_1
    return-object p1

    .line 200
    :cond_2
    const-string v0, "Mode"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 203
    :cond_3
    iput-boolean v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 204
    const-string v0, "StepStatus"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 210
    :cond_4
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public remove()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    .line 137
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->requestToUpdate()V

    .line 138
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->unregister()V

    .line 142
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->unregisterScreenReceiver()V

    .line 143
    return-void
.end method

.method public requestToUpdate()V
    .locals 3

    .prologue
    .line 260
    const-string v0, "SContext.MiscProvider.PedometerImpl"

    const-string v1, "requestToUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 263
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 265
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->requestToUpdate()V

    goto :goto_0
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 155
    const-string v0, "pedometer_gender"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "pedometer_gender"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mGender:I

    .line 157
    const-string v0, "pedometer_height"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHeight:D

    .line 158
    const-string v0, "pedometer_weight"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mWeight:D

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    iget v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mGender:I

    iget-wide v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mHeight:D

    iget-wide v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mWeight:D

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setProperty(IDD)V

    .line 161
    const-string v0, "SContext.MiscProvider.PedometerImpl"

    const-string v1, "setProperty()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method
