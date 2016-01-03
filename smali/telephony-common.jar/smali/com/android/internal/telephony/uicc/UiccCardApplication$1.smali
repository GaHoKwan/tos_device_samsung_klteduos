.class Lcom/android/internal/telephony/uicc/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 516
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 517
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 518
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x64

    const/16 v11, 0xe

    const/16 v7, 0x1a

    const-wide/16 v9, 0xa

    const/16 v8, 0xd

    .line 526
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 527
    const-string v5, "CHN"

    const-string v6, "CHN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v11, :cond_0

    .line 530
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 531
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 533
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] while being destroyed. Ignoring."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 725
    :goto_0
    return-void

    .line 538
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 723
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :pswitch_1
    const/4 v1, -0x1

    .line 548
    .local v1, "attemptsRemaining":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 549
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 550
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v1

    .line 552
    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 553
    .local v4, "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 554
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 555
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 558
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "attemptsRemaining":I
    .end local v4    # "response":Landroid/os/Message;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 559
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 562
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 563
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$400(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    .line 565
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getPinRemainingStatus(Landroid/os/Message;)V

    .line 567
    invoke-virtual {p0, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 568
    .local v2, "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 571
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 572
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$600(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 575
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 576
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$700(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    .line 578
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getPinRemainingStatus(Landroid/os/Message;)V

    .line 580
    invoke-virtual {p0, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 581
    .restart local v2    # "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 585
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 586
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 587
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in change icc app password with exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 589
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 590
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x1

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$800(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 593
    :cond_3
    invoke-virtual {p0, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 594
    .restart local v2    # "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 597
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 598
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    .line 599
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in change icc app password with exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 601
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 602
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x3

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$800(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 607
    :cond_4
    :goto_1
    invoke-virtual {p0, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 608
    .restart local v2    # "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 605
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v6, "EVENT_CHANGE_PIN2_DONE finish"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    goto :goto_1

    .line 613
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 615
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 616
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x1

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$800(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 618
    :cond_6
    const-string v5, "CHN"

    const-string v6, "CHN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 620
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    .line 621
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v6, 0x270f

    # setter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$902(Lcom/android/internal/telephony/uicc/UiccCardApplication;I)I

    .line 623
    :cond_7
    invoke-virtual {p0, v11, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 624
    .restart local v2    # "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 626
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :cond_8
    invoke-virtual {p0, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 627
    .restart local v2    # "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 629
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getPinRemainingStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 636
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 638
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_9

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 639
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x3

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$800(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 641
    :cond_9
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 643
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getPinRemainingStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 649
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 651
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_a

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_a

    .line 652
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x2

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$800(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 654
    :cond_a
    const-string v5, "CHN"

    const-string v6, "CHN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 656
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_b

    .line 657
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v6, 0x270f

    # setter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$902(Lcom/android/internal/telephony/uicc/UiccCardApplication;I)I

    .line 659
    :cond_b
    invoke-virtual {p0, v11, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 660
    .restart local v2    # "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 662
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :cond_c
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    .line 664
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getPinRemainingStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 671
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 673
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_d

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_d

    .line 674
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x4

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$800(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 676
    :cond_d
    invoke-virtual {p0, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 677
    .restart local v2    # "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 679
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getPinRemainingStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 683
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :pswitch_c
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v6, "EVENT_WAIT_UPDATE_DONE"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 685
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 686
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_e

    .line 687
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v6, "EVENT_WAIT_UPDATE_DONE finish"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 688
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 690
    :cond_e
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # operator++ for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1008(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    .line 691
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v6, "EVENT_WAIT_UPDATE_DONE again"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 693
    .local v3, "delayedMsgAgain":Landroid/os/Message;
    invoke-virtual {p0, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 699
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "delayedMsgAgain":Landroid/os/Message;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 700
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    move-result v5

    const/16 v6, 0x5dc

    if-le v5, v6, :cond_10

    .line 701
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v6, "EVENT_WAIT_UPDATE_STATE_DONE finish"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 702
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_f

    .line 703
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception is occurred : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 705
    :cond_f
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 707
    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    move-result v5

    rem-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_11

    .line 708
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_WAIT_UPDATE_STATE_DONE again ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 710
    :cond_11
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # operator++ for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$908(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    .line 711
    invoke-virtual {p0, v11, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 712
    .restart local v3    # "delayedMsgAgain":Landroid/os/Message;
    invoke-virtual {p0, v3, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 718
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "delayedMsgAgain":Landroid/os/Message;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 719
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPinRemainingDone(Landroid/os/AsyncResult;)V
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
