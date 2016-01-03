.class public Landroid/os/DssHelper;
.super Ljava/lang/Object;
.source "DssHelper.java"


# static fields
.field private static mInstance:Landroid/os/DssHelper;


# instance fields
.field private final DEFAULT_FACTOR:D

.field mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    .line 48
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Landroid/os/DssHelper;->DEFAULT_FACTOR:D

    .line 29
    return-void
.end method

.method public static getInstance()Landroid/os/DssHelper;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/os/DssHelper;

    invoke-direct {v0}, Landroid/os/DssHelper;-><init>()V

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    .line 37
    :cond_0
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addPackage(Ljava/lang/String;D)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # D

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScalingFactor()D
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getScalingFactor(Ljava/lang/String;)D
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 58
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
