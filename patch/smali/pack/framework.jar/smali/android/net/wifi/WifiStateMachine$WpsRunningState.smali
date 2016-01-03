.class Landroid/net/wifi/WifiStateMachine$WpsRunningState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 8625
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 8630
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$37300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8631
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$23102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8637
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 8734
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 8735
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 8748
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v3, 0x2500f

    const/4 v1, 0x1

    const/4 v6, 0x0

    const v5, 0x2500c

    const/4 v0, 0x0

    .line 8640
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 8729
    :goto_0
    return v0

    .line 8642
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const v3, 0x2500d

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8643
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 8644
    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8645
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$37400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 8729
    goto :goto_0

    .line 8648
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v4, 0x3

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v3, v5, v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8650
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 8651
    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8652
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$23102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8653
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$37500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 8657
    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v3, v5, v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8658
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 8659
    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8660
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$23102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8661
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$37600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 8664
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v4, 0x7

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v3, v5, v4}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8666
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 8667
    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 8668
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$23102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8669
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$37700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 8672
    :sswitch_5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, p1, v5, v1}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 8675
    :sswitch_6
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->cancelWps()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8676
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$23102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8677
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25010

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8681
    :goto_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$37800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8679
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v0}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_2

    .line 8689
    :sswitch_7
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->cancelWps()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8690
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$23102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 8691
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x25010

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, p1, v2}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 8695
    :goto_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$37900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 8696
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$38000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 8693
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v0}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_3

    .line 8705
    :sswitch_8
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$38100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 8708
    :sswitch_9
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Network connection lost"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$38200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8709
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$13600(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 8712
    :sswitch_a
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Ignore Assoc reject event during WPS Connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$38300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8719
    :sswitch_b
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Ignore auth failure during WPS connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$38400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8640
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_7
        0x2000c -> :sswitch_7
        0x2000e -> :sswitch_7
        0x20036 -> :sswitch_8
        0x20048 -> :sswitch_8
        0x2004a -> :sswitch_8
        0x2004b -> :sswitch_8
        0x24003 -> :sswitch_8
        0x24004 -> :sswitch_9
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_b
        0x24008 -> :sswitch_0
        0x24009 -> :sswitch_3
        0x2400a -> :sswitch_2
        0x2400b -> :sswitch_4
        0x2402b -> :sswitch_a
        0x25001 -> :sswitch_8
        0x2500a -> :sswitch_5
        0x2500e -> :sswitch_6
        0x25021 -> :sswitch_8
    .end sparse-switch
.end method
