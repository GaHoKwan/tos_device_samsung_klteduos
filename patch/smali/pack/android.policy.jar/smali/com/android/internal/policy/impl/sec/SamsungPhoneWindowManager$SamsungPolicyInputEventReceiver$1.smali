.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;
.super Lcom/android/internal/policy/impl/sec/StatusBarWindowController;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 2472
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/sec/StatusBarWindowController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onHideStatusBarOnNormalScreen(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    .line 2479
    const-string v0, "StatusBarWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ysahn SPWM onHideStatusBarOnNormalScreen : hide = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNavibarHandler:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->postCloseSystembar()V

    .line 2482
    return-void
.end method

.method public onShowStatusBarOnFullScreen(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 2474
    const-string v0, "StatusBarWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ysahn SPWM onShowStatusBarOnFullScreen : show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver$1;->this$1:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungPolicyInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mNavibarHandler:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$NavibarHandler;->postShowSystembar()V

    .line 2477
    return-void
.end method
