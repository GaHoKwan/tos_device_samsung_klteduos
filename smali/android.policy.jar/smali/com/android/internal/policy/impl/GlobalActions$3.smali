.class Lcom/android/internal/policy/impl/GlobalActions$3;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1502(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0

    .line 680
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 723
    invoke-super {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 10

    .prologue
    const v6, 0x10401fb

    const v7, 0x10401fa

    const v4, 0x10401f5

    const v3, 0x10401f4

    const v5, 0x10401f3

    .line 592
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 593
    const-string v2, "GlobalActions"

    const-string v8, "in onPress of AirplaneMode"

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string v8, "VZW"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v2, v8}, Lcom/android/internal/policy/impl/GlobalActions;->access$1002(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 597
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string v9, "usb"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v8, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1102(Lcom/android/internal/policy/impl/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;

    .line 599
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 600
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v8, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1002(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 604
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string v8, "enterprise_policy"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 606
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_5

    .line 607
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 609
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3

    .line 610
    const-string v2, "GlobalActions"

    const-string v3, "restricted by MDM "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_3
    :goto_1
    return-void

    .line 600
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 616
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string v8, "phone"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 617
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v8, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v2, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 619
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 620
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v9, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v2, v9, :cond_6

    move v2, v3

    :goto_2
    const v4, 0x10401f8

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v6

    :goto_3
    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v8, p0, v2, v4, v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    goto :goto_2

    :cond_7
    move v2, v5

    goto :goto_2

    :cond_8
    move v3, v7

    goto :goto_3

    .line 629
    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v9, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v8, v9, :cond_a

    :goto_4
    const v4, 0x10401fd

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_5
    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v2, p0, v3, v4, v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    goto :goto_1

    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    goto :goto_4

    :cond_b
    move v3, v5

    goto :goto_4

    :cond_c
    move v6, v7

    goto :goto_5

    .line 639
    :cond_d
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 640
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v9, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v8, v9, :cond_e

    :goto_6
    const v4, 0x10401f9

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_7
    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v2, p0, v3, v4, v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    goto/16 :goto_1

    :cond_e
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v4

    goto :goto_6

    :cond_f
    move v3, v5

    goto :goto_6

    :cond_10
    move v6, v7

    goto :goto_7

    .line 649
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v9, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v8, v9, :cond_12

    :goto_8
    const v4, 0x10401fd

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_14

    :goto_9
    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    invoke-static {v2, p0, v3, v4, v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    goto/16 :goto_1

    :cond_12
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v4

    goto :goto_8

    :cond_13
    move v3, v5

    goto :goto_8

    :cond_14
    move v6, v7

    goto :goto_9
.end method

.method onToggle(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1302(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 665
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 667
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 668
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 673
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 670
    :cond_0
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAirplaneModeSystemSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1400(Lcom/android/internal/policy/impl/GlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 691
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AirplaneModeOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_4

    .line 696
    const-string v2, "LGT"

    const-string v3, "CMCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    const-string v2, "lock"

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 698
    goto :goto_0

    .line 701
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DSNETWORK"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 702
    const-string v0, "GlobalActions"

    const-string v2, "DSNETWORK : true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 703
    goto :goto_0

    .line 704
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "PINPUKRequest"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 705
    const-string v0, "GlobalActions"

    const-string v2, "DSNETWORK PINPUKRequest : true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 706
    goto :goto_0

    :cond_4
    move v0, v1

    .line 719
    goto :goto_0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x1

    return v0
.end method