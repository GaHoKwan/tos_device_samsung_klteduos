.class final Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayBlankerImpl"
.end annotation


# instance fields
.field private blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

.field private final mBlankUnblankAllDisplaysRunnable:Ljava/lang/Runnable;

.field private mBlanked:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1

    .prologue
    .line 5218
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5220
    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    .line 5293
    new-instance v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;-><init>(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlankUnblankAllDisplaysRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 5218
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    .prologue
    .line 5218
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    .prologue
    .line 5218
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    return v0
.end method

.method private sendUpdateBlankUnblankDisplayLocked()V
    .locals 2

    .prologue
    .line 5286
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5287
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$5202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 5288
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 5289
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlankUnblankAllDisplaysRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5291
    :cond_0
    return-void
.end method


# virtual methods
.method public blankAllDisplays()V
    .locals 3

    .prologue
    .line 5226
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5227
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "blankAllDisplays() is called."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 5229
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5230
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->sendUpdateBlankUnblankDisplayLocked()V

    .line 5232
    :cond_0
    monitor-exit v1

    .line 5243
    return-void

    .line 5232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5272
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5273
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blanked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 5274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unblankAllDisplays()V
    .locals 3

    .prologue
    .line 5249
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5250
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string/jumbo v2, "unblankAllDisplays() is called."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 5252
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5253
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->sendUpdateBlankUnblankDisplayLocked()V

    .line 5255
    :cond_0
    monitor-exit v1

    .line 5266
    return-void

    .line 5255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
