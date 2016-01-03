.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 1181
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1185
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1187
    .local v6, "cr":Landroid/content/ContentResolver;
    const-string v20, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1188
    const-string v20, "connected"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 1189
    .local v17, "usbConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const-string v21, "rndis"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1191
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1192
    const-string v20, "enabled"

    const-string v21, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1194
    const-wide/16 v20, 0x3e8

    :try_start_0
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1199
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 1200
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1201
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$302(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const-string v21, "ncm"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$602(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1212
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 1214
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1215
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1217
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$702(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1610
    .end local v17    # "usbConnected":Z
    :cond_3
    :goto_1
    :pswitch_0
    return-void

    .line 1201
    .restart local v17    # "usbConnected":Z
    :catchall_0
    move-exception v20

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v20

    .line 1215
    :catchall_1
    move-exception v20

    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v20

    .line 1219
    .end local v17    # "usbConnected":Z
    :cond_4
    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1220
    const-string v20, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkInfo;

    .line 1222
    .local v13, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1224
    const-string v20, "Tethering"

    const-string v21, "Tethering got CONNECTIVITY_ACTION"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v20

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1230
    .end local v13    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string v20, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto :goto_1

    .line 1234
    :cond_6
    const-string v20, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1235
    const-string v20, "Tethering"

    const-string v21, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1239
    const-string v20, "Tethering"

    const-string v21, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v10, v0, [Ljava/lang/String;

    .line 1244
    .local v10, "ifaces":[Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v10

    .line 1250
    move-object v5, v10

    .local v5, "arr$":[Ljava/lang/String;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v9, v5, v8

    .line 1251
    .local v9, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v9}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1252
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1255
    .local v15, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1256
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v0, v9}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    .line 1250
    .end local v15    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1245
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "iface":Ljava/lang/String;
    .end local v11    # "len$":I
    :catch_0
    move-exception v7

    .line 1246
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1262
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "ifaces":[Ljava/lang/String;
    :cond_8
    const-string v20, "Tethering"

    const-string v21, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1266
    :cond_9
    const-string v20, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_c

    :cond_a
    # getter for: Lcom/android/server/connectivity/Tethering;->mRVFMode:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1700()I

    move-result v20

    if-nez v20, :cond_c

    .line 1268
    const-string v20, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1269
    .local v16, "type":Ljava/lang/String;
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    if-eqz v16, :cond_3

    .line 1271
    const-string v20, "NUM"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1272
    .local v14, "numExtra":I
    if-gez v14, :cond_b

    const/4 v14, 0x0

    .line 1273
    :cond_b
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v14, :cond_3

    .line 1275
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v20

    # setter for: Lcom/android/server/connectivity/Tethering;->mLastClients:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1902(I)I

    .line 1276
    # setter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {v14}, Lcom/android/server/connectivity/Tethering;->access$1802(I)I

    .line 1277
    const-string v20, "Tethering"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "**number of client: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->add_client_event:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2002(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const v21, 0x10808d1

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    .line 1329
    .end local v14    # "numExtra":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_c
    const-string v20, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1330
    const-string/jumbo v20, "wifi_state"

    const/16 v21, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1331
    .local v4, "apState":I
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 1347
    .end local v4    # "apState":I
    :cond_d
    const-string v20, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1348
    const-string v20, "Tethering"

    const-string v21, "SCREEN_ON is received"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    # getter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()Z

    move-result v20

    if-eqz v20, :cond_3

    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2300()Z

    move-result v20

    if-nez v20, :cond_3

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "connectivity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 1351
    .local v12, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v20

    if-nez v20, :cond_e

    .line 1352
    const-string v20, "Tethering"

    const-string v21, "SCREEN_ON --> data enable"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1355
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v20

    const-string/jumbo v21, "wifi"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    .line 1356
    .local v19, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v18

    .line 1357
    .local v18, "wifiApState":I
    const/16 v20, 0xa

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    const/16 v20, 0xb

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1359
    :cond_f
    const-string v20, "Tethering"

    const-string v21, "SCREEN_ON --> hotspot on"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_1

    .line 1464
    .end local v12    # "mCm":Landroid/net/ConnectivityManager;
    .end local v18    # "wifiApState":I
    .end local v19    # "wm":Landroid/net/wifi/WifiManager;
    :cond_10
    const-string v20, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 1551
    const-string v20, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v21 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v21, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    .line 1557
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v21 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v21, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    .line 1565
    :cond_12
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 1566
    const-string v20, "Tethering"

    const-string v21, "Boot complete."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2702(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v20

    if-nez v20, :cond_13

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v21

    # setter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->access$2802(Lcom/android/server/connectivity/Tethering;Landroid/app/enterprise/knoxcustom/KnoxCustomManager;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 1573
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedUsbNetState()Z

    move-result v20

    if-eqz v20, :cond_3

    const-string v20, "adb_enabled"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-nez v20, :cond_3

    .line 1577
    const-string v20, "Tethering"

    const-string v21, "Activate Sealed USB Net on boot up"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_1

    .line 1583
    :cond_14
    const-string v20, "enabled"

    const-string v21, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1584
    const-string v20, "Tethering"

    const-string v21, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const-string v20, "net.tether.always"

    const-string v21, "1"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_1

    .line 1593
    :cond_15
    const-string v20, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    goto/16 :goto_1

    .line 1195
    .restart local v17    # "usbConnected":Z
    :catch_1
    move-exception v20

    goto/16 :goto_0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
