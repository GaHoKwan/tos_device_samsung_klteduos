.class final Lcom/android/server/am/MultiWindowPolicy$H;
.super Landroid/os/Handler;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_CLOSE_PENWINDOW:I = 0x2

.field private static final MSG_MINIMIZE_ALL:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 211
    :pswitch_0
    # getter for: Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/MultiWindowPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowPolicy"

    const-string v1, "MSG_MINIMIZE_ALL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowPolicy;->minimizeAll(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_1
    # getter for: Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/MultiWindowPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MultiWindowPolicy"

    const-string v1, "MSG_CLOSE_PENWINDOW"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->closePenWindow()V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
