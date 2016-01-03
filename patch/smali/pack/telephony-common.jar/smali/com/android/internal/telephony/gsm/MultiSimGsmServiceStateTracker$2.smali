.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 217
    const-string v2, "Combination"

    const-string v3, "Combination"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "IMC"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CANCEL_POWER_ON_DELAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$200(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop the timer and power on now in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setRadioPowerOnNow()V

    .line 231
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLocaleChanged:Z
    invoke-static {v2, v6}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z

    .line 238
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->updateSpnDisplay()V

    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLocaleChanged:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z

    .line 260
    :cond_2
    :goto_1
    const-string v2, "CHN"

    const-string v3, "CHN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->updateSpnDisplay()V

    .line 264
    :cond_3
    const-string v2, "CTC"

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->updateSpnDisplay()V

    .line 268
    :cond_4
    const-string v2, "CTC"

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.intent.action.slot2LPM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    const-string v2, "gsm.sim.state2"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "simState":Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 272
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v3, "slot 2 is ABSENT. Radio power off"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    .line 278
    .end local v0    # "simState":Ljava/lang/String;
    :cond_5
    return-void

    .line 225
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CANCEL_POWER_ON_TIMER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->clearPowerOnTimer()V

    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_0

    .line 245
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v3, "KDW, INTENT_VALUE_ICC_LOADED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_1
.end method
