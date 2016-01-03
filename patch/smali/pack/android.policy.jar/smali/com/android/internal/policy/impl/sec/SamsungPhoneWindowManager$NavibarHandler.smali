.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;
.super Landroid/os/Handler;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavibarHandler"
.end annotation


# static fields
.field private static final MSG_FORCE_CLOSE:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NavibarHandler"

.field private static final TIMEOUT_DELAY:I = 0x7d0


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 4315
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 4315
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method private forceTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4351
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn call forceTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4353
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4355
    return-void
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4344
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn call resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4346
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4348
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 4326
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4341
    :goto_0
    return-void

    .line 4329
    :pswitch_0
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn received MSG_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setStatusBarHideOnNormalScreen(ZZ)V

    goto :goto_0

    .line 4334
    :pswitch_1
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn requsted to close navibar by MSG_FORCE_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->forceTimeout()V

    goto :goto_0

    .line 4326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postCloseSystembar()V
    .locals 2

    .prologue
    .line 4358
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn postCloseSystembar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->forceTimeout()V

    .line 4361
    return-void
.end method

.method public postShowSystembar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4364
    const-string v0, "NavibarHandler"

    const-string v1, "ysahn postShowSystembar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setStatusBarShowOnFullScreen(ZZ)V

    .line 4366
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->resetTimeout()V

    .line 4367
    return-void
.end method
