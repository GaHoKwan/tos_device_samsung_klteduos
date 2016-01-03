.class Lcom/android/internal/policy/impl/PhoneWindowManager$34;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8122
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8125
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSettings()V

    .line 8127
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateSettings()V

    .line 8130
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8131
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCockBarServiceIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8134
    :cond_0
    return-void
.end method
