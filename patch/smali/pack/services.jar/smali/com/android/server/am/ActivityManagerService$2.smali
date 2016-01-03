.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 86
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1427
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 2272
    :cond_0
    :goto_0
    return-void

    .line 1430
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Ljava/util/HashMap;

    .line 1431
    .local v53, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "anr_show_background"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v80, 0x1

    .line 1433
    .local v80, "showBackground":Z
    :goto_1
    const/4 v8, 0x0

    .line 1434
    .local v8, "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1435
    :try_start_0
    const-string v4, "app"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    .line 1436
    .local v73, "proc":Lcom/android/server/am/ProcessRecord;
    const-string v4, "result"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lcom/android/server/am/AppErrorResult;

    .line 1437
    .local v77, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v73, :cond_3

    move-object/from16 v0, v73

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_3

    .line 1438
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v73

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    if-eqz v77, :cond_1

    .line 1440
    const/4 v4, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1442
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 1497
    .end local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v77    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1431
    .end local v8    # "d":Landroid/app/Dialog;
    .end local v80    # "showBackground":Z
    :cond_2
    const/16 v80, 0x0

    goto :goto_1

    .line 1444
    .restart local v8    # "d":Landroid/app/Dialog;
    .restart local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v77    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v80    # "showBackground":Z
    :cond_3
    if-nez v80, :cond_5

    :try_start_1
    move-object/from16 v0, v73

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v6, 0x2710

    if-lt v4, v6, :cond_5

    move-object/from16 v0, v73

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-eq v4, v6, :cond_5

    move-object/from16 v0, v73

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v6, :cond_5

    .line 1447
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v73

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": background"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    if-eqz v77, :cond_4

    .line 1449
    const/4 v4, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1451
    :cond_4
    monitor-exit v5

    goto/16 :goto_0

    .line 1453
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_a

    .line 1454
    new-instance v51, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v51

    move-object/from16 v1, v77

    move-object/from16 v2, v73

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1457
    .end local v8    # "d":Landroid/app/Dialog;
    .local v51, "d":Landroid/app/Dialog;
    const/16 v4, 0x3e8

    :try_start_2
    move-object/from16 v0, v73

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v6, :cond_6

    .line 1458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->forceResetEasyOneHandService()V

    .line 1463
    :cond_6
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1465
    new-instance v4, Lcom/android/server/am/ActivityManagerService$2$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1480
    new-instance v4, Lcom/android/server/am/ActivityManagerService$2$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$2$2;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1489
    :cond_7
    move-object/from16 v0, v51

    move-object/from16 v1, v73

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    move-object/from16 v8, v51

    .line 1497
    .end local v51    # "d":Landroid/app/Dialog;
    .restart local v8    # "d":Landroid/app/Dialog;
    :cond_8
    :goto_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1498
    if-eqz v8, :cond_9

    .line 1499
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1501
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1493
    :cond_a
    if-eqz v77, :cond_8

    .line 1494
    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1504
    .end local v8    # "d":Landroid/app/Dialog;
    .end local v53    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v77    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v80    # "showBackground":Z
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Ljava/util/HashMap;

    .line 1505
    .local v52, "data":Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1506
    :try_start_5
    const-string v4, "errorpermission"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    .line 1507
    .local v70, "permission":Ljava/lang/String;
    const-string v4, "app"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    .line 1508
    .restart local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v73, :cond_b

    move-object/from16 v0, v73

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_b

    .line 1509
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v73

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    monitor-exit v5

    goto/16 :goto_0

    .line 1522
    .end local v70    # "permission":Ljava/lang/String;
    .end local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 1512
    .restart local v70    # "permission":Ljava/lang/String;
    .restart local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_b
    :try_start_6
    const-string v4, "result"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lcom/android/server/am/AppErrorResult;

    .line 1513
    .restart local v77    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_c

    .line 1514
    new-instance v8, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v77

    move-object/from16 v1, v73

    move-object/from16 v2, v70

    invoke-direct {v8, v4, v0, v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1515
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1516
    move-object/from16 v0, v73

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1522
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_4
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1520
    :cond_c
    const/4 v4, 0x0

    :try_start_7
    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 1527
    .end local v52    # "data":Ljava/util/HashMap;
    .end local v70    # "permission":Ljava/lang/String;
    .end local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v77    # "res":Lcom/android/server/am/AppErrorResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Ljava/util/HashMap;

    .line 1528
    .restart local v52    # "data":Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1529
    :try_start_8
    const-string v4, "newIntent_intent"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/Intent;

    .line 1530
    .local v63, "newIntent":Landroid/content/Intent;
    const-string v4, "newIntent_packagename"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1533
    .local v48, "cmPackagename":Ljava/lang/String;
    :try_start_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getManagedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v49

    .line 1537
    .local v49, "cmPermissions":[Ljava/lang/String;
    :goto_5
    :try_start_a
    new-instance v8, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v48

    move-object/from16 v1, v63

    move-object/from16 v2, v49

    invoke-direct {v8, v4, v0, v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V

    .line 1538
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1540
    monitor-exit v5

    goto/16 :goto_0

    .end local v8    # "d":Landroid/app/Dialog;
    .end local v48    # "cmPackagename":Ljava/lang/String;
    .end local v49    # "cmPermissions":[Ljava/lang/String;
    .end local v63    # "newIntent":Landroid/content/Intent;
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v4

    .line 1534
    .restart local v48    # "cmPackagename":Ljava/lang/String;
    .restart local v63    # "newIntent":Landroid/content/Intent;
    :catch_0
    move-exception v54

    .line 1535
    .local v54, "e":Landroid/os/RemoteException;
    const/16 v49, 0x0

    .restart local v49    # "cmPermissions":[Ljava/lang/String;
    goto :goto_5

    .line 1543
    .end local v48    # "cmPackagename":Ljava/lang/String;
    .end local v49    # "cmPermissions":[Ljava/lang/String;
    .end local v52    # "data":Ljava/util/HashMap;
    .end local v54    # "e":Landroid/os/RemoteException;
    .end local v63    # "newIntent":Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1544
    :try_start_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Ljava/util/HashMap;

    .line 1545
    .restart local v53    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "app"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    .line 1546
    .restart local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v73, :cond_d

    move-object/from16 v0, v73

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_d

    .line 1547
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v73

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    monitor-exit v20

    goto/16 :goto_0

    .line 1597
    .end local v53    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v4

    .line 1551
    .restart local v53    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_d
    :try_start_c
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_e

    .line 1553
    const/high16 v4, 0x50000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1556
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    const/16 v19, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v4 .. v19}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 1560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1561
    new-instance v8, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_10

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v11, v73

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .line 1565
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1567
    new-instance v4, Lcom/android/server/am/ActivityManagerService$2$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$2$3;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1582
    new-instance v4, Lcom/android/server/am/ActivityManagerService$2$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$2$4;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1591
    :cond_f
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1592
    move-object/from16 v0, v73

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1597
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_7
    monitor-exit v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1561
    :cond_10
    const/4 v13, 0x0

    goto :goto_6

    .line 1595
    :cond_11
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v73

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_7

    .line 1602
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v53    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Ljava/util/HashMap;

    .line 1603
    .restart local v53    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1604
    :try_start_e
    const-string v4, "app"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    .line 1605
    .restart local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v73, :cond_12

    .line 1606
    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    monitor-exit v5

    goto/16 :goto_0

    .line 1624
    .end local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v4

    .line 1609
    .restart local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_12
    :try_start_f
    move-object/from16 v0, v73

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_13

    .line 1610
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has strict mode dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v73

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    monitor-exit v5

    goto/16 :goto_0

    .line 1613
    :cond_13
    const-string v4, "result"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Lcom/android/server/am/AppErrorResult;

    .line 1614
    .restart local v77    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_14

    .line 1615
    new-instance v8, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v77

    move-object/from16 v1, v73

    invoke-direct {v8, v4, v6, v0, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1617
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1618
    move-object/from16 v0, v73

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1624
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_8
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1622
    :cond_14
    const/4 v4, 0x0

    :try_start_10
    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_8

    .line 1628
    .end local v53    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v77    # "res":Lcom/android/server/am/AppErrorResult;
    :sswitch_5
    new-instance v8, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1630
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1634
    .end local v8    # "d":Landroid/app/Dialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v78

    .line 1635
    .local v78, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v78

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_0

    .line 1638
    .end local v78    # "resolver":Landroid/content/ContentResolver;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1639
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1640
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v4

    .line 1643
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1644
    :try_start_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1645
    .local v44, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_16

    .line 1646
    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_15

    .line 1647
    new-instance v8, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    invoke-direct {v8, v4, v6, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1650
    .restart local v8    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v44

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1651
    const/4 v4, 0x1

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1652
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1660
    .end local v8    # "d":Landroid/app/Dialog;
    :cond_15
    :goto_9
    monitor-exit v5

    goto/16 :goto_0

    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_6
    move-exception v4

    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v4

    .line 1655
    .restart local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_16
    :try_start_13
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_15

    .line 1656
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1657
    const/4 v4, 0x0

    move-object/from16 v0, v44

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_9

    .line 1663
    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_17

    .line 1664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v65

    .line 1666
    .local v65, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v65

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1667
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    move-object/from16 v0, v65

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1670
    .end local v65    # "nmsg":Landroid/os/Message;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 1673
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1674
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v59, v4, -0x1

    .local v59, "i":I
    :goto_a
    if-ltz v59, :cond_19

    .line 1675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lcom/android/server/am/ProcessRecord;

    .line 1676
    .local v76, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v76

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-eqz v4, :cond_18

    .line 1678
    :try_start_15
    move-object/from16 v0, v76

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1674
    :cond_18
    :goto_b
    add-int/lit8 v59, v59, -0x1

    goto :goto_a

    .line 1679
    :catch_1
    move-exception v55

    .line 1680
    .local v55, "ex":Landroid/os/RemoteException;
    :try_start_16
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update time zone for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v76

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1684
    .end local v55    # "ex":Landroid/os/RemoteException;
    .end local v59    # "i":I
    .end local v76    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_7
    move-exception v4

    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v4

    .restart local v59    # "i":I
    :cond_19
    :try_start_17
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto/16 :goto_0

    .line 1687
    .end local v59    # "i":I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1688
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v59, v4, -0x1

    .restart local v59    # "i":I
    :goto_c
    if-ltz v59, :cond_1b

    .line 1689
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lcom/android/server/am/ProcessRecord;

    .line 1690
    .restart local v76    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v76

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v4, :cond_1a

    .line 1692
    :try_start_19
    move-object/from16 v0, v76

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 1688
    :cond_1a
    :goto_d
    add-int/lit8 v59, v59, -0x1

    goto :goto_c

    .line 1693
    :catch_2
    move-exception v55

    .line 1694
    .restart local v55    # "ex":Landroid/os/RemoteException;
    :try_start_1a
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clear dns cache for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v76

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1698
    .end local v55    # "ex":Landroid/os/RemoteException;
    .end local v59    # "i":I
    .end local v76    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_8
    move-exception v4

    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    throw v4

    .restart local v59    # "i":I
    :cond_1b
    :try_start_1b
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    goto/16 :goto_0

    .line 1701
    .end local v59    # "i":I
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v75, v0

    check-cast v75, Landroid/net/ProxyProperties;

    .line 1702
    .local v75, "proxy":Landroid/net/ProxyProperties;
    const-string v58, ""

    .line 1703
    .local v58, "host":Ljava/lang/String;
    const-string v72, ""

    .line 1704
    .local v72, "port":Ljava/lang/String;
    const-string v56, ""

    .line 1705
    .local v56, "exclList":Ljava/lang/String;
    const/16 v69, 0x0

    .line 1706
    .local v69, "pacFileUrl":Ljava/lang/String;
    if-eqz v75, :cond_1c

    .line 1707
    invoke-virtual/range {v75 .. v75}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v58

    .line 1708
    invoke-virtual/range {v75 .. v75}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v72

    .line 1709
    invoke-virtual/range {v75 .. v75}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v56

    .line 1710
    invoke-virtual/range {v75 .. v75}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v69

    .line 1712
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1713
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v59, v4, -0x1

    .restart local v59    # "i":I
    :goto_e
    if-ltz v59, :cond_1e

    .line 1714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lcom/android/server/am/ProcessRecord;

    .line 1715
    .restart local v76    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v76

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    if-eqz v4, :cond_1d

    .line 1717
    :try_start_1d
    move-object/from16 v0, v76

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v58

    move-object/from16 v1, v72

    move-object/from16 v2, v56

    move-object/from16 v3, v69

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 1713
    :cond_1d
    :goto_f
    add-int/lit8 v59, v59, -0x1

    goto :goto_e

    .line 1718
    :catch_3
    move-exception v55

    .line 1719
    .restart local v55    # "ex":Landroid/os/RemoteException;
    :try_start_1e
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update http proxy for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v76

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1724
    .end local v55    # "ex":Landroid/os/RemoteException;
    .end local v59    # "i":I
    .end local v76    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_9
    move-exception v4

    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    throw v4

    .restart local v59    # "i":I
    :cond_1e
    :try_start_1f
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    goto/16 :goto_0

    .line 1727
    .end local v56    # "exclList":Ljava/lang/String;
    .end local v58    # "host":Ljava/lang/String;
    .end local v59    # "i":I
    .end local v69    # "pacFileUrl":Ljava/lang/String;
    .end local v72    # "port":Ljava/lang/String;
    .end local v75    # "proxy":Landroid/net/ProxyProperties;
    :sswitch_d
    const-string v84, "System UIDs Inconsistent"

    .line 1728
    .local v84, "title":Ljava/lang/String;
    const-string v82, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    .line 1730
    .local v82, "text":Ljava/lang/String;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v84

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v82

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1733
    new-instance v8, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1734
    .local v8, "d":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1735
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1736
    move-object/from16 v0, v84

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1737
    move-object/from16 v0, v82

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1738
    const/4 v4, -0x1

    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xf

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v8, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1741
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1745
    .end local v8    # "d":Landroid/app/AlertDialog;
    .end local v82    # "text":Ljava/lang/String;
    .end local v84    # "title":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1751
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_1f

    .line 1752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v65

    .line 1754
    .restart local v65    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v65

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, v65

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1758
    .end local v65    # "nmsg":Landroid/os/Message;
    :cond_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1759
    .restart local v44    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1760
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v44

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1761
    monitor-exit v5

    goto/16 :goto_0

    :catchall_a
    move-exception v4

    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    throw v4

    .line 1764
    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1765
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1766
    monitor-exit v5

    goto/16 :goto_0

    :catchall_b
    move-exception v4

    monitor-exit v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    throw v4

    .line 1769
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1770
    :try_start_22
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1771
    .local v11, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_20

    const/4 v12, 0x1

    .line 1772
    .local v12, "restart":Z
    :goto_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/os/Bundle;

    .line 1773
    .local v47, "bundle":Landroid/os/Bundle;
    const-string v4, "pkg"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1774
    .local v10, "pkg":Ljava/lang/String;
    const-string v4, "reason"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1775
    .local v17, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZILjava/lang/String;)Z
    invoke-static/range {v9 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZILjava/lang/String;)Z

    .line 1777
    monitor-exit v5

    goto/16 :goto_0

    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "appid":I
    .end local v12    # "restart":Z
    .end local v17    # "reason":Ljava/lang/String;
    .end local v47    # "bundle":Landroid/os/Bundle;
    :catchall_c
    move-exception v4

    monitor-exit v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    throw v4

    .line 1771
    .restart local v11    # "appid":I
    :cond_20
    const/4 v12, 0x0

    goto :goto_10

    .line 1780
    .end local v11    # "appid":I
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 1783
    :sswitch_13
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v60

    .line 1784
    .local v60, "inm":Landroid/app/INotificationManager;
    if-eqz v60, :cond_0

    .line 1788
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v79, v0

    check-cast v79, Lcom/android/server/am/ActivityRecord;

    .line 1789
    .local v79, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v74, v0

    .line 1790
    .local v74, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v74, :cond_0

    .line 1795
    :try_start_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v74

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v50

    .line 1796
    .local v50, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10406b0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v82

    .line 1798
    .restart local v82    # "text":Ljava/lang/String;
    new-instance v66, Landroid/app/Notification;

    invoke-direct/range {v66 .. v66}, Landroid/app/Notification;-><init>()V

    .line 1799
    .local v66, "notification":Landroid/app/Notification;
    const v4, 0x1080878

    move-object/from16 v0, v66

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1800
    const-wide/16 v4, 0x0

    move-object/from16 v0, v66

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1801
    const/4 v4, 0x2

    move-object/from16 v0, v66

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1802
    move-object/from16 v0, v82

    move-object/from16 v1, v66

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1803
    const/4 v4, 0x0

    move-object/from16 v0, v66

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1804
    const/4 v4, 0x0

    move-object/from16 v0, v66

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1805
    const/4 v4, 0x0

    move-object/from16 v0, v66

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10406b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v79

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/high16 v21, 0x10000000

    const/16 v22, 0x0

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, v79

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v18 .. v23}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v66

    move-object/from16 v1, v50

    move-object/from16 v2, v82

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_23} :catch_5

    .line 1813
    const/4 v4, 0x1

    :try_start_24
    new-array v0, v4, [I

    move-object/from16 v24, v0

    .line 1814
    .local v24, "outId":[I
    const-string v19, "android"

    const-string v20, "android"

    const/16 v21, 0x0

    const v22, 0x10406b0

    move-object/from16 v0, v79

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v25, v0

    move-object/from16 v18, v60

    move-object/from16 v23, v66

    invoke-interface/range {v18 .. v25}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_24} :catch_5

    goto/16 :goto_0

    .line 1817
    .end local v24    # "outId":[I
    :catch_4
    move-exception v54

    .line 1818
    .local v54, "e":Ljava/lang/RuntimeException;
    :try_start_25
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_25} :catch_5

    goto/16 :goto_0

    .line 1822
    .end local v50    # "context":Landroid/content/Context;
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v66    # "notification":Landroid/app/Notification;
    .end local v82    # "text":Ljava/lang/String;
    :catch_5
    move-exception v54

    .line 1823
    .local v54, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1827
    .end local v54    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v60    # "inm":Landroid/app/INotificationManager;
    .end local v74    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v79    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_14
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v60

    .line 1828
    .restart local v60    # "inm":Landroid/app/INotificationManager;
    if-eqz v60, :cond_0

    .line 1832
    :try_start_26
    const-string v4, "android"

    const/4 v5, 0x0

    const v6, 0x10406b0

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v60

    invoke-interface {v0, v4, v5, v6, v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_7

    goto/16 :goto_0

    .line 1834
    :catch_6
    move-exception v54

    .line 1835
    .local v54, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1841
    .end local v54    # "e":Ljava/lang/RuntimeException;
    .end local v60    # "inm":Landroid/app/INotificationManager;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1842
    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1843
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1844
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v65

    .line 1845
    .restart local v65    # "nmsg":Landroid/os/Message;
    const-wide/32 v13, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1846
    monitor-exit v5

    goto/16 :goto_0

    .end local v65    # "nmsg":Landroid/os/Message;
    :catchall_d
    move-exception v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    throw v4

    .line 1850
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v6, v9, v13}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1854
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1855
    :try_start_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Lcom/android/server/am/ActivityRecord;

    .line 1856
    .local v45, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_22

    .line 1857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1859
    monitor-exit v5

    goto/16 :goto_0

    .line 1878
    .end local v45    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_e
    move-exception v4

    monitor-exit v5
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    throw v4

    .line 1861
    .restart local v45    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_21
    :try_start_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1864
    :cond_22
    if-eqz v45, :cond_23

    .line 1878
    :cond_23
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    goto/16 :goto_0

    .line 1882
    .end local v45    # "ar":Lcom/android/server/am/ActivityRecord;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1886
    :sswitch_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 1887
    .local v71, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v85, v0

    .line 1888
    .local v85, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v71

    move/from16 v1, v85

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .line 1893
    .end local v71    # "pid":I
    .end local v85    # "uid":I
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1894
    :try_start_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v67

    .line 1896
    .local v67, "nowTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v59, v4, -0x1

    .restart local v59    # "i":I
    :goto_11
    if-ltz v59, :cond_2a

    .line 1897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1898
    .restart local v44    # "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_24

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_25

    .line 1896
    :cond_24
    :goto_12
    add-int/lit8 v59, v59, -0x1

    goto :goto_11

    .line 1900
    :cond_25
    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->adjChanged:Z

    if-eqz v4, :cond_29

    .line 1901
    const/4 v4, 0x0

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->adjChanged:Z

    .line 1902
    move-object/from16 v0, v44

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x9

    if-lt v4, v6, :cond_27

    .line 1903
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-nez v4, :cond_26

    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    if-nez v4, :cond_26

    .line 1904
    const/4 v4, 0x1

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    goto :goto_12

    .line 1931
    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v59    # "i":I
    .end local v67    # "nowTime":J
    :catchall_f
    move-exception v4

    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    throw v4

    .line 1909
    .restart local v44    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v59    # "i":I
    .restart local v67    # "nowTime":J
    :cond_26
    :try_start_2b
    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    if-nez v4, :cond_24

    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    if-nez v4, :cond_24

    .line 1910
    const/4 v4, 0x1

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    .line 1911
    move-wide/from16 v0, v67

    move-object/from16 v2, v44

    iput-wide v0, v2, Lcom/android/server/am/ProcessRecord;->waitTime:J

    goto :goto_12

    .line 1913
    :cond_27
    move-object/from16 v0, v44

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x9

    if-ge v4, v6, :cond_24

    .line 1914
    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    if-eqz v4, :cond_28

    .line 1917
    const/4 v4, 0x0

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    goto :goto_12

    .line 1918
    :cond_28
    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    if-eqz v4, :cond_24

    .line 1919
    const/4 v4, 0x0

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    goto :goto_12

    .line 1922
    :cond_29
    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, v59

    if-ge v0, v4, :cond_24

    move-object/from16 v0, v44

    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->waitTime:J

    sub-long v13, v67, v13

    const-wide/16 v15, 0x2710

    cmp-long v4, v13, v15

    if-lez v4, :cond_24

    .line 1927
    const/4 v4, 0x1

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    .line 1928
    const/4 v4, 0x0

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    goto/16 :goto_12

    .line 1931
    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2a
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    goto/16 :goto_0

    .line 1935
    .end local v59    # "i":I
    .end local v67    # "nowTime":J
    :sswitch_1b
    invoke-static {}, Landroid/os/Process;->triggerRTCC()V

    .line 1936
    const-string v4, "ActivityManager"

    const-string v5, "RTCC_TRIGGER_MSG, ASYNC."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1941
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Ljava/util/ArrayList;

    .line 1942
    .local v61, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v83, Lcom/android/server/am/ActivityManagerService$2$5;

    move-object/from16 v0, v83

    move-object/from16 v1, p0

    move-object/from16 v2, v61

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$2$5;-><init>(Lcom/android/server/am/ActivityManagerService$2;Ljava/util/ArrayList;)V

    .line 2132
    .local v83, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v83 .. v83}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2136
    .end local v61    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v83    # "thread":Ljava/lang/Thread;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    .line 2141
    :sswitch_1e
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling container handler callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    invoke-static {}, Lcom/android/server/pm/HandlerCacheManager;->getInstance()Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v57

    .line 2143
    .local v57, "handlerManager":Lcom/android/server/pm/HandlerCacheManager;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Lcom/android/server/pm/HandlerCacheManager;->onPersonaSwitch(I)V

    goto/16 :goto_0

    .line 2148
    .end local v57    # "handlerManager":Lcom/android/server/pm/HandlerCacheManager;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    .line 2152
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    .line 2156
    :sswitch_21
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2b

    const/16 v64, 0x1

    .line 2157
    .local v64, "nextState":Z
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v64

    if-eq v4, v0, :cond_0

    .line 2162
    if-eqz v64, :cond_2c

    .line 2163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    .line 2156
    .end local v64    # "nextState":Z
    :cond_2b
    const/16 v64, 0x0

    goto :goto_13

    .line 2165
    .restart local v64    # "nextState":Z
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    .line 2171
    .end local v64    # "nextState":Z
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 2175
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v6, v9, v13}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto/16 :goto_0

    .line 2180
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2187
    :sswitch_25
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v81, v0

    .line 2188
    .local v81, "stopReason":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move/from16 v0, v81

    invoke-static {v4, v0}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationStop(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2192
    .end local v81    # "stopReason":I
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2199
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_2d

    .line 2200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v18, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ACTIVITY_RESUME_BOOSTER"

    const/16 v21, 0xc

    const-wide/16 v22, 0x0

    invoke-direct/range {v18 .. v23}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    .line 2201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2203
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_2e

    .line 2204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v18, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ACTIVITY_RESUME_BOOSTER"

    const/16 v21, 0x10

    const-wide/16 v22, 0x0

    invoke-direct/range {v18 .. v23}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    .line 2205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2207
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_2f

    .line 2208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v18, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ACTIVITY_RESUME_BOOSTER"

    const/16 v21, 0x13

    const-wide/16 v22, 0x0

    invoke-direct/range {v18 .. v23}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    .line 2209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2211
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_30

    .line 2212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v18, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ACTIVITY_RESUME_BOOSTER"

    const/16 v21, 0xe

    const-wide/16 v22, 0x0

    invoke-direct/range {v18 .. v23}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    .line 2213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2216
    :cond_30
    sget v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_31

    .line 2217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    sget v5, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2218
    const/4 v4, 0x0

    sput v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    .line 2220
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_32

    .line 2221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    sget v5, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2223
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_33

    .line 2224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    sget v5, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2226
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    sget v5, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 2234
    :sswitch_28
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GOT message for MSG_USER_SWITCHED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->sendUserSwitchBroadcastsLocked(II)V

    .line 2236
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_34

    .line 2237
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/os/Bundle;

    .line 2238
    .local v46, "b":Landroid/os/Bundle;
    const-string v4, "needStart"

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 2239
    .local v62, "needStart":Z
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " GOT object for MSG_USER_SWITCHED needStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v62

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    if-eqz v62, :cond_34

    .line 2241
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STARTING"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2242
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2243
    const-string v4, "android.intent.extra.user_handle"

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    new-instance v30, Lcom/android/server/am/ActivityManagerService$2$6;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$2$6;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "android.permission.INTERACT_ACROSS_USERS"

    const/16 v35, -0x1

    const/16 v36, 0x1

    const/16 v37, 0x0

    sget v38, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v39, 0x3e8

    const/16 v40, -0x1

    move-object/from16 v28, v7

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v25 .. v40}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 2260
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v46    # "b":Landroid/os/Bundle;
    .end local v62    # "needStart":Z
    :cond_34
    new-instance v43, Landroid/content/Intent;

    const-string v4, "android.server.display.wfd.DISCONNECT"

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2261
    .local v43, "ScreenIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2263
    new-instance v42, Landroid/content/Intent;

    const-string v4, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2264
    .local v42, "PowerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2266
    new-instance v41, Landroid/content/Intent;

    const-string v4, "android.settings.DORMANTMODE_CHANGED"

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2267
    .local v41, "DormantIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2269
    const-string v4, "ActivityManager"

    const-string v5, "GOT message for MSG_USER_SWITCHED DONE.... "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1837
    .end local v41    # "DormantIntent":Landroid/content/Intent;
    .end local v42    # "PowerIntent":Landroid/content/Intent;
    .end local v43    # "ScreenIntent":Landroid/content/Intent;
    .restart local v60    # "inm":Landroid/app/INotificationManager;
    :catch_7
    move-exception v4

    goto/16 :goto_0

    .line 1820
    .restart local v50    # "context":Landroid/content/Context;
    .restart local v66    # "notification":Landroid/app/Notification;
    .restart local v74    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v79    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v82    # "text":Ljava/lang/String;
    :catch_8
    move-exception v4

    goto/16 :goto_0

    .line 1497
    .end local v50    # "context":Landroid/content/Context;
    .end local v60    # "inm":Landroid/app/INotificationManager;
    .end local v66    # "notification":Landroid/app/Notification;
    .end local v74    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v79    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v82    # "text":Ljava/lang/String;
    .restart local v51    # "d":Landroid/app/Dialog;
    .restart local v53    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v73    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v77    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v80    # "showBackground":Z
    :catchall_10
    move-exception v4

    move-object/from16 v8, v51

    .end local v51    # "d":Landroid/app/Dialog;
    .local v8, "d":Landroid/app/Dialog;
    goto/16 :goto_2

    .line 1427
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_11
        0x17 -> :sswitch_12
        0x18 -> :sswitch_13
        0x19 -> :sswitch_14
        0x1a -> :sswitch_4
        0x1b -> :sswitch_15
        0x1c -> :sswitch_b
        0x1d -> :sswitch_c
        0x1e -> :sswitch_17
        0x1f -> :sswitch_18
        0x20 -> :sswitch_19
        0x21 -> :sswitch_1c
        0x22 -> :sswitch_1d
        0x23 -> :sswitch_1f
        0x24 -> :sswitch_20
        0x25 -> :sswitch_21
        0x26 -> :sswitch_22
        0x27 -> :sswitch_23
        0x28 -> :sswitch_1
        0x29 -> :sswitch_2
        0x2a -> :sswitch_27
        0x2b -> :sswitch_1a
        0x2c -> :sswitch_1b
        0x2d -> :sswitch_28
        0x190 -> :sswitch_25
        0x191 -> :sswitch_26
        0x1f4 -> :sswitch_24
        0x258 -> :sswitch_1e
        0x3e7 -> :sswitch_16
    .end sparse-switch
.end method
