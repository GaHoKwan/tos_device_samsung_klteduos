.class Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
.super Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.source "PedometerAdspImpl.java"


# static fields
.field private static final BATCH_LATENCY_0:I = 0x0

.field private static final BATCH_LATENCY_20MIN:I = 0x7270e00

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerAdspImpl"


# instance fields
.field private mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

.field private mEventArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsBarometerAvailable:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mMaxDelay:I

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mEventArrayList:Ljava/util/ArrayList;

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mMaxDelay:I

    .line 35
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    invoke-direct {v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;-><init>()V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    .line 284
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;

    invoke-direct {v1, p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 41
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 42
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 43
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensor:Landroid/hardware/Sensor;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.sensor.barometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mIsBarometerAvailable:Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    .prologue
    .line 17
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mEventArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 17
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mEventArrayList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->parseEvent(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)Landroid/hardware/scontext/provider/EventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    .prologue
    .line 17
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;Landroid/hardware/SensorEvent;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->parseEvent(Landroid/hardware/SensorEvent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private parseEvent(Landroid/hardware/SensorEvent;)Landroid/os/Bundle;
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, "context":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 228
    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    .line 229
    .local v2, "prevInfo":Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->convertPedometerInfo(Landroid/hardware/SensorEvent;)Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    .line 230
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    invoke-direct {v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;-><init>()V

    .line 231
    .local v1, "diffInfo":Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    iget-wide v5, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    .line 232
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    iget-wide v5, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    .line 233
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    iget-wide v5, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    .line 234
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    iget-wide v5, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    .line 235
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    iget-wide v5, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    .line 236
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    iget-wide v5, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    .line 237
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    iget-wide v5, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    .line 238
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    iget-wide v5, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    sub-double/2addr v3, v5

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    .line 239
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    iget-wide v5, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    sub-double/2addr v3, v5

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    .line 240
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->speed:D

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->speed:D

    .line 241
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->status:I

    iput v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->status:I

    .line 242
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    iget-wide v3, v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkingFrequency:D

    iput-wide v3, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkingFrequency:D

    .line 244
    const-string v3, "Mode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string v3, "StepStatus"

    iget v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v3, "CalorieDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 247
    const-string v3, "DistanceDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 248
    const-string v3, "Speed"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->speed:D

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 249
    const-string v3, "WalkingFrequency"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkingFrequency:D

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 250
    const-string v3, "TotalStepCountDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 251
    const-string v3, "WalkStepCountDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 252
    const-string v3, "WalkUpStepCountDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    const-string v3, "WalkDownStepCountDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 254
    const-string v3, "RunStepCountDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 255
    const-string v3, "RunUpStepCountDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 256
    const-string v3, "RunDownStepCountDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 257
    const-string v3, "UpDownStepCountDiff"

    iget-wide v4, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    iget-wide v6, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 261
    .end local v1    # "diffInfo":Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    .end local v2    # "prevInfo":Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    :cond_0
    return-object v0
.end method

.method private parseEvent(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/SensorEvent;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v5, "context":Landroid/os/Bundle;
    if-eqz p1, :cond_8

    .line 95
    const-wide/16 v14, 0x0

    .line 96
    .local v14, "minutes":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v6, "countList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_2

    .line 98
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/hardware/SensorEvent;

    move-object/from16 v0, v26

    iget-wide v11, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 99
    .local v11, "eventTimeStamp":J
    if-nez v13, :cond_1

    .line 100
    const-wide/16 v26, 0x1770

    div-long v14, v11, v26

    .line 101
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const-wide/16 v26, 0x1770

    div-long v26, v11, v26

    const-wide/16 v28, 0x1

    add-long v28, v28, v14

    cmp-long v26, v26, v28

    if-nez v26, :cond_0

    .line 104
    const-wide/16 v26, 0x1

    add-long v14, v14, v26

    .line 105
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    .end local v11    # "eventTimeStamp":J
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 112
    .local v7, "dataSize":I
    new-array v0, v7, [J

    move-object/from16 v21, v0

    .line 113
    .local v21, "timestampArray":[J
    new-array v0, v7, [D

    move-object/from16 v20, v0

    .line 115
    .local v20, "speedArray":[D
    new-array v0, v7, [J

    move-object/from16 v22, v0

    .line 116
    .local v22, "totalStepCountArray":[J
    new-array v0, v7, [J

    move-object/from16 v24, v0

    .line 117
    .local v24, "walkFlatStepCountArray":[J
    new-array v0, v7, [J

    move-object/from16 v25, v0

    .line 118
    .local v25, "walkUpStepCountArray":[J
    new-array v0, v7, [J

    move-object/from16 v23, v0

    .line 119
    .local v23, "walkDownStepCountArray":[J
    new-array v0, v7, [J

    move-object/from16 v18, v0

    .line 120
    .local v18, "runFlatStepCountArray":[J
    new-array v0, v7, [J

    move-object/from16 v19, v0

    .line 121
    .local v19, "runUpStepCountArray":[J
    new-array v0, v7, [J

    move-object/from16 v17, v0

    .line 122
    .local v17, "runDownStepCountArray":[J
    new-array v3, v7, [D

    .line 123
    .local v3, "calorieArray":[D
    new-array v9, v7, [D

    .line 125
    .local v9, "distanceArray":[D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v16, v0

    .line 127
    .local v16, "prevInfo":Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    const/4 v4, 0x0

    .line 128
    .local v4, "cnt":I
    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_7

    .line 129
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/SensorEvent;

    .line 130
    .local v10, "event":Landroid/hardware/SensorEvent;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    if-ne v13, v0, :cond_4

    .line 131
    iget-wide v0, v10, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v26, v0

    aput-wide v26, v21, v4

    .line 128
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 132
    :cond_4
    add-int/lit8 v26, v4, 0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_3

    .line 133
    if-lez v4, :cond_5

    .line 134
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v22, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    .line 135
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v24, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    .line 136
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v25, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    .line 137
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v23, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    .line 138
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v18, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    .line 139
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v19, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    .line 140
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v17, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    .line 141
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v3, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    .line 142
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v9, v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    goto :goto_3

    .line 144
    :cond_5
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    aput-wide v26, v22, v4

    .line 145
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    aput-wide v26, v24, v4

    .line 147
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    aput-wide v26, v18, v4

    .line 149
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    aput-wide v26, v3, v4

    .line 150
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x4

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    aput-wide v26, v9, v4

    .line 151
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x5

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v20, v4

    .line 153
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mIsBarometerAvailable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 154
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x5

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    aput-wide v26, v25, v4

    .line 156
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x6

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    aput-wide v26, v23, v4

    .line 158
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x7

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    aput-wide v26, v19, v4

    .line 160
    iget-object v0, v10, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v26, v0

    const/16 v27, 0x8

    aget v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    aput-wide v26, v17, v4

    .line 163
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 168
    .end local v10    # "event":Landroid/hardware/SensorEvent;
    :cond_7
    new-instance v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    invoke-direct {v8}, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;-><init>()V

    .line 169
    .local v8, "diffInfo":Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    .line 170
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    .line 172
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    .line 173
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v23, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    .line 175
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v18, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    .line 176
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v19, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    .line 177
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v17, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    .line 178
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v3, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    .line 179
    add-int/lit8 v26, v4, -0x1

    aget-wide v26, v9, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, -0x1

    aget-wide v27, v25, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, -0x1

    aget-wide v27, v24, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, -0x1

    aget-wide v27, v25, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, -0x1

    aget-wide v27, v23, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, -0x1

    aget-wide v27, v18, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, -0x1

    aget-wide v27, v19, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, -0x1

    aget-wide v27, v17, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, -0x1

    aget-wide v27, v3, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mCurrentInfo:Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    move-object/from16 v26, v0

    add-int/lit8 v27, v4, -0x1

    aget-wide v27, v9, v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    .line 191
    const-string v26, "LoggingCount"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v26, "TimeStampArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 193
    const-string v26, "SpeedArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 194
    const-string v26, "CalorieDiffArray"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 195
    const-string v26, "DistanceDiffArray"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 196
    const-string v26, "SpeedArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 197
    const-string v26, "TotalStepCountDiffArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 198
    const-string v26, "WalkStepCountDiffArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 199
    const-string v26, "WalkUpStepCountDiffArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 200
    const-string v26, "WalkDownStepCountDiffArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 201
    const-string v26, "RunStepCountDiffArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 202
    const-string v26, "RunUpStepCountDiffArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 203
    const-string v26, "RunDownStepCountDiffArray"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 205
    const-string v26, "Mode"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v26, "StepStatus"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v26, "Speed"

    const-wide/16 v27, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 208
    const-string v26, "WalkingFrequency"

    const-wide/16 v27, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 210
    const-string v26, "CalorieDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 211
    const-string v26, "DistanceDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 212
    const-string v26, "TotalStepCountDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    const-string v26, "WalkStepCountDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    const-string v26, "WalkUpStepCountDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    const-string v26, "WalkDownStepCountDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 216
    const-string v26, "RunStepCountDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    const-string v26, "RunUpStepCountDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    const-string v26, "RunDownStepCountDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 219
    const-string v26, "UpDownStepCountDiff"

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    move-wide/from16 v27, v0

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    iget-wide v0, v8, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 222
    .end local v3    # "calorieArray":[D
    .end local v4    # "cnt":I
    .end local v6    # "countList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "dataSize":I
    .end local v8    # "diffInfo":Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    .end local v9    # "distanceArray":[D
    .end local v13    # "i":I
    .end local v14    # "minutes":J
    .end local v16    # "prevInfo":Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    .end local v17    # "runDownStepCountArray":[J
    .end local v18    # "runFlatStepCountArray":[J
    .end local v19    # "runUpStepCountArray":[J
    .end local v20    # "speedArray":[D
    .end local v21    # "timestampArray":[J
    .end local v22    # "totalStepCountArray":[J
    .end local v23    # "walkDownStepCountArray":[J
    .end local v24    # "walkFlatStepCountArray":[J
    .end local v25    # "walkUpStepCountArray":[J
    :cond_8
    return-object v5
.end method


# virtual methods
.method convertPedometerInfo(Landroid/hardware/SensorEvent;)Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 265
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;

    invoke-direct {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;-><init>()V

    .line 267
    .local v0, "info":Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->totalStepCnt:J

    .line 268
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkFlatStepCnt:J

    .line 269
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runFlatStepCnt:J

    .line 270
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    float-to-double v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->calorie:D

    .line 271
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    float-to-double v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->distance:D

    .line 272
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-double v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->speed:D

    .line 273
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    float-to-double v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkingFrequency:D

    .line 274
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->status:I

    .line 275
    iget-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mIsBarometerAvailable:Z

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runUpStepCnt:J

    .line 277
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->runDownStepCnt:J

    .line 278
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkUpStepCnt:J

    .line 279
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInfo;->walkDownStepCnt:J

    .line 281
    :cond_0
    return-object v0
.end method

.method register()Z
    .locals 6

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mMaxDelay:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :cond_0
    return v0
.end method

.method requestToUpdate()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    .line 77
    :cond_0
    return-void
.end method

.method setLoggingMode(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mEventArrayList:Ljava/util/ArrayList;

    .line 84
    const v0, 0x7270e00

    iput v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mMaxDelay:I

    .line 88
    :goto_0
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mMaxDelay:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    .line 90
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mMaxDelay:I

    goto :goto_0
.end method

.method setProperty(IDD)V
    .locals 0
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    .line 68
    invoke-super/range {p0 .. p5}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setProperty(IDD)V

    .line 69
    return-void
.end method

.method unregister()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 63
    return-void
.end method
