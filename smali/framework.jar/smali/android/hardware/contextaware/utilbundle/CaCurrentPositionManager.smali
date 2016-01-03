.class public Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/ICurrentPositionObservable;
.implements Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final ACCURACY_BEST_THRESHOLE:F = 16.0f

.field private static final ACCURACY_GOOD_THRESHOLE:F = 50.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

.field private mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutCheckThreadHandler:Ljava/lang/Thread;

.field private mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

.field private final mWpsListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 134
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    .line 208
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$2;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    .line 89
    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    .line 91
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0, p3}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->registerCurrentPositionObserver(Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->registerWpsListener()V

    return-void
.end method

.method static synthetic access$600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->unregisterWpsListener()V

    return-void
.end method

.method private clearTimeOutCheckService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 461
    iput-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 462
    iput-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 464
    :cond_0
    return-void
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method private registerGpsListener()V
    .locals 7

    .prologue
    .line 470
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 471
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private registerWpsListener()V
    .locals 7

    .prologue
    .line 482
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 483
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method private unregisterGpsListener()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 495
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 499
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private unregisterWpsListener()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 506
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method private updateEmptyPosition()V
    .locals 15

    .prologue
    .line 444
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v14, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>()V

    .line 448
    .local v14, "emptyPosition":Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    invoke-virtual {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v1

    invoke-virtual {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v2

    invoke-virtual {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v7

    invoke-virtual {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v9

    invoke-virtual {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v11

    invoke-virtual {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v12

    invoke-virtual {v14}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method private updateGpsPosition()V
    .locals 14

    .prologue
    .line 414
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 418
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v2}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v3}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v5}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v7}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v7

    iget-object v9, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v9}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v9

    iget-object v11, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v11}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v11

    iget-object v12, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v12}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v12

    iget-object v13, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v13}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method private updateWpsPosition()V
    .locals 14

    .prologue
    .line 429
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 433
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v2}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v3}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v5}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v7}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v7

    iget-object v9, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v9}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v9

    iget-object v11, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v11}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v11

    iget-object v12, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v12}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v12

    iget-object v13, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v13}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method


# virtual methods
.method public final disable()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 313
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 323
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    .line 325
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$4;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    goto :goto_0
.end method

.method public final enable(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 271
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 272
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 277
    const-string v0, "Looper is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    .line 282
    const-string v0, "mEnable value is true."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    .line 286
    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 289
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 290
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 291
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 293
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->clearTimeOutCheckService()V

    .line 295
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Landroid/hardware/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 296
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheck:Landroid/hardware/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    .line 297
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mTimeOutCheckThreadHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 299
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$3;-><init>(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 104
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 107
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 108
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 111
    :cond_0
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 112
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 113
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    .line 116
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mEnable:Z

    return v0
.end method

.method public final notifyCurrentPositionObserver()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->disable()V

    .line 395
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 397
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateGpsPosition()V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    .line 401
    :cond_2
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mWpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    .line 404
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateWpsPosition()V

    goto :goto_0

    .line 406
    :cond_4
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->updateEmptyPosition()V

    goto :goto_0
.end method

.method public final occurTimeOut()V
    .locals 0

    .prologue
    .line 521
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    .line 522
    return-void
.end method

.method public final registerCurrentPositionObserver(Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 367
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .line 368
    return-void
.end method

.method public final terminateManager()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public final unregisterCurrentPositionObserver()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->mListener:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .line 379
    return-void
.end method
