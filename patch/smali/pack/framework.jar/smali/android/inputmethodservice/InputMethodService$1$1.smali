.class Landroid/inputmethodservice/InputMethodService$1$1;
.super Landroid/os/Handler;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/InputMethodService$1;

.field final synthetic val$DEBUG_HIGH:Z


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService$1;Z)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$1$1;->this$1:Landroid/inputmethodservice/InputMethodService$1;

    iput-boolean p2, p0, Landroid/inputmethodservice/InputMethodService$1$1;->val$DEBUG_HIGH:Z

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 451
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService$1$1;->val$DEBUG_HIGH:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodService"

    const-string v1, "mSPCHandler.handleMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$1$1;->this$1:Landroid/inputmethodservice/InputMethodService$1;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    # setter for: Landroid/inputmethodservice/InputMethodService;->mCallBySpcBr:Z
    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->access$202(Landroid/inputmethodservice/InputMethodService;Z)Z

    .line 453
    return-void
.end method
