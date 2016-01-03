.class public Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$1;,
        Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;,
        Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;,
        Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContext.CaeProvider.PedometerImpl"

.field private static mCumulativeInfo:Landroid/os/Bundle;


# instance fields
.field private final MAXIMUM_WAITING_TIME:I

.field private final mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

.field private mCurrentInfo:Landroid/os/Bundle;

.field private mDiffInfo:Landroid/os/Bundle;

.field private mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

.field private mGender:I

.field private mHeight:D

.field private mIsParsingNecessary:Z

.field private mIsStarted:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    const/4 v2, 0x1

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    .line 46
    const v0, 0xea60

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->MAXIMUM_WAITING_TIME:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 60
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    .line 62
    iput v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mGender:I

    .line 64
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mHeight:D

    .line 66
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mWeight:D

    .line 68
    iput-boolean v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    .line 80
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Landroid/hardware/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 81
    iput-object p2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 82
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 83
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;)Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;)Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    return-object p1
.end method

.method private getStringNames(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;
    .locals 11
    .param p1, "mode"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 253
    const/4 v2, 0x0

    .line 254
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

    .line 259
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

    .line 264
    .local v3, "sumNames":[Ljava/lang/String;
    const/16 v4, 0xa

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

    const-string v5, "CumulativeRunUpStepCount"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "CumulativeRunDownStepCount"

    aput-object v5, v0, v4

    .line 271
    .local v0, "cumulativeNames":[Ljava/lang/String;
    sget-object v4, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_1

    .line 272
    move-object v2, v1

    .line 278
    :cond_0
    :goto_0
    return-object v2

    .line 273
    :cond_1
    sget-object v4, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->SUM:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_2

    .line 274
    move-object v2, v3

    goto :goto_0

    .line 275
    :cond_2
    sget-object v4, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    if-ne p1, v4, :cond_0

    .line 276
    move-object v2, v0

    goto :goto_0
.end method

.method private getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 10
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode1"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;
    .param p4, "mode2"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v5, 0x0

    .line 283
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    move-object v0, v5

    .line 311
    :cond_1
    :goto_0
    return-object v0

    .line 287
    :cond_2
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "names1":[Ljava/lang/String;
    invoke-direct {p0, p4}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "names2":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "context":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move-object v0, v5

    .line 293
    goto :goto_0

    .line 296
    :cond_4
    const/4 v4, 0x0

    .line 297
    .local v4, "size":I
    array-length v5, v2

    array-length v6, v3

    if-gt v5, v6, :cond_5

    .line 298
    array-length v4, v2

    .line 302
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_1

    .line 303
    const/4 v5, 0x2

    if-ge v1, v5, :cond_6

    .line 304
    aget-object v5, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v8, v3, v1

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 302
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 300
    .end local v1    # "i":I
    :cond_5
    array-length v4, v3

    goto :goto_1

    .line 307
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

.method private getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;
    .locals 7
    .param p1, "context1"    # Landroid/os/Bundle;
    .param p2, "context2"    # Landroid/os/Bundle;
    .param p3, "mode"    # Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    .line 316
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 343
    :cond_0
    return-object v0

    .line 320
    :cond_1
    invoke-direct {p0, p3}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getStringNames(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)[Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 325
    move-object v0, p1

    .line 326
    .local v0, "context":Landroid/os/Bundle;
    if-nez p2, :cond_3

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 328
    if-ge v1, v6, :cond_2

    .line 329
    aget-object v3, v2, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 327
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_2
    aget-object v3, v2, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 335
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 336
    if-ge v1, v6, :cond_4

    .line 337
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 335
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 339
    :cond_4
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3
.end method

.method private initializeCurrentInfo()V
    .locals 4

    .prologue
    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 245
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "Mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "WalkingFrequency"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 247
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const-string v1, "StepStatus"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 249
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 250
    return-void
.end method


# virtual methods
.method public add()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 97
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    .line 100
    invoke-direct {p0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->initializeCurrentInfo()V

    .line 101
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->add()V

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public handleDiedBinder()V
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    if-ne v1, v2, :cond_0

    .line 216
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 217
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$CustomTimer;-><init>(Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 219
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public onBinderDied()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    .line 198
    const-string v0, "SContext.CaeProvider.PedometerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied() : mExceptionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->KILL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->remove()V

    goto :goto_0
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 152
    if-eqz p1, :cond_1

    .line 153
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    if-eqz v0, :cond_4

    .line 155
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    .line 159
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCumulativeInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->CUMULATIVE:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 161
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    if-eq v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getSumOfContexts(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    .line 166
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mDiffInfo:Landroid/os/Bundle;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object p1

    .line 168
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    sget-object v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->RESUME:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 169
    sget-object v0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;->NORMAL:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mExceptionMode:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$ExceptionMode;

    .line 172
    :cond_0
    const-string v0, "LoggingCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    const-string v0, "Mode"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    :goto_0
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 182
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    if-nez v0, :cond_2

    .line 183
    const/4 p1, 0x0

    .line 185
    :cond_2
    return-object p1

    .line 175
    :cond_3
    const-string v0, "Mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 179
    :cond_4
    iput-boolean v3, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    goto :goto_1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    .line 115
    invoke-virtual {p0}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->requestToUpdate()V

    .line 116
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->remove()V

    .line 117
    return-void
.end method

.method public requestToUpdate()V
    .locals 3

    .prologue
    .line 231
    const-string v0, "SContext.CaeProvider.PedometerImpl"

    const-string v1, "requestToUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsParsingNecessary:Z

    .line 234
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;->DIFF:Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->getUpdatedContext(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/hardware/scontext/provider/caeprovider/PedometerImpl$InfoMode;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    .line 236
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mCurrentInfo:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->requestToUpdate()V

    goto :goto_0
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 129
    const-string v0, "pedometer_gender"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "pedometer_gender"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mGender:I

    .line 131
    const-string v0, "pedometer_height"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mHeight:D

    .line 132
    const-string v0, "pedometer_weight"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mWeight:D

    .line 133
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v2, 0x6

    iget v3, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mGender:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 135
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v2, 0x5

    iget-wide v3, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mHeight:D

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    .line 137
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v2, 0x4

    iget-wide v3, p0, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;->mWeight:D

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    .line 139
    const-string v0, "SContext.CaeProvider.PedometerImpl"

    const-string v1, "setProperty()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    return-void
.end method
