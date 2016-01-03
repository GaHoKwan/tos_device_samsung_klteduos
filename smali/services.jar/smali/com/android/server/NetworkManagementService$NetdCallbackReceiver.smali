.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 491
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$102(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 500
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 504
    sparse-switch p1, :sswitch_data_0

    .line 657
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 513
    :sswitch_0
    array-length v0, p3

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, p3, v0

    const-string v1, "Iface"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_1
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Added Wi-Fi hotspot "

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x1

    goto :goto_0

    .line 525
    :cond_2
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 528
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Removed Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    :cond_3
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string v1, "changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, p3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 534
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    const/4 v2, 0x4

    aget-object v2, p3, v2

    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 536
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Changed Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 541
    :cond_4
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string v1, "linkstate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, p3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 542
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    const/4 v2, 0x4

    aget-object v2, p3, v2

    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 544
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Linkstate Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 550
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :sswitch_1
    array-length v0, p3

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    const/4 v0, 0x1

    aget-object v0, p3, v0

    const-string v1, "limit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 559
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_7
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string v1, "alert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 563
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    const/4 v2, 0x4

    aget-object v2, p3, v2

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 566
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :sswitch_2
    array-length v0, p3

    const/4 v1, 0x4

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    aget-object v0, p3, v0

    const-string v1, "IfaceClass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 575
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_a
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 579
    .local v9, "isActive":Z
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v9}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 580
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 588
    .end local v9    # "isActive":Z
    :sswitch_3
    const-string v0, "Invalid event from daemon (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 589
    .local v10, "msg":Ljava/lang/String;
    array-length v0, p3

    const/4 v1, 0x6

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    aget-object v0, p3, v0

    const-string v1, "Address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 590
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_c
    const/4 v0, 0x5

    :try_start_0
    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 597
    .local v7, "flags":I
    const/4 v0, 0x6

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 602
    .local v11, "scope":I
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "updated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 603
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    const/4 v2, 0x4

    aget-object v2, p3, v2

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v7, v11}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 607
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 598
    .end local v7    # "flags":I
    .end local v11    # "scope":I
    :catch_0
    move-exception v6

    .line 599
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "flags":I
    .restart local v11    # "scope":I
    :cond_d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    const/4 v2, 0x4

    aget-object v2, p3, v2

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v7, v11}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 611
    .end local v7    # "flags":I
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "scope":I
    :sswitch_4
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "sta_join"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "sta_leave"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 613
    :cond_e
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "sta_join"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 614
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Client device connected to Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_f
    :goto_2
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "EVENT"

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v0, "NetworkManagementService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    array-length v0, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_10

    .line 627
    const-string v0, "NUM"

    const/4 v1, 0x3

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    const-string v0, "NetworkManagementService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_10
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "sta_leave"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    array-length v0, p3

    const/4 v1, 0x4

    if-le v0, v1, :cond_11

    .line 631
    const-string v0, "MAC"

    const/4 v1, 0x4

    aget-object v1, p3, v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    :cond_11
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 617
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_12
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "sta_leave"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 618
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Client device disconnected from Wi-Fi hotspot"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 636
    :cond_13
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "sta_assoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 637
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "EVENT"

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v0, "NetworkManagementService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    array-length v0, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_14

    .line 641
    const-string v0, "MAC"

    const/4 v1, 0x3

    aget-object v1, p3, v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    :cond_14
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 644
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 646
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_15
    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "wps_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "wps_fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "wps_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "wps_overlap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x2

    aget-object v0, p3, v0

    const-string/jumbo v1, "wps_pin_needed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 647
    :cond_16
    const-string v0, "NetworkManagementService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wps State Action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "EVENT"

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 651
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 653
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid event from daemon (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_2
        0x266 -> :sswitch_3
        0x28b -> :sswitch_4
    .end sparse-switch
.end method
