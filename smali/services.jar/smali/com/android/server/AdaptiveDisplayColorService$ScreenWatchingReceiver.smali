.class final Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method private constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;Lcom/android/server/AdaptiveDisplayColorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AdaptiveDisplayColorService;
    .param p2, "x1"    # Lcom/android/server/AdaptiveDisplayColorService$1;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/android/server/AdaptiveDisplayColorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    const-string v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 264
    .local v1, "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v4}, Lcom/android/server/AdaptiveDisplayColorService;->access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->boot_complete()V
    invoke-static {v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$200(Lcom/android/server/AdaptiveDisplayColorService;)V

    .line 296
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 270
    const-string v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 271
    .restart local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v4}, Lcom/android/server/AdaptiveDisplayColorService;->access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    .line 273
    :cond_3
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_on_intent()V
    invoke-static {v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$300(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 276
    .end local v1    # "keyGuardManager":Landroid/app/KeyguardManager;
    :cond_4
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 277
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->receive_screen_off_intent()V
    invoke-static {v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$400(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 280
    :cond_5
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 281
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->isLockScreenOn:Z
    invoke-static {v3, v5}, Lcom/android/server/AdaptiveDisplayColorService;->access$102(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    goto :goto_0

    .line 284
    :cond_6
    const-string v3, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 285
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    const-string v4, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/android/server/AdaptiveDisplayColorService;->mMultiWindowOn:Z
    invoke-static {v3, v4}, Lcom/android/server/AdaptiveDisplayColorService;->access$502(Lcom/android/server/AdaptiveDisplayColorService;Z)Z

    goto :goto_0

    .line 288
    :cond_7
    const-string v3, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    const-string v3, "reason"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 290
    .local v2, "reason":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 292
    :cond_8
    iget-object v3, p0, Lcom/android/server/AdaptiveDisplayColorService$ScreenWatchingReceiver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->emergency_mode_changed_intent()V
    invoke-static {v3}, Lcom/android/server/AdaptiveDisplayColorService;->access$600(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0
.end method
