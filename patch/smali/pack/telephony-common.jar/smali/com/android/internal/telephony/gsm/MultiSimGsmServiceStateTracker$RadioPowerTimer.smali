.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;
.super Ljava/lang/Object;
.source "MultiSimGsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioPowerTimer"
.end annotation


# static fields
.field private static final BCM_DUALSIM_RADIO_POWERON_DELAY:I = 0x2710


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;
    .param p2, "x1"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$100(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v2, "RadioPowerTimer.run() setRadioPower(true, null)"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->logi(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$500(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$202(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z

    .line 205
    monitor-exit v1

    .line 207
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
