.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;
.super Landroid/database/ContentObserver;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartBondingAirplaneModeSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3298
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    .line 3299
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3300
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3314
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3315
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SmartBondingAirplaneModeSettingObserver : turn on airplan mode."

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 3316
    :cond_0
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3317
    :cond_1
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3318
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4800()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SmartBondingAirplaneModeSettingObserver : user is owner / disable smart bonding"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 3320
    :cond_2
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z
    invoke-static {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$4902(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    .line 3321
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$1602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    .line 3323
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBEnabled(Z)V

    .line 3338
    :cond_3
    :goto_0
    return-void

    .line 3327
    :cond_4
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SmartBondingAirplaneModeSettingObserver : turn off airplan mode."

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 3329
    :cond_5
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4600(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->isKioskContainer:Z
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3330
    :cond_6
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$4800()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartBondingAirplaneModeSettingObserver : user is owner and it doesn\'t contain wfc / resetting smart bonding / pre setting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$4900(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 3331
    :cond_7
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->access$4900(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3332
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->access$4900(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->setSBEnabled(Z)V

    .line 3333
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z
    invoke-static {v0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->access$4902(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3303
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3304
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3305
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3308
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3309
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3310
    return-void
.end method