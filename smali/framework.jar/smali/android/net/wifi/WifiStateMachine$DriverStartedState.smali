.class Landroid/net/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5881
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5884
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateMachine;->access$16902(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5885
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$17002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5886
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # operator++ for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$17108(Landroid/net/wifi/WifiStateMachine;)I

    .line 5887
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 5893
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    .line 5896
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TN"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CountryISO"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "IL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CountryISO"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5899
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v8, v2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 5907
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$17300(Landroid/net/wifi/WifiStateMachine;)V

    .line 5909
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$17400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 5912
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    .line 5915
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$17500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5916
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 5921
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$17602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5923
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mBatchedScanSupported:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$17700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5924
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;)V

    .line 5927
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-eq v4, v3, :cond_7

    .line 5928
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 5929
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 5930
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 5931
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5933
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$17900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$18000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5949
    :goto_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$18400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_9

    .line 5950
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 5952
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 5958
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 5960
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5961
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 5963
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x20083

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 5971
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "wifi_scan_available"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5972
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5973
    const-string v2, "scan_enabled"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5974
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$18600(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 5980
    return-void

    .line 5901
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$17200(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 5918
    :cond_6
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 5936
    :cond_7
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 5938
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Attempting to reconnect to wifi network .."

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$18100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5939
    :cond_8
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 5944
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    .line 5945
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$18300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 5955
    :cond_9
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$18500(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_3
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6410
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$16902(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6411
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 6412
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$21802(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 6414
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mBatchedScanSupported:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$17700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6415
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$19000(Landroid/net/wifi/WifiStateMachine;)V

    .line 6418
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "wifi_scan_available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6419
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6420
    const-string v1, "scan_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6421
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Landroid/net/wifi/WifiStateMachine;->access$18600(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 6422
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$21900(Landroid/net/wifi/WifiStateMachine;)V

    .line 6424
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$19302(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6425
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 28
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 5984
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 6404
    const/16 v22, 0x0

    .line 6406
    :goto_0
    return v22

    .line 5986
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/WorkSource;

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    .line 5987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    # invokes: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$18800(Landroid/net/wifi/WifiStateMachine;I)V

    .line 6406
    :cond_0
    :goto_1
    const/16 v22, 0x1

    goto :goto_0

    .line 5990
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 5992
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$18900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/BatchedScanSettings;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 5993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$17800(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 5995
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$19000(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 6000
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 6001
    .local v10, "freqs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiNative;->partialScan(Ljava/lang/String;)Z

    .line 6002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$14102(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1

    .line 6005
    .end local v10    # "freqs":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 6006
    .local v7, "country":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 v16, 0x1

    .line 6007
    .local v16, "persist":Z
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 6008
    .local v19, "sequence":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 6009
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "set country code ignored due to sequence num"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$19100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6006
    .end local v16    # "persist":Z
    .end local v19    # "sequence":I
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 6012
    .restart local v16    # "persist":Z
    .restart local v19    # "sequence":I
    :cond_3
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "set country code "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$19200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6013
    :cond_4
    if-eqz v16, :cond_5

    .line 6014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # setter for: Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static {v0, v7}, Landroid/net/wifi/WifiStateMachine;->access$4002(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "wifi_country_code"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6019
    :cond_5
    sget-object v22, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 6020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$19300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$19300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 6022
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 6023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v7}, Landroid/net/wifi/WifiStateMachine;->access$19302(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6028
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    const v23, 0x23010

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6025
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to set country code "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$19400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 6031
    .end local v7    # "country":Ljava/lang/String;
    .end local v16    # "persist":Z
    .end local v19    # "sequence":I
    :sswitch_4
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 6032
    .local v6, "band":I
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "set frequency band "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$19500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6033
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiNative;->setBand(I)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 6035
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Wifi_SetOffApRoaming"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 6036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->setRoamMode(I)Z

    .line 6038
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$19600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->bssFlush()V

    .line 6042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    # invokes: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$18800(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 6044
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to set frequency band "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$19700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6048
    .end local v6    # "band":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    if-eqz v22, :cond_c

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v23

    move/from16 v1, v22

    # setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$3302(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    goto/16 :goto_1

    .line 6048
    :cond_c
    const/16 v22, 0x0

    goto :goto_4

    .line 6053
    :sswitch_6
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 6056
    .local v15, "mode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 6059
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$17000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 6060
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "Already in delayed stop"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$19800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6063
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSendDhcpRelease:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$19900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v22

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v22

    if-eqz v22, :cond_e

    .line 6064
    const-string v22, "WifiStateMachine"

    const-string v23, "CMD_RELEASE_DHCP is sent due to CMD_STOP_DRIVER"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v22

    const v23, 0x30008

    invoke-virtual/range {v22 .. v23}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 6067
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$17002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # operator++ for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$17108(Landroid/net/wifi/WifiStateMachine;)I

    .line 6069
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Delayed stop message "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$20000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6072
    :cond_f
    new-instance v8, Landroid/content/Intent;

    const-string v22, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6073
    .local v8, "driverStopIntent":Landroid/content/Intent;
    const-string v22, "DelayedStopCounter"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x0

    const/high16 v25, 0x8000000

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    # setter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$20102(Landroid/net/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 6078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$20300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I
    invoke-static/range {v26 .. v26}, Landroid/net/wifi/WifiStateMachine;->access$20200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v26 .. v26}, Landroid/net/wifi/WifiStateMachine;->access$20100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v26

    invoke-virtual/range {v22 .. v26}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 6082
    .end local v8    # "driverStopIntent":Landroid/content/Intent;
    .end local v15    # "mode":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$17000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 6083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$17002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # operator++ for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$17108(Landroid/net/wifi/WifiStateMachine;)I

    .line 6085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$20300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$20100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6086
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "Delayed stop ignored due to start"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$20400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6087
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 6088
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    goto/16 :goto_1

    .line 6093
    :sswitch_8
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "delayed stop "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$20500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6094
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$17100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 6095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$20600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_12

    .line 6096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 6097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;)V

    .line 6099
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->stopDriver()Z

    .line 6101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 6103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$20700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6105
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$20800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$20900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6109
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 6110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 6111
    :cond_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    if-nez v22, :cond_15

    .line 6112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 6114
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "Illegal arugments to CMD_START_PACKET_FILTERING"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$21000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6118
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 6119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 6120
    :cond_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    if-nez v22, :cond_17

    .line 6121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 6123
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$21100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6127
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSuspendMsg(I)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$21200(Landroid/net/wifi/WifiStateMachine;I)V

    .line 6128
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 6129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->callResetTimer(Z)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$11700(Landroid/net/wifi/WifiStateMachine;Z)V

    goto/16 :goto_1

    .line 6133
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 6134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    const/16 v24, 0x0

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v22 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$21300(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6136
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    const/16 v24, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v22 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$21300(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6140
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 6141
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 6142
    .local v17, "remoteAddress":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    const/4 v9, 0x1

    .line 6143
    .local v9, "enable":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Landroid/net/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 6142
    .end local v9    # "enable":Z
    :cond_19
    const/4 v9, 0x0

    goto :goto_5

    .line 6148
    .end local v17    # "remoteAddress":Ljava/lang/String;
    :sswitch_e
    const/4 v13, -0x1

    .line 6149
    .local v13, "intResult":I
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 6152
    .local v12, "innerMsg":Landroid/os/Message;
    if-nez v12, :cond_1a

    .line 6153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "DriverStatedState::CMD_SEC_API - Invalid inner msg"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$21400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6157
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "DriverStatedState::CMD_SEC_API - inner msg ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v12, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$21500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6159
    iget v0, v12, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_1

    goto/16 :goto_1

    .line 6161
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x64

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6166
    :sswitch_10
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6167
    .local v5, "args":Landroid/os/Bundle;
    if-eqz v5, :cond_1b

    .line 6168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x65

    const-string v24, "level"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6170
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6173
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x66

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6178
    :sswitch_12
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6179
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_1c

    .line 6180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x67

    const-string v24, "level"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6182
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6185
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x68

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6190
    :sswitch_14
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6191
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_1d

    .line 6192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x69

    const-string v24, "time"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6194
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6197
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x6a

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6202
    :sswitch_16
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6203
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_1e

    .line 6204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x6b

    const-string v24, "mode"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6206
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6209
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_17
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6210
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_1f

    .line 6211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x6d

    const-string v24, "chinfo"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v13

    .line 6213
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6216
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x82

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6221
    :sswitch_19
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6222
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_20

    .line 6223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x83

    const-string v24, "time"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6225
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6228
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x84

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6233
    :sswitch_1b
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6234
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_21

    .line 6235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x85

    const-string v24, "time"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6237
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6240
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x86

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6245
    :sswitch_1d
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6246
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_22

    .line 6247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x87

    const-string v24, "time"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6249
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6252
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x88

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6257
    :sswitch_1f
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6258
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_23

    .line 6259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x89

    const-string v24, "num"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6261
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6264
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_20
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6265
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_24

    .line 6266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x97

    const-string v24, "param"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v13

    .line 6268
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6271
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_21
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6272
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_25

    .line 6273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x96

    const-string v24, "param"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v13

    .line 6275
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6278
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_22
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6279
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_26

    .line 6280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xa1

    const-string v24, "country"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v13

    .line 6282
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6285
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xa2

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6290
    :sswitch_24
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6291
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_27

    .line 6292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xa3

    const-string v24, "band"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6294
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6297
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xaa

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6302
    :sswitch_26
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6303
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_28

    .line 6304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xab

    const-string v24, "mode"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6306
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6309
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xac

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6314
    :sswitch_28
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6315
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_29

    .line 6316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xad

    const-string v24, "mode"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6318
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6321
    .end local v5    # "args":Landroid/os/Bundle;
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xae

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v13

    .line 6323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6326
    :sswitch_2a
    iget-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 6327
    .restart local v5    # "args":Landroid/os/Bundle;
    if-eqz v5, :cond_2a

    .line 6328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xaf

    const-string v24, "mode"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v13

    .line 6330
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 6336
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v12    # "innerMsg":Landroid/os/Message;
    .end local v13    # "intResult":I
    :sswitch_2b
    const/4 v4, 0x0

    .line 6337
    .local v4, "StringResult":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 6340
    .restart local v12    # "innerMsg":Landroid/os/Message;
    if-nez v12, :cond_2b

    .line 6341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "DriverStatedState::CMD_SEC_STRING_API - Invalid inner msg"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$21600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6345
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "DriverStatedState::CMD_SEC_STRING_API - inner msg ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v12, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$21700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6347
    iget v0, v12, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_2

    goto/16 :goto_1

    .line 6360
    :sswitch_2c
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 6361
    .local v18, "scanResultsBuf":Ljava/lang/StringBuffer;
    const/16 v20, 0x0

    .line 6364
    .local v20, "sid":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->scanResults(I)Ljava/lang/String;

    move-result-object v21

    .line 6365
    .local v21, "tmpResults":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 6384
    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6349
    .end local v18    # "scanResultsBuf":Ljava/lang/StringBuffer;
    .end local v20    # "sid":I
    .end local v21    # "tmpResults":Ljava/lang/String;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x6c

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v4

    .line 6351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6354
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0xa0

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v4

    .line 6356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6366
    .restart local v18    # "scanResultsBuf":Ljava/lang/StringBuffer;
    .restart local v20    # "sid":I
    .restart local v21    # "tmpResults":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6367
    const-string v22, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6368
    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 6369
    .local v14, "lines":[Ljava/lang/String;
    const/16 v20, -0x1

    .line 6370
    array-length v0, v14

    move/from16 v22, v0

    add-int/lit8 v11, v22, -0x1

    .local v11, "i":I
    :goto_7
    if-ltz v11, :cond_2e

    .line 6371
    aget-object v22, v14, v11

    const-string v23, "####"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 6382
    :cond_2e
    :goto_8
    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c

    goto/16 :goto_6

    .line 6373
    :cond_2f
    aget-object v22, v14, v11

    const-string v23, "id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 6375
    :try_start_0
    aget-object v22, v14, v11

    const-string v23, "id="

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    add-int/lit8 v20, v22, 0x1

    goto :goto_8

    .line 6370
    :cond_30
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 6388
    .end local v11    # "i":I
    .end local v14    # "lines":[Ljava/lang/String;
    .end local v18    # "scanResultsBuf":Ljava/lang/StringBuffer;
    .end local v20    # "sid":I
    .end local v21    # "tmpResults":Ljava/lang/String;
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiConfigStore;->getSecuredNetworkInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 6389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6392
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v23

    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->msapGasResponseGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6396
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v23

    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->getBssInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 6376
    .restart local v11    # "i":I
    .restart local v14    # "lines":[Ljava/lang/String;
    .restart local v18    # "scanResultsBuf":Ljava/lang/StringBuffer;
    .restart local v20    # "sid":I
    .restart local v21    # "tmpResults":Ljava/lang/String;
    :catch_0
    move-exception v22

    goto/16 :goto_8

    .line 5984
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_7
        0x2000e -> :sswitch_6
        0x20012 -> :sswitch_8
        0x2001f -> :sswitch_5
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_c
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_9
        0x20055 -> :sswitch_a
        0x20056 -> :sswitch_b
        0x2005a -> :sswitch_4
        0x2005c -> :sswitch_d
        0x20065 -> :sswitch_2
        0x20087 -> :sswitch_1
        0x2012d -> :sswitch_e
        0x2012e -> :sswitch_2b
    .end sparse-switch

    .line 6159
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_f
        0x65 -> :sswitch_10
        0x66 -> :sswitch_11
        0x67 -> :sswitch_12
        0x68 -> :sswitch_13
        0x69 -> :sswitch_14
        0x6a -> :sswitch_15
        0x6b -> :sswitch_16
        0x6d -> :sswitch_17
        0x82 -> :sswitch_18
        0x83 -> :sswitch_19
        0x84 -> :sswitch_1a
        0x85 -> :sswitch_1b
        0x86 -> :sswitch_1c
        0x87 -> :sswitch_1d
        0x88 -> :sswitch_1e
        0x89 -> :sswitch_1f
        0x96 -> :sswitch_20
        0x97 -> :sswitch_21
        0xa1 -> :sswitch_22
        0xa2 -> :sswitch_23
        0xa3 -> :sswitch_24
        0xaa -> :sswitch_25
        0xab -> :sswitch_26
        0xac -> :sswitch_27
        0xad -> :sswitch_28
        0xae -> :sswitch_29
        0xaf -> :sswitch_2a
    .end sparse-switch

    .line 6347
    :sswitch_data_2
    .sparse-switch
        0x21 -> :sswitch_2c
        0x27 -> :sswitch_2f
        0x41 -> :sswitch_30
        0x44 -> :sswitch_31
        0x6c -> :sswitch_2d
        0xa0 -> :sswitch_2e
    .end sparse-switch
.end method
