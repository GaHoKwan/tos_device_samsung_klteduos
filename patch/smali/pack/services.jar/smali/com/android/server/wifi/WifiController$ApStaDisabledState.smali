.class Lcom/android/server/wifi/WifiController$ApStaDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaDisabledState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 498
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 499
    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    .line 500
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 615
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    sub-long v1, v3, v5

    .line 616
    .local v1, "delaySoFar":J
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$4100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 617
    const/4 v3, 0x0

    .line 628
    :goto_0
    return v3

    .line 620
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiController msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deferred for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$4100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$4200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 624
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 625
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    iget v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 627
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$4100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 628
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 506
    # getter for: Lcom/android/server/wifi/WifiController;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiController;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "Going to disabled without scan state"

    # invokes: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    .line 511
    iget v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    .line 512
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    .line 513
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 516
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 611
    :goto_0
    :pswitch_0
    return v3

    .line 541
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 542
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 543
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    if-eqz v1, :cond_0

    .line 545
    iget v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    .line 547
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    :cond_1
    :goto_2
    move v3, v2

    .line 611
    goto :goto_0

    :cond_2
    move v1, v3

    .line 547
    goto :goto_1

    .line 550
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$600(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 551
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v4

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$2300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 557
    :goto_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    goto :goto_2

    .line 553
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;)V

    goto :goto_3

    .line 559
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 560
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v3

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$2700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 561
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v3, "illegal state found both WifiController and WifiStateMachine"

    # invokes: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$2800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v3

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$2900(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 568
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_7

    .line 569
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setIbssRunning(Z)V

    .line 570
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIbssEnabledState:Lcom/android/server/wifi/WifiController$IbssEnabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$3000(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$IbssEnabledState;

    move-result-object v3

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 573
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v3, "illegal state found both WifiController and WifiStateMachine"

    # invokes: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$3200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v3

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$3300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 578
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v3

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 583
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_1

    .line 584
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v1, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 586
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v4

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->access$3600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 589
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    .line 590
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$3700(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 591
    .local v0, "netType":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$3800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 592
    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 593
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    sget v1, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    and-int/lit8 v1, v1, -0x2

    sput v1, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    goto/16 :goto_2

    .line 595
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    sget v1, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/wifi/WifiTrafficPoller;->mBoosterFLAG:I

    goto/16 :goto_2

    .line 601
    .end local v0    # "netType":I
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    if-eq v1, v3, :cond_9

    .line 602
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v3, "DEFERRED_TOGGLE ignored due to serial mismatch"

    # invokes: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$3900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 605
    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v3, "DEFERRED_TOGGLE handled"

    # invokes: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiController;->access$4000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 606
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v3, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 516
    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
