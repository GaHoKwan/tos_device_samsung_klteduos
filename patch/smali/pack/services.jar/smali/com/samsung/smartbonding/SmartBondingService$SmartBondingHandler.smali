.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
.super Landroid/os/Handler;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartBondingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method public constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    .line 388
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 389
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 392
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 394
    :pswitch_0
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EVENT_ENABLE_SB_INTERFACES called"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 395
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    .line 396
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSiopToastCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 398
    .local v12, "siopMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 399
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 403
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    .end local v12    # "siopMessage":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "mDisableBySIOP is true so that convert sb state as idle"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 407
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 409
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 410
    .local v10, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v4

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I

    .line 412
    monitor-exit v3

    goto/16 :goto_0

    .end local v10    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 401
    .restart local v12    # "siopMessage":Landroid/os/Message;
    :cond_5
    const/4 v1, 0x5

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 416
    .end local v12    # "siopMessage":Landroid/os/Message;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    .line 417
    :try_start_2
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_BOOT_COMPLETED called / enable : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 418
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1000(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1100(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 423
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 427
    .restart local v10    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    .end local v10    # "message":Landroid/os/Message;
    :goto_2
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 429
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1400(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 435
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 436
    :try_start_4
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ENABLE_SB called / enable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v3}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 437
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1000(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1100(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 447
    :cond_a
    const/4 v2, 0x1

    .line 454
    .local v2, "enabled":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 456
    .local v17, "wifiMessage":Landroid/os/Message;
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 461
    .end local v17    # "wifiMessage":Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 463
    .local v11, "mobileMessage":Landroid/os/Message;
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v3, 0x1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->setMobileDataEnabled(Z)V
    invoke-static {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->access$1800(Lcom/samsung/smartbonding/SmartBondingService;Z)V

    .line 468
    .end local v11    # "mobileMessage":Landroid/os/Message;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->access$1602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    .line 470
    const-string v1, "VZW"

    const-string v3, "CMCC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->setSBNotificationEnabled(Z)V

    .line 476
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 477
    .restart local v10    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStatusChangedIntent(IJJ)V
    invoke-static/range {v1 .. v6}, Lcom/samsung/smartbonding/SmartBondingService;->access$1900(Lcom/samsung/smartbonding/SmartBondingService;IJJ)V

    .line 479
    monitor-exit v18

    goto/16 :goto_0

    .end local v2    # "enabled":I
    .end local v10    # "message":Landroid/os/Message;
    :catchall_2
    move-exception v1

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 449
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1400(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 450
    const/4 v2, 0x0

    .restart local v2    # "enabled":I
    goto/16 :goto_3

    .line 483
    .end local v2    # "enabled":I
    :pswitch_3
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "EVENT_MOBILE_CONNECTION_TURN_OFF_WITH_DELAYED"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 484
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2000(Lcom/samsung/smartbonding/SmartBondingService;)Z

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 486
    .restart local v10    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 490
    .end local v10    # "message":Landroid/os/Message;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    .line 491
    :try_start_6
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "EVENT_MOBILE_CONNECTION_RENEW called"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 492
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkRemovedProcess()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2100(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v4

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I

    .line 499
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 500
    .restart local v10    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    monitor-exit v3

    goto/16 :goto_0

    .end local v10    # "message":Landroid/os/Message;
    :catchall_3
    move-exception v1

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 495
    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfacesEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    .line 505
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    .line 506
    :try_start_8
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_UPDATE_SB_STATE called / mDisableBySIOP "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 507
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2400(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_16

    .line 509
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "sb state is on working"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 510
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkTrafficMonitorCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->startTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2600(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 513
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v4, 0x3

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$2402(Lcom/samsung/smartbonding/SmartBondingService;I)I

    .line 514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStartIntent()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2700(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 543
    :cond_16
    :goto_5
    monitor-exit v3

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    .line 516
    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2400(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_16

    .line 518
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "sb state is on enabled"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 519
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkEnableToastCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2400(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_19

    .line 520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 521
    .local v8, "enableMessage":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    .end local v8    # "enableMessage":Landroid/os/Message;
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3000(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v4, 0x2

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$2402(Lcom/samsung/smartbonding/SmartBondingService;I)I

    goto :goto_5

    .line 528
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2400(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_16

    .line 530
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "sb state is on idle"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 531
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3000(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v4, 0x1

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$2402(Lcom/samsung/smartbonding/SmartBondingService;I)I

    goto/16 :goto_5

    .line 536
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2400(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 537
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "sb state is on none"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 538
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3000(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v4, 0x0

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$2402(Lcom/samsung/smartbonding/SmartBondingService;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_5

    .line 547
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 548
    .local v14, "toastID":I
    const-string v10, ""

    .line 549
    .local v10, "message":Ljava/lang/String;
    const/4 v15, 0x1

    .line 550
    .local v15, "toastTime":I
    const/4 v1, 0x2

    if-ne v14, v1, :cond_1e

    .line 551
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 553
    .restart local v10    # "message":Ljava/lang/String;
    :cond_1e
    const/4 v1, 0x3

    if-ne v14, v1, :cond_1f

    .line 554
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 556
    .restart local v10    # "message":Ljava/lang/String;
    :cond_1f
    const/4 v1, 0x1

    if-ne v14, v1, :cond_20

    .line 557
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 558
    .restart local v10    # "message":Ljava/lang/String;
    const/4 v15, 0x0

    .line 560
    :cond_20
    const/4 v1, 0x4

    if-ne v14, v1, :cond_21

    .line 561
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 563
    .restart local v10    # "message":Ljava/lang/String;
    :cond_21
    const/4 v1, 0x5

    if-ne v14, v1, :cond_22

    .line 564
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 566
    .restart local v10    # "message":Ljava/lang/String;
    :cond_22
    const/4 v1, 0x6

    if-ne v14, v1, :cond_23

    .line 567
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 569
    .restart local v10    # "message":Ljava/lang/String;
    :cond_23
    const/4 v1, 0x7

    if-ne v14, v1, :cond_24

    .line 570
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 572
    .restart local v10    # "message":Ljava/lang/String;
    :cond_24
    const/16 v1, 0x8

    if-ne v14, v1, :cond_25

    .line 573
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 575
    .restart local v10    # "message":Ljava/lang/String;
    :cond_25
    const/16 v1, 0x9

    if-ne v14, v1, :cond_26

    .line 576
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 577
    .restart local v10    # "message":Ljava/lang/String;
    const/4 v15, 0x0

    .line 579
    :cond_26
    const/16 v1, 0xa

    if-ne v14, v1, :cond_27

    .line 580
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 581
    .restart local v10    # "message":Ljava/lang/String;
    const/4 v15, 0x0

    .line 583
    :cond_27
    const/16 v1, 0xb

    if-ne v14, v1, :cond_28

    .line 584
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 586
    .restart local v10    # "message":Ljava/lang/String;
    :cond_28
    const/16 v1, 0xc

    if-ne v14, v1, :cond_29

    .line 587
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10407ec

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .end local v10    # "message":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 589
    .restart local v10    # "message":Ljava/lang/String;
    :cond_29
    const/16 v1, 0xd

    if-ne v14, v1, :cond_2a

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/16 v3, 0xd

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V
    invoke-static {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->access$3100(Lcom/samsung/smartbonding/SmartBondingService;I)V

    goto/16 :goto_0

    .line 593
    :cond_2a
    const/16 v1, 0xe

    if-ne v14, v1, :cond_2b

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/16 v3, 0xe

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V
    invoke-static {v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->access$3100(Lcom/samsung/smartbonding/SmartBondingService;I)V

    goto/16 :goto_0

    .line 597
    :cond_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3200(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v10, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    .line 598
    .local v13, "toast":Landroid/widget/Toast;
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 602
    .end local v10    # "message":Ljava/lang/String;
    .end local v13    # "toast":Landroid/widget/Toast;
    .end local v14    # "toastID":I
    .end local v15    # "toastTime":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    .line 603
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 604
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    if-nez v1, :cond_2d

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showSpeedToast()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3400(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 612
    :cond_2c
    :goto_6
    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    .line 606
    :cond_2d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2e

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showTimerToast()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3500(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto :goto_6

    .line 609
    :cond_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarToast()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3600(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    .line 616
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->hideTrafficMonitorToast()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3700(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto/16 :goto_0

    .line 620
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    .line 621
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 622
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2f

    .line 623
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->updateTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$3900(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 630
    :goto_7
    monitor-exit v3

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v1

    .line 625
    :cond_2f
    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto :goto_7

    .line 628
    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_7

    .line 634
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    .line 635
    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$4100(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v4

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$4002(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    .line 636
    monitor-exit v3

    goto/16 :goto_0

    :catchall_7
    move-exception v1

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v1

    .line 640
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    .line 641
    :try_start_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 642
    .local v16, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    if-eqz v16, :cond_31

    .line 643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mHost:Ljava/lang/String;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$4200(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    .line 645
    :cond_31
    monitor-exit v3

    goto/16 :goto_0

    .end local v16    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :catchall_8
    move-exception v1

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v1

    .line 649
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v3

    .line 650
    :try_start_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_34

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "start_poll"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$4400(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$4302(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;

    .line 654
    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$4400(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 655
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 656
    .local v10, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v10, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 662
    .end local v10    # "message":Landroid/os/Message;
    :cond_33
    :goto_8
    monitor-exit v3

    goto/16 :goto_0

    :catchall_9
    move-exception v1

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw v1

    .line 659
    :cond_34
    :try_start_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const-string v4, ""

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$4302(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;

    .line 660
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_8

    .line 666
    :pswitch_d
    const-string v9, "/sdcard/log"

    .line 668
    .local v9, "logPath":Ljava/lang/String;
    :try_start_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdir -p "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 669
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHttpLogEnabled : create log folder : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    .line 674
    :cond_35
    :goto_9
    :try_start_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 675
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHttpLogEnabled : make permission log folder : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2

    .line 679
    :cond_36
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/smartbonding"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 681
    :try_start_14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdir -p "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 682
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHttpLogEnabled : create log folder : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3

    .line 687
    :cond_37
    :goto_b
    :try_start_15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 688
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHttpLogEnabled : make permission log folder : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_0

    .line 689
    :catch_0
    move-exception v7

    .line 690
    .local v7, "e":Ljava/io/IOException;
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "setHttpLogEnabled : can\'t create folder"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 670
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 671
    .restart local v7    # "e":Ljava/io/IOException;
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "setHttpLogEnabled : can\'t create folder"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 676
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 677
    .restart local v7    # "e":Ljava/io/IOException;
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "setHttpLogEnabled : can\'t create folder"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 683
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 684
    .restart local v7    # "e":Ljava/io/IOException;
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "setHttpLogEnabled : can\'t create folder"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto :goto_b

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_d
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
