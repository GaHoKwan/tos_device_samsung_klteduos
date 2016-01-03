.class Lcom/android/internal/policy/impl/GlobalActions$4;
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
.field private prevState:Z

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
    .line 733
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->prevState:Z

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3
    .param p1, "buttonOn"    # Z

    .prologue
    .line 749
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in changeStateFromPress of LongLifeMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 794
    invoke-super {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 3

    .prologue
    .line 738
    const-string v1, "GlobalActions"

    const-string v2, "in onPress of LongLifeMode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    const-string v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 743
    return-void

    .line 740
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 745
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onToggle of LongLifeMode on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 758
    const-string v9, "KOR"

    const-string v10, "CHN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 759
    const-string v9, "ril.domesticOtaStart"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "domesticOtaStart":Ljava/lang/String;
    const-string v9, "true"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 761
    sget-boolean v7, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    .line 762
    const-string v7, "GlobalActions"

    const-string v9, "EmergencyMode is disable on OTA mode"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .end local v1    # "domesticOtaStart":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 768
    :cond_1
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$900()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Emergency"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-ne v9, v7, :cond_2

    move v8, v7

    .line 770
    goto :goto_0

    .line 771
    :cond_2
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$900()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v7, :cond_0

    .line 774
    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v4

    .line 775
    .local v4, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 776
    .local v2, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v5

    .line 777
    .local v5, "kioskModeEnabled":Z
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x200

    invoke-virtual {v2, v9}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v6, v7

    .line 778
    .local v6, "upsmModeEnabled":Z
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "kids_home_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_5

    move v3, v7

    .line 779
    .local v3, "kidsModeEnabled":Z
    :goto_2
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->canSetMode()Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-nez v3, :cond_6

    move v0, v7

    .line 780
    .local v0, "currentState":Z
    :goto_3
    const-string v7, "GlobalActions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showConditional currentState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->prevState:Z

    if-eq v7, v0, :cond_3

    .line 782
    const-string v7, "GlobalActions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showConditional EmergencyMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->prevState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->prevState:Z

    .line 784
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$4;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlobalActions;->access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_3
    move v8, v0

    .line 786
    goto/16 :goto_0

    .end local v0    # "currentState":Z
    .end local v3    # "kidsModeEnabled":Z
    .end local v6    # "upsmModeEnabled":Z
    :cond_4
    move v6, v8

    .line 777
    goto/16 :goto_1

    .restart local v6    # "upsmModeEnabled":Z
    :cond_5
    move v3, v8

    .line 778
    goto :goto_2

    .restart local v3    # "kidsModeEnabled":Z
    :cond_6
    move v0, v8

    .line 779
    goto :goto_3
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x1

    return v0
.end method
