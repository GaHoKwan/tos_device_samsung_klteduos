.class Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "IRGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1642
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v5, 0x1

    .line 1644
    .local v5, "isAirplaneMode":Z
    :goto_0
    const-string v12, "IRGsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Global mode] action = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1649
    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mScreenOn:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$002(Z)Z

    .line 1651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1652
    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$100()Z

    move-result v12

    if-nez v12, :cond_0

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$200()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1653
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/ServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 1867
    :cond_1
    :goto_1
    return-void

    .line 1642
    .end local v5    # "isAirplaneMode":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1656
    .restart local v5    # "isAirplaneMode":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/ServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto :goto_1

    .line 1660
    :cond_4
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1661
    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mScreenOn:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$302(Z)Z

    goto :goto_1

    .line 1663
    :cond_5
    const-string v12, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_GSM"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1664
    if-nez v5, :cond_9

    .line 1665
    const-string v12, "CP"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1666
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startGlobalNetworkSearchTimer()V

    .line 1668
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->isSlot1GsmActive(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v12

    if-eqz v12, :cond_7

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$400()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->isSlot1GsmActive(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v12

    if-nez v12, :cond_1

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$500()Z

    move-result v12

    if-nez v12, :cond_1

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$600()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1669
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNoServiceNotiIntent()V

    goto :goto_1

    .line 1673
    :cond_9
    const-string v12, "IRGsmSST"

    const-string v13, "[Global mode] Now airplane mode on."

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    goto/16 :goto_1

    .line 1677
    :cond_a
    const-string v12, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_GSM"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1678
    if-nez v5, :cond_10

    .line 1679
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1680
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "GSM_MANUAL_SRCH_ONGOING"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    const/4 v3, 0x1

    .line 1682
    .local v3, "gsmManSrchOngoing":Z
    :goto_2
    const-string v12, "IRGsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Global mode] IsManSelMode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/internal/telephony/ServiceStateTracker;->IsManSelMode:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " gsmManSrchOngoing: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    sget-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->IsManSelMode:Z

    if-nez v12, :cond_e

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v12

    if-nez v12, :cond_e

    .line 1685
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->isPwrSaveModeRequired()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/ServiceStateTracker;->startPwrSaveModeTimer(Lcom/android/internal/telephony/PhoneBase;I)V

    goto/16 :goto_1

    .line 1680
    .end local v3    # "gsmManSrchOngoing":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_2

    .line 1689
    .restart local v3    # "gsmManSrchOngoing":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNetChangeIntent(Z)V

    .line 1690
    sget-boolean v12, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oosTimerRunning:Z

    if-eqz v12, :cond_d

    .line 1691
    const-string v12, "IRGsmSST"

    const-string v13, "[Global mode] oosTimerRunning. stopManualOosTimer."

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    .line 1694
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->incNetSrchCnt(I)V

    .line 1698
    const/4 v12, 0x0

    sput v12, Lcom/android/internal/telephony/ServiceStateTracker;->currGsmMccInt:I

    goto/16 :goto_1

    .line 1702
    :cond_e
    const-string v12, "IRGsmSST"

    const-string v13, "[Global mode] gsm manual mode. Not send ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_GSM"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 1705
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 1709
    .end local v3    # "gsmManSrchOngoing":Z
    :cond_f
    const-string v12, "IRGsmSST"

    const-string v13, "[Global mode] Ignore EXPIRED_INTERNAL_GSM."

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 1714
    :cond_10
    const-string v12, "IRGsmSST"

    const-string v13, "[Global mode] Now airplane mode on."

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 1718
    :cond_11
    const-string v12, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1719
    if-nez v5, :cond_14

    .line 1720
    const-string v12, "IRGsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Global mode] mCurrentSrchNet : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$800()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mPsmStayTimerProcessed : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPsmStayTimerProcessed:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$900()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1722
    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1000()Z

    move-result v12

    if-nez v12, :cond_12

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1100()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1723
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/ServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 1726
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/ServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 1731
    :cond_14
    const-string v12, "IRGsmSST"

    const-string v13, "[Global mode] Now airplane mode on."

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1734
    :cond_15
    const-string v12, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_CDMA_IN_CHINA"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1738
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimerDirectly()V
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    goto/16 :goto_1

    .line 1741
    :cond_16
    const-string v12, "android.intent.action.ACTION_EVENT_OOS_TIMEOUT_RPT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 1742
    const/4 v6, 0x0

    .line 1747
    .local v6, "isGsmActive":Z
    const-string v12, "gsm.sim.state"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1748
    .local v9, "simState":Ljava/lang/String;
    const-string v12, "READY"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1750
    const-string v13, "IRGsmSST"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_EVENT_OOS_TIMEOUT_RPT expired!!! IsManualSelection : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v12

    if-nez v12, :cond_17

    sget-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->IsManSelMode:Z

    if-eqz v12, :cond_19

    :cond_17
    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " isAirplaneMode : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " isGsmActive : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " mCurrentSrchNet:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1300()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->alreadyExpired:Z

    .line 1758
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v12

    if-nez v12, :cond_18

    sget-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->IsManSelMode:Z

    if-eqz v12, :cond_1a

    :cond_18
    const/4 v8, 0x1

    .line 1761
    .local v8, "needToSendOosIntent":Z
    :goto_4
    if-eqz v8, :cond_1b

    .line 1762
    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v6, :cond_1

    .line 1764
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.ACTION_200SEC_OOS_TIMER_EXPIRED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1765
    .local v4, "intentFwd":Landroid/content/Intent;
    const-string v12, "currScanNetwork"

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    goto/16 :goto_1

    .line 1750
    .end local v4    # "intentFwd":Landroid/content/Intent;
    .end local v8    # "needToSendOosIntent":Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_3

    .line 1758
    :cond_1a
    const/4 v8, 0x0

    goto :goto_4

    .line 1771
    .restart local v8    # "needToSendOosIntent":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    goto/16 :goto_1

    .line 1782
    .end local v6    # "isGsmActive":Z
    .end local v8    # "needToSendOosIntent":Z
    .end local v9    # "simState":Ljava/lang/String;
    :cond_1c
    const-string v12, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_RESP"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 1783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->switchToCdmaInChinaMacauArea(Z)V

    goto/16 :goto_1

    .line 1785
    :cond_1d
    const-string v12, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_GSM_IN_HONGKONG"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 1788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .line 1790
    :cond_1e
    const-string v12, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1792
    .local v2, "extra":Landroid/os/Bundle;
    const-string v12, "CDMA"

    const-string v13, "pendedMode"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 1793
    const-string v12, "switchToCdmaInChinaMacauArea"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 1794
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v13, "CDMA"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1797
    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v13, "CDMA"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1801
    :cond_20
    const-string v12, "IRGsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Global mode] pendedMode error:: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "pendedMode"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1804
    .end local v2    # "extra":Landroid/os/Bundle;
    :cond_21
    const-string v12, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1806
    .restart local v2    # "extra":Landroid/os/Bundle;
    const-string v12, "CDMA"

    const-string v13, "pendedMode"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 1807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopPendingIntentTimer()V

    .line 1808
    const-string v12, "isSwitchToCdmaInChinaMacauArea"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 1809
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->switchToCdmaInChinaMacauArea(Z)V

    goto/16 :goto_1

    .line 1812
    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNetChangeIntent(Z)V

    goto/16 :goto_1

    .line 1816
    :cond_23
    const-string v12, "IRGsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Global mode] pendedMode error:: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "pendedMode"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1819
    .end local v2    # "extra":Landroid/os/Bundle;
    :cond_24
    const-string v12, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 1820
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->switchToCdmaInChinaMacauArea(Z)V

    goto/16 :goto_1

    .line 1823
    :cond_25
    const-string v12, "com.samsung.intent.action.Slot1SwitchCompleted"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 1824
    const-string v12, "IRGsmSST"

    const-string v13, "[Global Mode] ReduceSearchTime - Slot1SwitchCompleted"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    sget-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->slot2ReduceSearchTimerAvailable()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1400(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)Z

    move-result v12

    if-nez v12, :cond_27

    .line 1829
    :cond_26
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    .line 1831
    :cond_27
    const-string v12, "IRGsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Global Mode] ReduceSearchTime - mReduceSearchTimeShouldProceed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const-string v12, "ril.mHasEverSwitchedToGsm"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1834
    .local v7, "mHasEverSwitchedToGsm":Ljava/lang/String;
    sget-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    if-eqz v12, :cond_28

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_28

    const-string v12, "true"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 1835
    const-wide/32 v12, 0x11170

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSystemTime:J
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)J

    move-result-wide v16

    sub-long v14, v14, v16

    sub-long v10, v12, v14

    .line 1836
    .local v10, "timeElapsed":J
    const-string v12, "IRGsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[Global Mode] ReduceSearchTime - timeElapsed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const-wide/16 v12, 0x3e8

    cmp-long v12, v10, v12

    if-lez v12, :cond_29

    .line 1839
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12, v10, v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startReduceSearchTimer(J)V

    .line 1848
    .end local v10    # "timeElapsed":J
    :cond_28
    :goto_5
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    goto/16 :goto_1

    .line 1843
    .restart local v10    # "timeElapsed":J
    :cond_29
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSlot1ShouldSwitchImmediately:Z

    .line 1844
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNetChangeIntent(Z)V

    goto :goto_5

    .line 1850
    .end local v7    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    .end local v10    # "timeElapsed":J
    :cond_2a
    const-string v12, "com.samsung.intent.action.ReduceSearchTimerExpired"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 1851
    const-string v12, "IRGsmSST"

    const-string v13, "[Global Mode] ReduceSearchTime - ReduceSearchTimerExpired"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const-string v12, "ril.mHasEverSwitchedToGsm"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1854
    .restart local v7    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const-string v12, "true"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->slot2ReduceSearchTimerAvailable()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1400(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1857
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/internal/telephony/ServiceStateTracker;->mSlot1ShouldSwitchImmediately:Z

    .line 1858
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNetChangeIntent(Z)V

    goto/16 :goto_1

    .line 1861
    .end local v7    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    :cond_2b
    const-string v12, "com.samsung.intent.action.SlotSwitched"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 1862
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->SlotSwitched()V

    goto/16 :goto_1

    .line 1865
    :cond_2c
    const-string v12, "IRGsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RIL received unexpected Intent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method