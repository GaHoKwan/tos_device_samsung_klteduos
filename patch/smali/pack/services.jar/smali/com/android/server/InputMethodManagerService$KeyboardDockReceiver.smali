.class Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardDockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 751
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, "intentAction":Ljava/lang/String;
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputMethodService onReceive() intentAction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 755
    .local v0, "extra":I
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() getIntExtra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 757
    # |= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->access$576(I)I

    .line 759
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_NTTVoiceInput"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 761
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforJapaneseKeyboard()V

    .line 766
    :goto_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 768
    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$700()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 769
    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$700()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 770
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    .line 791
    .end local v0    # "extra":I
    :cond_0
    :goto_1
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputMethodService onReceive() keyboardState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$500()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void

    .line 762
    .restart local v0    # "extra":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isChineseIMEinstalled()Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$600(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 763
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforChineseKeyboard()V

    goto :goto_0

    .line 765
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    goto :goto_0

    .line 782
    :cond_3
    const/4 v2, -0x2

    # &= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$572(I)I

    .line 784
    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$800()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 785
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$800()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 787
    :cond_4
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$KeyboardDockReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 788
    const/4 v2, 0x0

    # setter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$802(I)I

    goto :goto_1
.end method
