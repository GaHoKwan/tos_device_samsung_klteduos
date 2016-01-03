.class Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
.super Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;,
        Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    }
.end annotation


# static fields
.field private static final PATH_CADENCE:Ljava/lang/String; = "/shealth_cadence"

.field private static final PATH_CADENCE_ENABLE:Ljava/lang/String; = "/shealth_cadence_enable"

.field private static final PATH_CADENCE_INTERRUPT:Ljava/lang/String; = "/event_shealth_int"

.field private static final PATH_FLUSH_CADENCE:Ljava/lang/String; = "/shealth_flush_cadence"

.field private static final PATH_PREFIX:Ljava/lang/String; = "/sys/bus/iio/devices/iio:device"

.field private static final PATH_STEPCOUNT:Ljava/lang/String; = "/pedometer_steps"

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.PedometerInvenImpl"


# instance fields
.field private mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

.field private final mIsBarometerAvailable:Z

.field private mIsStarted:Z

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

.field private final mPrefix:Ljava/lang/String;

.field private mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeStamp:[J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    .line 52
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 54
    iput-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 58
    iput-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    .line 60
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    .line 64
    sget-object v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 368
    new-instance v3, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;

    invoke-direct {v3, p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 70
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 71
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 72
    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    .line 73
    new-instance v3, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    invoke-direct {v3}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;-><init>()V

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 75
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.sensor.barometer"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    .line 76
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->getDeviceNode()I

    move-result v0

    .line 77
    .local v0, "node":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v2, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    .line 80
    return-void

    .line 60
    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    return-object v0
.end method

.method static synthetic access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
    .param p1, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .prologue
    .line 26
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    return-object p1
.end method

.method private getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;
    .locals 31
    .param p1, "mode"    # I
    .param p2, "walkCadence"    # [J
    .param p3, "runCadence"    # [J
    .param p4, "dataSize"    # I
    .param p5, "interval"    # J
    .param p7, "timeStampArray"    # [J

    .prologue
    .line 189
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v22, "context":Landroid/os/Bundle;
    move/from16 v0, p4

    new-array v11, v0, [J

    .line 192
    .local v11, "totalStepCountArray":[J
    move/from16 v0, p4

    new-array v9, v0, [J

    .line 193
    .local v9, "walkFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v29, v0

    .line 194
    .local v29, "walkUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v27, v0

    .line 195
    .local v27, "walkDownStepCountArray":[J
    move/from16 v0, p4

    new-array v10, v0, [J

    .line 196
    .local v10, "runFlatStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 197
    .local v25, "runUpStepCountArray":[J
    move/from16 v0, p4

    new-array v0, v0, [J

    move-object/from16 v23, v0

    .line 198
    .local v23, "runDownStepCountArray":[J
    move/from16 v0, p4

    new-array v12, v0, [D

    .line 199
    .local v12, "calorieArray":[D
    move/from16 v0, p4

    new-array v13, v0, [D

    .line 200
    .local v13, "distanceArray":[D
    move/from16 v0, p4

    new-array v14, v0, [D

    .line 201
    .local v14, "speedArray":[D
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v17, v0

    .line 202
    .local v17, "totalStepCountTemp":[J
    const/4 v2, 0x1

    new-array v15, v2, [J

    .line 203
    .local v15, "walkFlatStepCountTemp":[J
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v30, v0

    .line 204
    .local v30, "walkUpStepCountTemp":[J
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v28, v0

    .line 205
    .local v28, "walkDownStepCountTemp":[J
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v16, v0

    .line 206
    .local v16, "runFlatStepCountTemp":[J
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v26, v0

    .line 207
    .local v26, "runUpStepCountTemp":[J
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v24, v0

    .line 208
    .local v24, "runDownStepCountTemp":[J
    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v18, v0

    .line 209
    .local v18, "calorieTemp":[D
    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v19, v0

    .line 210
    .local v19, "distanceTemp":[D
    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v21, v0

    .line 211
    .local v21, "walkingFrequencyTemp":[D
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 213
    .local v20, "statusTemp":[I
    if-eqz p2, :cond_0

    if-nez p3, :cond_3

    .line 214
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v20, v2

    .line 225
    :cond_1
    :goto_0
    const-string v2, "Mode"

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v2, "StepStatus"

    const/4 v3, 0x0

    aget v3, v20, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v2, "CalorieDiff"

    const/4 v3, 0x0

    aget-wide v3, v18, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 228
    const-string v2, "DistanceDiff"

    const/4 v3, 0x0

    aget-wide v3, v19, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 229
    const-string v2, "Speed"

    const/4 v3, 0x0

    aget-wide v3, v14, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 230
    const-string v2, "WalkingFrequency"

    const/4 v3, 0x0

    aget-wide v3, v21, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 231
    const-string v2, "TotalStepCountDiff"

    const/4 v3, 0x0

    aget-wide v3, v17, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    const-string v2, "WalkStepCountDiff"

    const/4 v3, 0x0

    aget-wide v3, v15, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 233
    const-string v2, "WalkUpStepCountDiff"

    const/4 v3, 0x0

    aget-wide v3, v30, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 234
    const-string v2, "WalkDownStepCountDiff"

    const/4 v3, 0x0

    aget-wide v3, v28, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 235
    const-string v2, "RunStepCountDiff"

    const/4 v3, 0x0

    aget-wide v3, v16, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 236
    const-string v2, "RunUpStepCountDiff"

    const/4 v3, 0x0

    aget-wide v3, v26, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 237
    const-string v2, "RunDownStepCountDiff"

    const/4 v3, 0x0

    aget-wide v3, v24, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 238
    const-string v2, "UpDownStepCountDiff"

    const/4 v3, 0x0

    aget-wide v3, v30, v3

    const/4 v5, 0x0

    aget-wide v5, v28, v5

    add-long/2addr v3, v5

    const/4 v5, 0x0

    aget-wide v5, v26, v5

    add-long/2addr v3, v5

    const/4 v5, 0x0

    aget-wide v5, v24, v5

    add-long/2addr v3, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 240
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 241
    const-string v2, "LoggingCount"

    move-object/from16 v0, v22

    move/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v2, "TimeStampArray"

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 243
    const-string v2, "CalorieDiffArray"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v12}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 244
    const-string v2, "DistanceDiffArray"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 245
    const-string v2, "SpeedArray"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v14}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 246
    const-string v2, "TotalStepCountDiffArray"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 247
    const-string v2, "WalkStepCountDiffArray"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 248
    const-string v2, "WalkUpStepCountDiffArray"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 249
    const-string v2, "WalkDownStepCountDiffArray"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 250
    const-string v2, "RunStepCountDiffArray"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 251
    const-string v2, "RunUpStepCountDiffArray"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 252
    const-string v2, "RunDownStepCountDiffArray"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 253
    const-string v2, "Speed"

    const-wide/16 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 254
    const-string v2, "StepStatus"

    const/4 v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    :cond_2
    return-object v22

    .line 216
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    if-nez v2, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-virtual/range {v2 .. v21}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V

    goto/16 :goto_0
.end method

.method private getDeviceNode()I
    .locals 5

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 354
    .local v0, "f":Ljava/io/File;
    const/4 v1, 0x0

    .line 355
    .local v1, "node":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 356
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    const-string v3, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 359
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/shealth_cadence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    :cond_0
    return v1

    .line 363
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .locals 30
    .param p1, "interruptMode"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 260
    if-nez p2, :cond_1

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v24, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    aput-wide v25, v2, v24

    .line 264
    const-string v2, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "parseCadence() : Interrupt Mode = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", mTimeStamp[0] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-wide v25, v25, v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", mTimeStamp[1] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-wide v25, v25, v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v4, 0x0

    .line 268
    .local v4, "walkStepCount":[J
    const/4 v5, 0x0

    .line 269
    .local v5, "runStepCount":[J
    const/4 v9, 0x0

    .line 270
    .local v9, "timeStamp":[J
    const-wide/16 v7, 0x0

    .line 271
    .local v7, "interval":J
    const/4 v6, 0x0

    .line 272
    .local v6, "dataSize":I
    const/4 v3, 0x0

    .line 273
    .local v3, "mode":I
    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 274
    const/4 v3, 0x0

    .line 275
    const/4 v6, 0x1

    .line 343
    :cond_2
    :goto_1
    if-lez v6, :cond_0

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->getCalcultatedData(I[J[JIJ[J)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v0, v1, v2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 276
    :cond_3
    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_4

    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 278
    :cond_4
    const/4 v3, 0x0

    .line 279
    const/4 v6, 0x1

    .line 280
    new-array v4, v6, [J

    .line 281
    new-array v5, v6, [J

    .line 282
    const/4 v2, 0x0

    const-wide/16 v24, 0x0

    aput-wide v24, v4, v2

    .line 283
    const/4 v2, 0x0

    const-wide/16 v24, 0x0

    aput-wide v24, v5, v2

    .line 284
    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 285
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 287
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v24, 0x1

    aget-wide v24, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v26, 0x0

    aget-wide v26, v2, v26

    sub-long v7, v24, v26

    goto :goto_1

    .line 289
    :cond_6
    sget-object v2, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 290
    const/4 v3, 0x1

    .line 291
    new-instance v23, Ljava/util/StringTokenizer;

    const-string v2, ","

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v23, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 294
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    .line 295
    .local v21, "strToken":Ljava/lang/String;
    const-string v2, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 296
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 302
    .end local v21    # "strToken":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v24, 0x3

    move/from16 v0, v24

    if-lt v2, v0, :cond_0

    .line 306
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 307
    .local v17, "start_mpu_nano_time":J
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 308
    .local v11, "end_mpu_nano_time":J
    sub-long v24, v11, v17

    const-wide/32 v26, 0xf4240

    div-long v24, v24, v26

    const-wide/32 v26, 0xea60

    rem-long v7, v24, v26

    .line 309
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 310
    const/4 v2, 0x1

    if-lt v6, v2, :cond_8

    const/16 v2, 0x14

    if-le v6, v2, :cond_9

    .line 311
    :cond_8
    const-string v2, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "the size of cadence is wrong. : size = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v24, 0x1

    aget-wide v24, v2, v24

    sub-long v26, v11, v17

    const-wide/32 v28, 0xf4240

    div-long v26, v26, v28

    sub-long v19, v24, v26

    .line 316
    .local v19, "start_time":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v24, 0x0

    aget-wide v24, v2, v24

    cmp-long v2, v19, v24

    if-gez v2, :cond_a

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v24, 0x0

    aget-wide v24, v2, v24

    const-wide/16 v26, 0x1

    add-long v19, v24, v26

    .line 319
    :cond_a
    const v2, 0xea60

    add-int/lit8 v24, v6, -0x1

    mul-int v2, v2, v24

    int-to-long v0, v2

    move-wide/from16 v24, v0

    add-long v24, v24, v19

    const-wide/32 v26, 0xea60

    div-long v24, v24, v26

    const-wide/32 v26, 0xea60

    mul-long v13, v24, v26

    .line 320
    .local v13, "end_time":J
    new-array v4, v6, [J

    .line 321
    new-array v5, v6, [J

    .line 322
    new-array v9, v6, [J

    .line 324
    add-int/lit8 v10, v6, -0x1

    .line 325
    .local v10, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-ge v15, v6, :cond_2

    .line 326
    add-int/lit8 v2, v15, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 327
    .local v22, "temp":I
    shr-int/lit8 v2, v22, 0x8

    int-to-long v0, v2

    move-wide/from16 v24, v0

    aput-wide v24, v5, v10

    .line 328
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    int-to-long v0, v2

    move-wide/from16 v24, v0

    aput-wide v24, v4, v10

    .line 329
    if-nez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    sget-object v24, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    move-object/from16 v0, v24

    if-eq v2, v0, :cond_c

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v24, 0x0

    aget-wide v24, v2, v24

    cmp-long v2, v19, v24

    if-gez v2, :cond_b

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v24, 0x0

    aget-wide v24, v2, v24

    const-wide/16 v26, 0x1

    add-long v24, v24, v26

    aput-wide v24, v9, v10

    .line 340
    :goto_4
    add-int/lit8 v10, v10, -0x1

    .line 325
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 333
    :cond_b
    aput-wide v19, v9, v10

    goto :goto_4

    .line 335
    :cond_c
    add-int/lit8 v2, v6, -0x1

    if-ne v10, v2, :cond_d

    .line 336
    aput-wide v13, v9, v10

    goto :goto_4

    .line 338
    :cond_d
    add-int/lit8 v2, v10, 0x1

    aget-wide v24, v9, v2

    const-wide/32 v26, 0xea60

    sub-long v24, v24, v26

    aput-wide v24, v9, v10

    goto :goto_4
.end method


# virtual methods
.method register()Z
    .locals 5

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;)V

    iput-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    .line 89
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    invoke-virtual {v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->start()V

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 91
    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 92
    const/4 v0, 0x1

    .line 94
    :cond_0
    return v0
.end method

.method requestToUpdate()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, "cadFile":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [C

    .line 117
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/shealth_flush_cadence"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .local v2, "cadFile":Ljava/io/BufferedReader;
    if-eqz v2, :cond_0

    .line 119
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .line 120
    .local v4, "len":I
    const/4 v6, 0x0

    add-int/lit8 v7, v4, -0x1

    invoke-static {v0, v6, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "strCad":Ljava/lang/String;
    const-string v6, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestToUpdate() : CAD = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v6, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    invoke-direct {p0, v6, v5}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .end local v4    # "len":I
    .end local v5    # "strCad":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v7, v7, v9

    aput-wide v7, v6, v10

    .line 130
    if-eqz v2, :cond_1

    .line 132
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    move-object v1, v2

    .line 139
    .end local v0    # "buffer":[C
    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-void

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v7, v7, v9

    aput-wide v7, v6, v10

    .line 130
    if-eqz v1, :cond_2

    .line 132
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 133
    :catch_1
    move-exception v3

    .line 135
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 127
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v7, v7, v9

    aput-wide v7, v6, v10

    .line 130
    if-eqz v1, :cond_2

    .line 132
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 133
    :catch_3
    move-exception v3

    goto :goto_3

    .line 129
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    iget-object v7, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v8, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v8, v8, v9

    aput-wide v8, v7, v10

    .line 130
    if-eqz v1, :cond_3

    .line 132
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 129
    :cond_3
    :goto_6
    throw v6

    .line 133
    :catch_4
    move-exception v3

    .line 135
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 133
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[C
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    .line 135
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_5

    .line 126
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_4

    .line 124
    .end local v1    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .restart local v1    # "cadFile":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method setLoggingMode(Z)V
    .locals 9
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 144
    const-string v4, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLoggingMode() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shealth_cadence_enable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 148
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_0

    .line 150
    if-eqz p1, :cond_3

    .line 151
    const/16 v4, 0x31

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v7

    aput-wide v5, v4, v8

    .line 164
    if-eqz v3, :cond_1

    .line 166
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v2, v3

    .line 173
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 153
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    const/16 v4, 0x30

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 158
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v7

    aput-wide v5, v4, v8

    .line 164
    if-eqz v2, :cond_2

    .line 166
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 167
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 159
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 161
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v7

    aput-wide v5, v4, v8

    .line 164
    if-eqz v2, :cond_2

    .line 166
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 167
    :catch_3
    move-exception v0

    goto :goto_4

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_6
    iget-object v5, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v6, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v6, v6, v7

    aput-wide v6, v5, v8

    .line 164
    if-eqz v2, :cond_4

    .line 166
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 163
    :cond_4
    :goto_7
    throw v4

    .line 167
    :catch_4
    move-exception v0

    .line 169
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .line 169
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 159
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 156
    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method setProperty(IDD)V
    .locals 6
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    .line 108
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/provider/miscprovider/lib/PedometerEngine;->native_pedometer_initialize(IDD)V

    .line 109
    return-void
.end method

.method unregister()V
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 101
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 102
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mEventThread:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->interrupt()V

    .line 103
    return-void
.end method
