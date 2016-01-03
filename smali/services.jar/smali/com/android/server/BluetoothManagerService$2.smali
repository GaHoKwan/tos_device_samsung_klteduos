.class Lcom/android/server/BluetoothManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "action":Ljava/lang/String;
    const-string v10, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 254
    const-string v10, "android.bluetooth.adapter.extra.LOCAL_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "newName":Ljava/lang/String;
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bluetooth Adapter name changed to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    if-eqz v6, :cond_1

    .line 257
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v11, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v6, v11}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v6    # "newName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 260
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    monitor-enter v11

    .line 261
    :try_start_0
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 262
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 263
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v12, 0x2

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v10, v12}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;I)V

    .line 268
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 270
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;)V

    .line 275
    :cond_4
    :goto_2
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 265
    :cond_5
    :try_start_1
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v12, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    invoke-static {v10, v12}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;I)V

    goto :goto_1

    .line 271
    :cond_6
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 273
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v12, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z
    invoke-static {v12}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v12

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v10, v12}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 276
    :cond_7
    const-string v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 279
    const-string v10, "android.intent.extra.user_handle"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 280
    .local v9, "userId":I
    const-string v10, "old_user_id"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 282
    .local v7, "oldUserId":I
    const/16 v10, 0x64

    if-ge v9, v10, :cond_8

    const/16 v10, 0x64

    if-lt v7, v10, :cond_9

    :cond_8
    invoke-static {v9}, Landroid/os/PersonaManager;->isCACEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 283
    :cond_9
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v11}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v11

    const/16 v12, 0x12c

    const-string v13, "android.intent.extra.user_handle"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 286
    .end local v7    # "oldUserId":I
    .end local v9    # "userId":I
    :cond_a
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 287
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    monitor-enter v11

    .line 288
    :try_start_2
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 290
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "BluetoothManagerService"

    const-string v12, "Auto-enabling Bluetooth."

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_b
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v12, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z
    invoke-static {v12}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v12

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v10, v12}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;Z)V

    .line 293
    :cond_c
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 297
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "BluetoothManagerService"

    const-string v11, "Retrieving Bluetooth Adapter name and address..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_d
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v10}, Lcom/android/server/BluetoothManagerService;->getNameAndAddress()V

    goto/16 :goto_0

    .line 293
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 302
    :cond_e
    const-string v10, "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 303
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_BT_SecurityMdmService"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 305
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v10, "BLUETOOTH_ON"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 306
    .local v2, "controlValue":I
    const-string v10, "bluetooth_on"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-lez v10, :cond_1

    .line 307
    const/4 v10, 0x1

    if-ne v2, v10, :cond_f

    .line 308
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v10}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 309
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v10}, Lcom/android/server/BluetoothManagerService;->enable()Z

    goto/16 :goto_0

    .line 311
    :cond_f
    if-nez v2, :cond_1

    .line 312
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/BluetoothManagerService;->disable(Z)Z

    goto/16 :goto_0

    .line 319
    .end local v2    # "controlValue":I
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :cond_10
    const-string v10, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, "isNotiLockScreen":Z
    const-string v10, "isNotiFromLockScreen"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 324
    if-eqz v4, :cond_11

    .line 325
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "BluetoothManagerService"

    const-string v11, "EXTRA_NOTIFY_FROM_LOCKSCREEN"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 327
    :cond_11
    const-string v10, "device_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v5

    .line 328
    .local v5, "mDPM":Landroid/app/admin/IDevicePolicyManager;
    const/4 v9, 0x0

    .line 330
    .restart local v9    # "userId":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v10

    iget v9, v10, Landroid/content/pm/UserInfo;->id:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 337
    :goto_3
    :try_start_5
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Intent IT Policy"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v9}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Tethering IT Policy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v9}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v10}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 340
    const/4 v10, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$1302(I)I

    .line 341
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPolicy = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1300()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/BluetoothManagerService;->disable(Z)Z

    .line 343
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v11}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 354
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 331
    :catch_1
    move-exception v3

    .line 332
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "BluetoothManagerService"

    const-string v11, "Failed getting userId using ActivityManagerNative"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 333
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 334
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v10, "BluetoothManagerService"

    const-string v11, "Failed getting userId using ActivityManagerNative"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 344
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_12
    const/4 v10, 0x0

    :try_start_6
    invoke-interface {v5, v10, v9}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    .line 345
    const/4 v10, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$1302(I)I

    .line 346
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPolicy = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1300()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v10, "service.bt.security.policy.mode"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static {v11}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 349
    :cond_13
    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 350
    const/4 v10, 0x2

    # setter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$1302(I)I

    .line 351
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPolicy = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1300()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v10, "service.bt.security.policy.mode"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 367
    .end local v4    # "isNotiLockScreen":Z
    .end local v5    # "mDPM":Landroid/app/admin/IDevicePolicyManager;
    .end local v9    # "userId":I
    :cond_14
    const-string v10, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 368
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ChinaNalSecurity"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 371
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 372
    const-string v10, "BluetoothManagerService"

    const-string v11, "hong - dismiss dialog"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;
    invoke-static {v10}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->cancel()V

    goto/16 :goto_0
.end method
