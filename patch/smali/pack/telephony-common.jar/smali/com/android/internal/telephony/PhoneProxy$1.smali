.class Lcom/android/internal/telephony/PhoneProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v3, 0x7d0

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Lcom/android/internal/telephony/PhoneProxy;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.action.LTE_MODE_CHNAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    # getter for: Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->access$100(Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->disableDataConnectivity()Z

    .line 117
    const-string v0, "lte_mode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
