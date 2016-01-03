.class Lcom/android/server/SEAMService$DrsHandler;
.super Landroid/os/Handler;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SEAMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrsHandler"
.end annotation


# instance fields
.field drs:Lcom/android/server/DrsService;

.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method constructor <init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/server/SEAMService$DrsHandler;->this$0:Lcom/android/server/SEAMService;

    .line 524
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 521
    invoke-static {}, Lcom/android/server/DrsService;->getInstance()Lcom/android/server/DrsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SEAMService$DrsHandler;->drs:Lcom/android/server/DrsService;

    .line 525
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 536
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 557
    :goto_0
    :pswitch_0
    return-void

    .line 538
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    .line 539
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedList;

    .line 540
    .local v1, "data":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/SEAMService$DrsHandler;->drs:Lcom/android/server/DrsService;

    invoke-virtual {v2, v1}, Lcom/android/server/DrsService;->relabelDataDir(Ljava/util/Queue;)Z

    goto :goto_0

    .line 542
    .end local v1    # "data":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_0
    # getter for: Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;
    invoke-static {}, Lcom/android/server/SEAMService;->access$100()Lcom/android/server/SKLogger;

    move-result-object v2

    const-string v3, "SEAMService"

    const-string v4, "data type not match"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 548
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 549
    .local v0, "data":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/SEAMService$DrsHandler;->drs:Lcom/android/server/DrsService;

    invoke-virtual {v2, v0}, Lcom/android/server/DrsService;->relabelAppDir(Ljava/lang/String;)Z

    goto :goto_0

    .line 551
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    # getter for: Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;
    invoke-static {}, Lcom/android/server/SEAMService;->access$100()Lcom/android/server/SKLogger;

    move-result-object v2

    const-string v3, "SEAMService"

    const-string v4, "data type not match"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    .line 529
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/SEAMService$DrsHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 533
    return-void

    .line 531
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
