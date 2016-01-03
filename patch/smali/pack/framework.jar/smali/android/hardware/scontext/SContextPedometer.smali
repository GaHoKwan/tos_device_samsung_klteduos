.class public Landroid/hardware/scontext/SContextPedometer;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextPedometer.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextPedometer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    new-instance v0, Landroid/hardware/scontext/SContextPedometer$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPedometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    .line 545
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getArraySize()I
    .locals 3

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "res":I
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 509
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "LoggingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 511
    :cond_0
    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "Calorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCalorieDiff()D
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CalorieDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCalorieDiffArray()[D
    .locals 3

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 373
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "CalorieDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 375
    :cond_0
    return-object v0
.end method

.method public getCumulativeCalorie()D
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeCalorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeDistance()D
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeRunDownStepCount()J
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeRunStepCount()J
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeRunUpStepCount()J
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeTotalStepCount()J
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeTotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWalkDownStepCount()J
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWalkStepCount()J
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWalkUpStepCount()J
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "Distance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDistanceDiff()D
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "DistanceDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDistanceDiffArray()[D
    .locals 3

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 386
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "DistanceDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 388
    :cond_0
    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    return v0
.end method

.method public getRunDownStepCount()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunDownStepCountDiff()J
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunDownStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 483
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 485
    :cond_0
    return-object v0
.end method

.method public getRunStepCount()J
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunStepCountDiff()J
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 455
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 457
    :cond_0
    return-object v0
.end method

.method public getRunUpStepCount()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunUpStepCountDiff()J
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunUpStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 469
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 471
    :cond_0
    return-object v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeedArray()[D
    .locals 3

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 360
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "SpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 362
    :cond_0
    return-object v0
.end method

.method public getStepStatus()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "StepStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStampArray()[J
    .locals 3

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 496
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 498
    :cond_0
    return-object v0
.end method

.method public getTotalStepCount()J
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "TotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalStepCountDiff()J
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "TotalStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 400
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "TotalStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 402
    :cond_0
    return-object v0
.end method

.method public getUpDownStepCount()J
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "UpDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpDownStepCountDiff()J
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "UpDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkDownStepCount()J
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkDownStepCountDiff()J
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkDownStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 442
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 444
    :cond_0
    return-object v0
.end method

.method public getWalkStepCount()J
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkStepCountDiff()J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 414
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 416
    :cond_0
    return-object v0
.end method

.method public getWalkUpStepCount()J
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkUpStepCountDiff()J
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWalkUpStepCountDiffArray()[J
    .locals 3

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 428
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 430
    :cond_0
    return-object v0
.end method

.method public getWalkingFrequency()D
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkingFrequency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 522
    iput-object p1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    .line 523
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    .line 524
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 533
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 534
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    return-void
.end method
