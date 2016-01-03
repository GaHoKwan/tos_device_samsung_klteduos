.class final Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
.super Landroid/os/Handler;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    .line 207
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 208
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    # invokes: Lcom/android/server/cover/CoverManagerService;->handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V
    invoke-static {v3, v0, v1}, Lcom/android/server/cover/CoverManagerService;->access$000(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_2
    # invokes: Lcom/android/server/cover/CoverManagerService;->handleSendCoverAttachState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->access$100(Lcom/android/server/cover/CoverManagerService;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleHideSViewCover()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$200(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    .line 223
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleShowSViewCover()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$300(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    .line 226
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v1, v0}, Lcom/android/server/cover/CoverManagerService;->access$400(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 229
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_2

    :goto_3
    # invokes: Lcom/android/server/cover/CoverManagerService;->handleDisableCoverManagerLocked(Z)V
    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->access$500(Lcom/android/server/cover/CoverManagerService;Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    .line 232
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleStartFreezeScreen()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$600(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    .line 235
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleStopFreezeScreen()V
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$700(Lcom/android/server/cover/CoverManagerService;)V

    goto :goto_0

    .line 238
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/server/cover/CoverManagerService;->access$800(Lcom/android/server/cover/CoverManagerService;Z)V

    goto :goto_0

    .line 241
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->this$0:Lcom/android/server/cover/CoverManagerService;

    # invokes: Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V
    invoke-static {v0, v2}, Lcom/android/server/cover/CoverManagerService;->access$800(Lcom/android/server/cover/CoverManagerService;Z)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
