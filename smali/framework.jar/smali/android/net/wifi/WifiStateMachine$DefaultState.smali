.class Landroid/net/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 4902
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 4906
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4912
    :goto_0
    return-void

    .line 4907
    :catch_0
    move-exception v1

    .line 4908
    .local v1, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 4909
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4910
    .local v0, "ie":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to change interface settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 27
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 4915
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 5280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error! unhandled message"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5283
    :cond_0
    :goto_0
    :sswitch_0
    const/16 v22, 0x1

    return v22

    .line 4917
    :sswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 4918
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    const v23, 0x11001

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 4920
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WifiP2pService connection failure, error="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 4924
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 4929
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    if-eqz v22, :cond_2

    const/16 v22, 0x1

    :goto_1
    move-object/from16 v0, v23

    move/from16 v1, v22

    # setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$3302(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    :cond_2
    const/16 v22, 0x0

    goto :goto_1

    .line 4934
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 4935
    .local v10, "msg1":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 4936
    .local v11, "msg2":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4937
    .local v12, "part_msg_request":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiNative;->s69_data_request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4938
    .local v16, "response":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x20194

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, v16

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4950
    .end local v10    # "msg1":Ljava/lang/String;
    .end local v11    # "msg2":Ljava/lang/String;
    .end local v12    # "part_msg_request":Ljava/lang/String;
    .end local v16    # "response":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 4953
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v22, 0x0

    check-cast v22, Ljava/util/List;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4956
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v22, 0x1

    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v22

    # setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$3602(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_3
    const/16 v22, 0x0

    goto :goto_2

    .line 4959
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, v23

    move/from16 v1, v22

    # setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$3702(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_4
    const/16 v22, 0x0

    goto :goto_3

    .line 4962
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 4963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    const/16 v24, 0x0

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static/range {v22 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 4965
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    const/16 v24, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static/range {v22 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 4969
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_6

    .line 4970
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v22

    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 4972
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    .line 4973
    .local v4, "countryCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 4974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "wifi_country_code"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4981
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v17

    .line 4982
    .local v17, "sequenceNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x20050

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v17

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;IIILjava/lang/Object;)V

    .line 4985
    .end local v17    # "sequenceNum":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x201c2

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 4988
    .end local v4    # "countryCode":Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

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

    goto/16 :goto_0

    .line 4991
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleBatchedScanPollRequest()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 4994
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->startNextBatchedScan()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 4997
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "wifi_country_code"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 5005
    :sswitch_f
    const/4 v9, 0x0

    .line 5006
    .local v9, "mBlacklistFilePath":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    .end local v9    # "mBlacklistFilePath":Ljava/io/File;
    const-string v22, "/data/misc/wifi/blacklist.conf"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5008
    .restart local v9    # "mBlacklistFilePath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 5009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "Blacklist file delete"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5010
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 5014
    :cond_8
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 5015
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    const-string v23, "chmod 660 /data/misc/wifi/blacklist.conf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 5016
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    const-string v23, "chown system:wifi /data/misc/wifi/blacklist.conf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5017
    :catch_0
    move-exception v5

    .line 5018
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 5023
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "mBlacklistFilePath":Ljava/io/File;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/HS20ConnectableList;

    move-result-object v23

    monitor-enter v23

    .line 5024
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v24, "HS20_CONNECTABLE_AP_FOUND: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/HS20ConnectableList;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->getBssInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->setConnectableAp(Ljava/lang/String;)Landroid/net/wifi/Hs20ScanResult;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Landroid/net/wifi/Hs20ScanResult;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/HS20ConnectableList;->update(Landroid/net/wifi/Hs20ScanResult;)V

    .line 5026
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendHS20ApChangedBroadcast()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 5026
    :catchall_0
    move-exception v22

    :try_start_2
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 5030
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "HS20_ANQP_COMPELTE"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendHS20AnqpCompleteBroadcast()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 5034
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HS20_CONFIGURATION_UPDATE, message.arg1 ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->updateHS20AnqpInfoToaddToConfiguredNetwork(I)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 5038
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 5039
    .local v13, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HS20_DISABLED_COMPLETE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/HS20ConnectableList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/HS20ConnectableList;->clear()Z

    .line 5041
    const-string v22, "cred_error"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 5042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "HS20_DISABLED_COMPLETE the eason by cred+error"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5043
    new-instance v7, Landroid/content/Intent;

    const-string v22, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5044
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5048
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v13    # "reason":Ljava/lang/String;
    :sswitch_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 5049
    .local v18, "ssid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "HS20_READY_TO_CONNECT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5050
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->reconnect()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 5054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v22

    const v23, 0x25001

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x25003

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 5057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 5059
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to connect netId: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x25002

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5065
    .end local v18    # "ssid":I
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x25022

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5122
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$6402(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 5125
    :sswitch_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 5126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    const/16 v24, 0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static/range {v22 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 5129
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$3602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    const/16 v24, 0x0

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static/range {v22 .. v24}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 5138
    :sswitch_18
    const-string v22, "WifiStateMachine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Handling WAPI_EVENT, msg ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    const-string/jumbo v21, "wapi_string"

    .line 5140
    .local v21, "wapiEventName":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v22, "android.net.wifi.supplicant.WAPI_EVENT"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5142
    .restart local v7    # "intent":Landroid/content/Intent;
    const/16 v22, 0x10

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 5148
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v21    # "wapiEventName":Ljava/lang/String;
    :sswitch_19
    const-string v22, "WifiStateMachine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Handling WAPI_EVENT, msg ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    const-string/jumbo v21, "wapi_string"

    .line 5150
    .restart local v21    # "wapiEventName":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v22, "android.net.wifi.supplicant.WAPI_EVENT"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5152
    .restart local v7    # "intent":Landroid/content/Intent;
    const/16 v22, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5157
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v21    # "wapiEventName":Ljava/lang/String;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "Detected a DRIVER HUNG"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$6600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 5160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/DhcpStateMachine;->doQuit()V

    .line 5162
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastDriverErrorMessage:I
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$6802(Landroid/net/wifi/WifiStateMachine;I)I

    .line 5164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 5165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 5174
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "MSAP_VENUE_SERVER_ADDED"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5175
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 5176
    .local v19, "venue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "android.net.wifi.MSAP_VENUE_SERVER_ADDED"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendActionMsapBroadcastEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5179
    .end local v19    # "venue":Ljava/lang/String;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "MSAP_GAS_RSP_AVAILABLE"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5180
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 5181
    .local v15, "resp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "android.net.wifi.MSAP_GAS_RSP_AVAILABLE"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendActionMsapBroadcastEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v15}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5184
    .end local v15    # "resp":Ljava/lang/String;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "MSAP_GAS_REQ_STATUS"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5185
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 5186
    .local v14, "req":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "android.net.wifi.MSAP_GAS_REQ_STATUS"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendActionMsapBroadcastEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v14}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5189
    .end local v14    # "req":Ljava/lang/String;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "MSAP_VENUE_SERVER_DELETED"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/WifiStateMachine;->access$7300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5190
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 5191
    .local v20, "venueserver":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const-string v23, "android.net.wifi.MSAP_VENUE_SERVER_DELETED"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendActionMsapBroadcastEvent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5196
    .end local v20    # "venueserver":Ljava/lang/String;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x25002

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5201
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 5204
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x25005

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5209
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 5212
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x25008

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5216
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2500c

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5220
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2500f

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5224
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x25012

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5228
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x25016

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5232
    :sswitch_28
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkInfo;

    .line 5233
    .local v6, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$7600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v22

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 5236
    .end local v6    # "info":Landroid/net/NetworkInfo;
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v23

    move/from16 v1, v22

    # setter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$7702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 5237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2300d

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 5236
    :cond_c
    const/16 v22, 0x0

    goto :goto_4

    .line 5240
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->clear()V

    .line 5242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/LinkAddress;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 5243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$7900(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 5247
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/LinkAddress;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 5248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$7900(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 5253
    :sswitch_2c
    const-string v22, "WifiStateMachine"

    const-string v23, "DefaultState::Handling CMD_SEC_API"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5258
    :sswitch_2d
    const-string v22, "WifiStateMachine"

    const-string v23, "DefaultState::Handling CMD_SEC_STRING_API"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5263
    :sswitch_2e
    const-string v22, "WifiStateMachine"

    const-string v23, "DefaultState::Handling S69 Data received request"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    new-instance v8, Landroid/content/Intent;

    const-string v22, "com.s69.location_update"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5266
    .local v8, "locationintent":Landroid/content/Intent;
    const-string v23, "length"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5270
    .end local v8    # "locationintent":Landroid/content/Intent;
    :sswitch_2f
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/Intent;

    .line 5271
    .restart local v7    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 5272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5277
    .end local v7    # "intent":Landroid/content/Intent;
    :sswitch_30
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v22

    if-eqz v22, :cond_0

    const-string v22, "WifiStateMachine"

    const-string v23, "Not in WaitForUserSelectionState"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4915
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20011 -> :sswitch_0
        0x20012 -> :sswitch_0
        0x20013 -> :sswitch_0
        0x20014 -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_0
        0x20017 -> :sswitch_0
        0x20018 -> :sswitch_0
        0x20019 -> :sswitch_0
        0x2001a -> :sswitch_0
        0x2001b -> :sswitch_0
        0x2001c -> :sswitch_0
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_0
        0x2001f -> :sswitch_3
        0x20033 -> :sswitch_5
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_5
        0x20036 -> :sswitch_5
        0x20037 -> :sswitch_0
        0x20038 -> :sswitch_0
        0x20039 -> :sswitch_0
        0x2003a -> :sswitch_5
        0x2003b -> :sswitch_6
        0x20047 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20049 -> :sswitch_0
        0x2004a -> :sswitch_0
        0x2004b -> :sswitch_0
        0x2004d -> :sswitch_9
        0x20050 -> :sswitch_0
        0x20051 -> :sswitch_e
        0x20052 -> :sswitch_7
        0x20053 -> :sswitch_0
        0x20056 -> :sswitch_17
        0x20058 -> :sswitch_0
        0x2005a -> :sswitch_0
        0x2005b -> :sswitch_8
        0x20085 -> :sswitch_0
        0x20086 -> :sswitch_a
        0x20087 -> :sswitch_b
        0x20088 -> :sswitch_d
        0x20089 -> :sswitch_c
        0x2008c -> :sswitch_2a
        0x2008d -> :sswitch_2b
        0x2008e -> :sswitch_0
        0x20119 -> :sswitch_20
        0x2011a -> :sswitch_22
        0x2012d -> :sswitch_2c
        0x2012e -> :sswitch_2d
        0x20130 -> :sswitch_2f
        0x20134 -> :sswitch_0
        0x20135 -> :sswitch_0
        0x20136 -> :sswitch_30
        0x20191 -> :sswitch_5
        0x20192 -> :sswitch_5
        0x20193 -> :sswitch_5
        0x20194 -> :sswitch_4
        0x20195 -> :sswitch_5
        0x201c2 -> :sswitch_f
        0x21015 -> :sswitch_0
        0x21016 -> :sswitch_0
        0x2300b -> :sswitch_28
        0x2300c -> :sswitch_29
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_0
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_0
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_0
        0x2400a -> :sswitch_0
        0x2400c -> :sswitch_1a
        0x2400f -> :sswitch_18
        0x24010 -> :sswitch_19
        0x2402b -> :sswitch_0
        0x2403d -> :sswitch_10
        0x2403e -> :sswitch_11
        0x2403f -> :sswitch_12
        0x24040 -> :sswitch_13
        0x24041 -> :sswitch_14
        0x24046 -> :sswitch_0
        0x24050 -> :sswitch_1b
        0x24051 -> :sswitch_1e
        0x24052 -> :sswitch_1c
        0x24053 -> :sswitch_1d
        0x2407a -> :sswitch_2e
        0x25001 -> :sswitch_1f
        0x25004 -> :sswitch_21
        0x25007 -> :sswitch_23
        0x2500a -> :sswitch_24
        0x2500e -> :sswitch_25
        0x25011 -> :sswitch_26
        0x25014 -> :sswitch_27
        0x25021 -> :sswitch_15
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_0
        0x30006 -> :sswitch_16
    .end sparse-switch
.end method
