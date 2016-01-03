.class Landroid/net/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 7176
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 7179
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # operator++ for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$26608(Landroid/net/wifi/WifiStateMachine;)I

    .line 7180
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7181
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20053

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$26600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 7183
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 7187
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v1, -0x63

    # setter for: Landroid/net/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$902(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7188
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$14900(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 7189
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;)V

    .line 7190
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 7194
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 7480
    const/4 v12, 0x0

    .line 7483
    :goto_0
    return v12

    .line 7196
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v12}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 7483
    :cond_0
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    .line 7199
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v12}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 7200
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 7201
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "DHCP successful"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$26700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7203
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$26802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7205
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/DhcpResults;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V
    invoke-static {v13, v12}, Landroid/net/wifi/WifiStateMachine;->access$26900(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V

    .line 7206
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "complete"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7207
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$27100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$27200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    if-eq v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$27300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mConnectedOxygenState:Lcom/android/internal/util/State;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$27400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    if-ne v12, v13, :cond_3

    .line 7214
    :cond_2
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "DHCP renew post action!!! - Don\'t need to make state transition"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 7220
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v12

    invoke-virtual {v12}, Landroid/sec/enterprise/WifiPolicyCache;->getAutomaticConnectionToWifi()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 7221
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$27600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7223
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCanConnectNow:Z
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$24400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mAllowedNetId:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$24300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    if-ne v12, v13, :cond_5

    .line 7224
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mCanConnectNow:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$24402(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7225
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v13, -0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mAllowedNetId:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$24302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7226
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$27600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7228
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 7229
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7236
    :cond_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 7237
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "DHCP failed"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$28000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7238
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "complete"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7239
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$26800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 7240
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "Maintain Current connection if DHCP failed by Roaming RENEW"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$28100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7241
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$26802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7242
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 7243
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "start"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7244
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    const v13, 0x30002

    invoke-virtual {v12, v13}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 7245
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    const v13, 0x30001

    invoke-virtual {v12, v13}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 7248
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$28200(Landroid/net/wifi/WifiStateMachine;)V

    .line 7249
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$28300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7254
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 7255
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$28400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7258
    :sswitch_3
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 7259
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 7260
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$7702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7261
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$28500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7265
    :sswitch_4
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 7266
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x20049

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 7267
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v12, v0}, Landroid/net/wifi/WifiStateMachine;->access$28600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 7271
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v12, v0}, Landroid/net/wifi/WifiStateMachine;->access$28700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 7275
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/WorkSource;

    # invokes: Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static {v13, v14, v12}, Landroid/net/wifi/WifiStateMachine;->access$18700(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    .line 7276
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v13, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$18800(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 7281
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 7282
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_a

    .line 7283
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v9

    .line 7284
    .local v9, "result":Landroid/net/wifi/NetworkUpdateResult;
    invoke-virtual {v9}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v7

    .line 7289
    .end local v9    # "result":Landroid/net/wifi/NetworkUpdateResult;
    .local v7, "netId":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v12

    if-eq v12, v7, :cond_0

    .line 7292
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 7286
    .end local v7    # "netId":I
    :cond_a
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .restart local v7    # "netId":I
    goto :goto_2

    .line 7295
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "netId":I
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 7296
    .local v1, "args":Landroid/os/Bundle;
    const-string v12, "BSSID"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7297
    .local v2, "bssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 7300
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 7302
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "bssid":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 7305
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    invoke-static {v12, v3}, Landroid/net/wifi/WifiStateMachine;->access$23900(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-nez v3, :cond_b

    .line 7306
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x25008

    const/4 v14, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v12, v0, v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7312
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v9

    .line 7313
    .restart local v9    # "result":Landroid/net/wifi/NetworkUpdateResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v12

    invoke-virtual {v9}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v13

    if-ne v12, v13, :cond_d

    .line 7314
    invoke-virtual {v9}, Landroid/net/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 7315
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "Reconfiguring IP on connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$28800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7316
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$28900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7318
    :cond_c
    invoke-virtual {v9}, Landroid/net/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 7319
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "Reconfiguring proxy on connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$29000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7320
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$7900(Landroid/net/wifi/WifiStateMachine;)V

    .line 7324
    :cond_d
    invoke-virtual {v9}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_e

    .line 7325
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x25009

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v12, v0, v13}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 7327
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "Failed to save network"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$29100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7328
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x25008

    const/4 v14, 0x0

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v12, v0, v13, v14}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 7334
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "result":Landroid/net/wifi/NetworkUpdateResult;
    :sswitch_a
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "Network reconnected established_roaming"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$29200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7335
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->monitorNetworkPropertiesUpdate()V
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$29300(Landroid/net/wifi/WifiStateMachine;)V

    .line 7336
    const/4 v8, 0x0

    .line 7338
    .local v8, "oldBssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    .line 7339
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$26802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7341
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$11402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 7342
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v13, v12}, Landroid/net/wifi/WifiStateMachine;->access$11302(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 7345
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 7346
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 7347
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiConfigStore;->isSkipInternetCheck(I)Z

    move-result v12

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v12

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/net/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 7353
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 7356
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 7357
    .local v11, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    iget-boolean v13, v11, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    .line 7360
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$26000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 7364
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v12}, Landroid/net/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v10

    .line 7367
    .local v10, "tmpDhcpRenewAfterRoamingMode":I
    packed-switch v10, :pswitch_data_0

    .line 7379
    :cond_13
    :goto_3
    if-nez v10, :cond_15

    .line 7380
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->CheckDhcpRenew()Z
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$29400(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 7381
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    if-eqz v12, :cond_15

    .line 7383
    const/4 v5, 0x0

    .line 7385
    .local v5, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v5

    .line 7386
    if-eqz v5, :cond_14

    .line 7387
    new-instance v12, Landroid/net/LinkAddress;

    const-string v13, "0.0.0.0"

    invoke-static {v13}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v12}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 7388
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v5}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 7389
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "Clearing prev IP address"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$29500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7395
    :cond_14
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "start"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7396
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    const v13, 0x30002

    invoke-virtual {v12, v13}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 7397
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    const v13, 0x30001

    invoke-virtual {v12, v13}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 7431
    .end local v5    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->monitorNetworkPropertiesUpdate()V
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$29300(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 7369
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    if-eqz v12, :cond_13

    .line 7370
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "start"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7371
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    const v13, 0x30003

    invoke-virtual {v12, v13}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 7391
    .restart local v5    # "ifcg":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v4

    .line 7392
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error configuring interface "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$29600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_4

    .line 7399
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_16
    if-eqz v8, :cond_15

    .line 7400
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 7414
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNetworkLists:Landroid/net/wifi/WifiNetworkLists;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$14600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNetworkLists;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/net/wifi/WifiNetworkLists;->findIpLeasedBefore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 7416
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IP is leased in this network: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", skip DHCP"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$29700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 7418
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    if-eqz v12, :cond_15

    .line 7420
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "IP is not in this network , Start RENEW"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$29800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7421
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v13, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mRoamingRenew:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$26802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7422
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v13, "start"

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyWatchdogDhcpSession(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$27000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7423
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    const v13, 0x30003

    invoke-virtual {v12, v13}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    goto/16 :goto_5

    .line 7427
    :cond_19
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " and "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " are same, skip DHCP"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiStateMachine;->access$29900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 7434
    .end local v8    # "oldBssid":Ljava/lang/String;
    .end local v10    # "tmpDhcpRenewAfterRoamingMode":I
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v13}, Landroid/net/wifi/WifiStateMachine;->access$26600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 7436
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$30000(Landroid/net/wifi/WifiStateMachine;)V

    .line 7438
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x20053

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$26600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$30100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 7449
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_1a

    const/4 v12, 0x1

    :goto_6
    # setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v13, v12}, Landroid/net/wifi/WifiStateMachine;->access$3602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 7450
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # operator++ for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$26608(Landroid/net/wifi/WifiStateMachine;)I

    .line 7451
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 7453
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$30000(Landroid/net/wifi/WifiStateMachine;)V

    .line 7455
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v14, 0x20053

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v15}, Landroid/net/wifi/WifiStateMachine;->access$26600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPollRssiIntervalMsecs:I
    invoke-static {v14}, Landroid/net/wifi/WifiStateMachine;->access$30100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 7449
    :cond_1a
    const/4 v12, 0x0

    goto :goto_6

    .line 7464
    :sswitch_d
    new-instance v6, Landroid/net/wifi/RssiPacketCountInfo;

    invoke-direct {v6}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    .line 7465
    .local v6, "info":Landroid/net/wifi/RssiPacketCountInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$30000(Landroid/net/wifi/WifiStateMachine;)V

    .line 7466
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v12

    iput v12, v6, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 7467
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    invoke-static {v12, v6}, Landroid/net/wifi/WifiStateMachine;->access$30200(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    .line 7468
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x25015

    move-object/from16 v0, p1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v12, v0, v13, v6}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7471
    .end local v6    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    :sswitch_e
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_1b

    const-string v12, "WifiStateMachine"

    const-string v13, "REQUEST_POWER_SAVE_OFF"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7472
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_1

    .line 7475
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$17600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 7476
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_1c

    const-string v12, "WifiStateMachine"

    const-string v13, "REQUEST_POWER_SAVE_ON"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7477
    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v12}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    goto/16 :goto_1

    .line 7194
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_6
        0x20048 -> :sswitch_4
        0x20049 -> :sswitch_2
        0x20050 -> :sswitch_5
        0x20052 -> :sswitch_c
        0x20053 -> :sswitch_b
        0x21013 -> :sswitch_e
        0x21014 -> :sswitch_f
        0x2300c -> :sswitch_3
        0x24003 -> :sswitch_a
        0x25001 -> :sswitch_7
        0x25007 -> :sswitch_9
        0x25014 -> :sswitch_d
        0x25021 -> :sswitch_8
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_1
    .end sparse-switch

    .line 7367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
