.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1156
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1157
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1161
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_0

    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->debugGetMessageName(I)Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1700(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    .line 1694
    :cond_1
    :goto_0
    return-void

    .line 1164
    :sswitch_0
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_2

    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-nez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 1168
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_3

    const-string v24, "BluetoothManagerService"

    const-string v26, "Binding to service to get name and address"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 1172
    .local v20, "timeoutMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v26, 0xbb8

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1173
    new-instance v9, Landroid/content/Intent;

    const-class v24, Landroid/bluetooth/IBluetooth;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v9, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    const/16 v27, 0x1

    sget-object v28, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1192
    .end local v9    # "i":Landroid/content/Intent;
    .end local v20    # "timeoutMsg":Landroid/os/Message;
    :goto_1
    monitor-exit v25

    goto/16 :goto_0

    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24

    .line 1178
    .restart local v9    # "i":Landroid/content/Intent;
    .restart local v20    # "timeoutMsg":Landroid/os/Message;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2002(Lcom/android/server/BluetoothManagerService;Z)Z

    goto :goto_1

    .line 1182
    .end local v9    # "i":Landroid/content/Intent;
    .end local v20    # "timeoutMsg":Landroid/os/Message;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0xc9

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 1183
    .local v18, "saveMsg":Landroid/os/Message;
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_6

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1189
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v26, 0x1f4

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1196
    .end local v18    # "saveMsg":Landroid/os/Message;
    :sswitch_1
    const/16 v21, 0x0

    .line 1197
    .local v21, "unbind":Z
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_7

    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_SAVE_NAME_AND_ADDRESS"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1199
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v24

    if-eqz v24, :cond_8

    .line 1201
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1206
    :cond_8
    :goto_2
    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1208
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1209
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v24

    if-eqz v24, :cond_10

    .line 1210
    const/4 v12, 0x0

    .line 1211
    .local v12, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1213
    .local v4, "address":Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v4

    .line 1219
    :goto_3
    if-eqz v12, :cond_d

    if-eqz v4, :cond_d

    .line 1220
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    # invokes: Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v12, v4}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1222
    const/16 v21, 0x1

    .line 1237
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v24

    if-nez v24, :cond_b

    .line 1239
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->disable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1251
    .end local v4    # "address":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    :cond_b
    :goto_5
    :try_start_9
    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1253
    :cond_c
    if-eqz v21, :cond_1

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    goto/16 :goto_0

    .line 1202
    :catch_0
    move-exception v6

    .line 1203
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to call enable()"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1206
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v24

    monitor-exit v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v24

    .line 1215
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 1216
    .local v15, "re":Landroid/os/RemoteException;
    :try_start_b
    const-string v24, "BluetoothManagerService"

    const-string v26, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1251
    .end local v4    # "address":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_2
    move-exception v24

    monitor-exit v25
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v24

    .line 1225
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_d
    :try_start_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x3

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0xc9

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1227
    .local v17, "retryMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1228
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_e

    const-string v24, "BluetoothManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Retrying name/address remote retrieval and save.....Retry count ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v17

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v26, 0x1f4

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 1231
    .end local v17    # "retryMsg":Landroid/os/Message;
    :cond_f
    const-string v24, "BluetoothManagerService"

    const-string v26, "Maximum name/address remote retrieval retry exceeded"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1233
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 1240
    :catch_2
    move-exception v6

    .line 1241
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to call disable()"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1248
    .end local v4    # "address":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v12    # "name":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0xc8

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1249
    .local v8, "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_5

    .line 1259
    .end local v8    # "getMsg":Landroid/os/Message;
    .end local v21    # "unbind":Z
    :sswitch_2
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 1260
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_ENABLE: mBluetooth = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x2a

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    const/16 v24, 0x1

    :goto_6
    move-object/from16 v0, v25

    move/from16 v1, v24

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0x0

    goto :goto_6

    .line 1268
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x2a

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_13

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    .line 1275
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 1281
    :sswitch_4
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 1282
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_ENABLE_RADIO: mBluetooth = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnableRadio(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;I)V

    goto/16 :goto_0

    .line 1289
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisableRadio(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;I)V

    goto/16 :goto_0

    .line 1294
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1295
    .local v5, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v5, :cond_1

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 1302
    .end local v5    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1303
    .restart local v5    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v5, :cond_1

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 1310
    .end local v5    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_8
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_15

    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/IBinder;

    .line 1313
    .local v19, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1314
    :try_start_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v19 .. v19}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mGattBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    # invokes: Lcom/android/server/BluetoothManagerService;->sendGattServiceStatusCallback(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;Z)V

    .line 1318
    monitor-exit v25

    goto/16 :goto_0

    .line 1384
    :catchall_3
    move-exception v24

    monitor-exit v25
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v24

    .line 1322
    :cond_16
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v19 .. v19}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1328
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v24

    const-string v26, "bluetooth_hci_log"

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    const/4 v7, 0x1

    .line 1330
    .local v7, "enableHciSnoopLog":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v24

    if-nez v24, :cond_17

    .line 1331
    const-string v24, "BluetoothManagerService"

    const-string v26, "IBluetooth.configHciSnoopLog return false"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1337
    .end local v7    # "enableHciSnoopLog":Z
    :cond_17
    :goto_8
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0xc8

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1340
    .restart local v8    # "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_19

    monitor-exit v25

    goto/16 :goto_0

    .line 1328
    .end local v8    # "getMsg":Landroid/os/Message;
    :cond_18
    const/4 v7, 0x0

    goto :goto_7

    .line 1333
    :catch_3
    move-exception v6

    .line 1334
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to call configHciSnoopLog"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1344
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1347
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1352
    :goto_9
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3300(Lcom/android/server/BluetoothManagerService;)V

    .line 1355
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 1356
    const-string v24, "BluetoothManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " Turning on BT modules Radio on = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isTurnOnRadio()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " BT On = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isTurnOnRadio()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result v24

    if-eqz v24, :cond_1c

    .line 1360
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mRadioType:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->enableRadio(I)Z

    move-result v24

    if-nez v24, :cond_1b

    .line 1361
    const-string v24, "BluetoothManagerService"

    const-string v26, "IBluetooth.enableRadio() returned false"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1366
    :cond_1b
    :goto_a
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_1c

    .line 1367
    monitor-exit v25

    goto/16 :goto_0

    .line 1348
    :catch_4
    move-exception v15

    .line 1349
    .restart local v15    # "re":Landroid/os/RemoteException;
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to register BluetoothCallback"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 1363
    .end local v15    # "re":Landroid/os/RemoteException;
    :catch_5
    move-exception v6

    .line 1364
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to call enableRadio()"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_a

    .line 1370
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1c
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_1e

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v24

    if-nez v24, :cond_1d

    .line 1372
    const-string v24, "BluetoothManagerService"

    const-string v26, "IBluetooth.enable() returned false"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 1384
    :cond_1d
    :goto_b
    :try_start_16
    monitor-exit v25
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    .line 1377
    :cond_1e
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v24

    if-nez v24, :cond_1d

    .line 1378
    const-string v24, "BluetoothManagerService"

    const-string v26, "IBluetooth.enableNoAutoConnect() returned false"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_b

    .line 1381
    :catch_6
    move-exception v6

    .line 1382
    .restart local v6    # "e":Landroid/os/RemoteException;
    :try_start_18
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to call enable()"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_b

    .line 1394
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v19    # "service":Landroid/os/IBinder;
    :sswitch_9
    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_TIMEOUT_BIND"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1396
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1397
    monitor-exit v25

    goto/16 :goto_0

    :catchall_4
    move-exception v24

    monitor-exit v25
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    throw v24

    .line 1402
    :sswitch_a
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 1403
    .local v14, "prevState":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 1404
    .local v13, "newState":I
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_1f

    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", newState="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$3502(Lcom/android/server/BluetoothManagerService;I)I

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static {v0, v14, v13}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1409
    const/16 v24, 0xb

    move/from16 v0, v24

    if-ne v14, v0, :cond_20

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v13, v0, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3700(Lcom/android/server/BluetoothManagerService;)V

    .line 1414
    :cond_20
    const/16 v24, 0xc

    move/from16 v0, v24

    if-ne v13, v0, :cond_1

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3800(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    if-eqz v24, :cond_1

    .line 1417
    const-string v24, "BluetoothManagerService"

    const-string v25, "bluetooth is recovered from error"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3802(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 1425
    .end local v13    # "newState":I
    .end local v14    # "prevState":I
    :sswitch_b
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1428
    :try_start_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_26

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-nez v24, :cond_21

    monitor-exit v25

    goto/16 :goto_0

    .line 1441
    :catchall_5
    move-exception v24

    monitor-exit v25
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    throw v24

    .line 1431
    :cond_21
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1441
    monitor-exit v25
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_22

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x2a

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 1448
    .local v16, "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v25, 0xc8

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1452
    .end local v16    # "restartMsg":Landroid/os/Message;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3900(Lcom/android/server/BluetoothManagerService;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xc

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    .line 1459
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xc

    const/16 v26, 0xd

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xd

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3502(Lcom/android/server/BluetoothManagerService;I)I

    .line 1463
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xd

    const/16 v26, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1468
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3502(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 1432
    :cond_26
    :try_start_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_27

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mGattBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    # invokes: Lcom/android/server/BluetoothManagerService;->sendGattServiceStatusCallback(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;Z)V

    .line 1436
    monitor-exit v25

    goto/16 :goto_0

    .line 1438
    :cond_27
    const-string v24, "BluetoothManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Bad msg.arg1: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    monitor-exit v25
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    goto/16 :goto_0

    .line 1475
    :sswitch_c
    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_RESTART_BLUETOOTH_SERVICE: Restart IBluetooth service"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v25

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 1487
    :sswitch_d
    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1489
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1490
    monitor-exit v25

    goto/16 :goto_0

    :catchall_6
    move-exception v24

    monitor-exit v25
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    throw v24

    .line 1496
    :sswitch_e
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_28

    .line 1497
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_USER_SWITCHED, arg1= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", arg2= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x12c

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_30

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1504
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    move-result-object v24

    if-eqz v24, :cond_29

    .line 1507
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 1512
    :cond_29
    :goto_c
    :try_start_20
    monitor-exit v25
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2a

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)I

    move-result v25

    const/16 v26, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3502(Lcom/android/server/BluetoothManagerService;I)I

    .line 1519
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2b

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)I

    move-result v25

    const/16 v26, 0xb

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xb

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3502(Lcom/android/server/BluetoothManagerService;I)I

    .line 1524
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2c

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)I

    move-result v25

    const/16 v26, 0xc

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1530
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->isRadioEnabled()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2d

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xff

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisableRadio(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;I)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendGattServiceStatusCallback(Z)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;Z)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendRadioSatusCallback(Z)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;Z)V

    .line 1538
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xc

    const/16 v26, 0xd

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xd

    const/16 v26, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$3900(Lcom/android/server/BluetoothManagerService;)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1550
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_2e

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1556
    :cond_2e
    monitor-exit v25
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 1557
    const-wide/16 v24, 0x64

    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3502(Lcom/android/server/BluetoothManagerService;I)I

    .line 1562
    const-string v24, "device_policy"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v11

    .line 1563
    .local v11, "mDPM":Landroid/app/admin/IDevicePolicyManager;
    const/16 v22, 0x0

    .line 1565
    .local v22, "userId":I
    :try_start_22
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_22} :catch_a

    .line 1572
    :goto_d
    const/16 v24, 0x0

    :try_start_23
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v24

    if-eqz v24, :cond_2f

    .line 1573
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "enable BT : IT Policy is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v25

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7

    goto/16 :goto_0

    .line 1579
    :catch_7
    move-exception v24

    goto/16 :goto_0

    .line 1508
    .end local v11    # "mDPM":Landroid/app/admin/IDevicePolicyManager;
    .end local v22    # "userId":I
    :catch_8
    move-exception v15

    .line 1509
    .restart local v15    # "re":Landroid/os/RemoteException;
    :try_start_24
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to unregister"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 1512
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_7
    move-exception v24

    monitor-exit v25
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    throw v24

    .line 1556
    :catchall_8
    move-exception v24

    :try_start_25
    monitor-exit v25
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    throw v24

    .line 1566
    .restart local v11    # "mDPM":Landroid/app/admin/IDevicePolicyManager;
    .restart local v22    # "userId":I
    :catch_9
    move-exception v6

    .line 1567
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string v24, "BluetoothManagerService"

    const-string v25, "Failed getting userId using ActivityManagerNative"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1568
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v6

    .line 1569
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v24, "BluetoothManagerService"

    const-string v25, "Failed getting userId using ActivityManagerNative"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1576
    .end local v6    # "e":Ljava/lang/SecurityException;
    :cond_2f
    :try_start_26
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "BT is not allowed by IT Policy is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_7

    goto/16 :goto_0

    .line 1585
    .end local v11    # "mDPM":Landroid/app/admin/IDevicePolicyManager;
    .end local v22    # "userId":I
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->isRadioEnabled()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_32

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    .line 1588
    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    move-result-object v24

    if-eqz v24, :cond_31

    .line 1591
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_b
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    .line 1596
    :cond_31
    :goto_e
    :try_start_29
    monitor-exit v25
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xff

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisableRadio(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;I)V

    .line 1598
    const-wide/16 v24, 0x1f4

    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1800(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setTurnOnRadio(ZI)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    const/16 v26, 0xf

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3600(Lcom/android/server/BluetoothManagerService;II)V

    .line 1604
    const-wide/16 v24, 0x64

    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3502(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 1592
    :catch_b
    move-exception v15

    .line 1593
    .restart local v15    # "re":Landroid/os/RemoteException;
    :try_start_2a
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to unregister"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 1596
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_9
    move-exception v24

    monitor-exit v25
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    throw v24

    .line 1613
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_34

    .line 1614
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x12c

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1615
    .local v23, "userMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v25, 0xc8

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1619
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1620
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "delay MESSAGE_USER_SWITCHED "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1623
    .end local v23    # "userMsg":Landroid/os/Message;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-nez v24, :cond_1

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableUserSwitch:Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnableUserSwitch:Z
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$4302(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1628
    const-string v24, "device_policy"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v11

    .line 1629
    .restart local v11    # "mDPM":Landroid/app/admin/IDevicePolicyManager;
    const/16 v22, 0x0

    .line 1631
    .restart local v22    # "userId":I
    :try_start_2b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_2b} :catch_e

    .line 1638
    :goto_f
    const/16 v24, 0x0

    :try_start_2c
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v24

    if-eqz v24, :cond_35

    .line 1639
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "enable BT : IT Policy is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_c

    goto/16 :goto_0

    .line 1645
    :catch_c
    move-exception v24

    goto/16 :goto_0

    .line 1632
    :catch_d
    move-exception v6

    .line 1633
    .local v6, "e":Landroid/os/RemoteException;
    const-string v24, "BluetoothManagerService"

    const-string v25, "Failed getting userId using ActivityManagerNative"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1634
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_e
    move-exception v6

    .line 1635
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v24, "BluetoothManagerService"

    const-string v25, "Failed getting userId using ActivityManagerNative"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1643
    .end local v6    # "e":Ljava/lang/SecurityException;
    :cond_35
    :try_start_2d
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "BT is not allowed by IT Policy is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v11, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_c

    goto/16 :goto_0

    .line 1654
    .end local v11    # "mDPM":Landroid/app/admin/IDevicePolicyManager;
    .end local v22    # "userId":I
    :sswitch_f
    # getter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1300()I

    move-result v24

    if-nez v24, :cond_37

    .line 1655
    new-instance v10, Landroid/content/Intent;

    const-string v24, "com.android.server.BT_IT_POLICY"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1656
    .local v10, "in":Landroid/content/Intent;
    const-string v24, "ToastMsg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v25

    const v26, 0x104052c

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v24

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v26, "android.permission.BLUETOOTH"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1665
    .end local v10    # "in":Landroid/content/Intent;
    :cond_36
    :goto_10
    const-string v24, "BluetoothManagerService"

    const-string v25, "mHandler.removeMessages(MESSAGE_BT_IT_POLICY"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x5

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1659
    :cond_37
    # getter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1300()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_36

    .line 1660
    new-instance v10, Landroid/content/Intent;

    const-string v24, "com.android.server.BT_IT_POLICY"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1661
    .restart local v10    # "in":Landroid/content/Intent;
    const-string v24, "ToastMsg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v25

    const v26, 0x104052d

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v24

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v26, "android.permission.BLUETOOTH"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_10

    .line 1672
    .end local v10    # "in":Landroid/content/Intent;
    :sswitch_10
    const-string v24, "BluetoothManagerService"

    const-string v25, "mHandler.removeMessages(MESSAGE_USER_SWITCHED_BT_ENABLE"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x12d

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v25

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 1680
    :sswitch_11
    const-string v24, "BluetoothManagerService"

    const-string v25, "mHandler.removeMessages(MESSAGE_BT_ENABLE_SECURITY_POPUP"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x190

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->enablePopupForBluetooth()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 1162
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_f
        0x1e -> :sswitch_6
        0x1f -> :sswitch_7
        0x28 -> :sswitch_8
        0x29 -> :sswitch_b
        0x2a -> :sswitch_c
        0x3c -> :sswitch_a
        0x64 -> :sswitch_9
        0x65 -> :sswitch_d
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_e
        0x12d -> :sswitch_10
        0x190 -> :sswitch_11
    .end sparse-switch
.end method
