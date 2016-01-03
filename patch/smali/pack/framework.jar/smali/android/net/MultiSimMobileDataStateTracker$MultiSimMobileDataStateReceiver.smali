.class Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MultiSimMobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSimMobileDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MultiSimMobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MultiSimMobileDataStateTracker;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MultiSimMobileDataStateTracker;Landroid/net/MultiSimMobileDataStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/MultiSimMobileDataStateTracker;
    .param p2, "x1"    # Landroid/net/MultiSimMobileDataStateTracker$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;-><init>(Landroid/net/MultiSimMobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    const-string v12, "simSlot"

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 175
    .local v9, "simSlot":I
    const-string v12, "persist.sys.dataprefer.simid"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v4

    .line 197
    .local v4, "dataPreferSimSlot":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Check, simSlot="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", dataPreferSimSlot="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v13, "mms"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 199
    const-string v12, "ril.datacross.simid"

    const/4 v13, -0x1

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 201
    .local v3, "crossSimSlot":I
    const/4 v12, -0x1

    if-eq v3, v12, :cond_0

    .line 202
    move v4, v3

    .line 206
    .end local v3    # "crossSimSlot":I
    :cond_0
    if-eq v9, v4, :cond_2

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 212
    const-string v12, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v14, "Broadcast received: ACTION_ANY_DATA_CONNECTION_STATE_CHANGEDmApnType=%s %s received apnType=%s"

    const/4 v12, 0x3

    new-array v15, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v12

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "=="

    :goto_1
    aput-object v12, v15, v16

    const/4 v12, 0x2

    aput-object v2, v15, v12

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 223
    .local v7, "oldSubtype":I
    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getNetworkType()I

    move-result v6

    .line 224
    .local v6, "newSubType":I
    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "subTypeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v6, v11}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 226
    if-eq v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const v13, 0x70003

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v15, v15, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v13, v7, v14, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 229
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 232
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    const-class v12, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v13, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 234
    .local v10, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v12, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, "reason":Ljava/lang/String;
    const-string v12, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v13, "networkRoaming"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v14, v14, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " setting isAvailable to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "networkUnvailable"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v12, "networkUnvailable"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received state="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", old="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v14, v14, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", reason="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v8, :cond_7

    const-string v12, "(unspecified)"

    :goto_3
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", simSlot = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v12, v10, :cond_a

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iput-object v10, v12, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 251
    sget-object v12, Landroid/net/MultiSimMobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_0

    .line 253
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v12}, Landroid/net/MultiSimMobileDataStateTracker;->isTeardownRequested()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->setTeardownRequested(Z)V

    .line 257
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v6    # "newSubType":I
    .end local v7    # "oldSubtype":I
    .end local v8    # "reason":Ljava/lang/String;
    .end local v10    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v11    # "subTypeName":Ljava/lang/String;
    :cond_5
    const-string v12, "!="

    goto/16 :goto_1

    .line 242
    .restart local v1    # "apnName":Ljava/lang/String;
    .restart local v6    # "newSubType":I
    .restart local v7    # "oldSubtype":I
    .restart local v8    # "reason":Ljava/lang/String;
    .restart local v10    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .restart local v11    # "subTypeName":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_7
    move-object v12, v8

    .line 246
    goto :goto_3

    .line 266
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v12, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkProperties;

    iput-object v12, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 274
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v12, :cond_8

    .line 275
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "CONNECTED event did not supply link properties."

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    iput-object v13, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 278
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v12, "linkCapabilities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkCapabilities;

    iput-object v12, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v12, :cond_9

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "CONNECTED event did not supply link capabilities."

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v13, Landroid/net/LinkCapabilities;

    invoke-direct {v13}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v13, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 284
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_a
    const-string v12, "linkPropertiesChanged"

    invoke-static {v8, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v12, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkProperties;

    iput-object v12, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 292
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v12, :cond_b

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "No link property in LINK_PROPERTIES change event."

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    iput-object v13, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 297
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v14, v14, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v8, v14}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const v13, 0x70001

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v14, v14, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 301
    .restart local v5    # "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 304
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "newSubType":I
    .end local v7    # "oldSubtype":I
    .end local v8    # "reason":Ljava/lang/String;
    .end local v10    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v11    # "subTypeName":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 306
    const-string v12, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .restart local v2    # "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 309
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "Broadcast received: ACTION_ANY_DATA_CONNECTION_FAILED ignore, mApnType=%s != received apnType=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    :cond_d
    const-string v12, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 316
    .restart local v8    # "reason":Ljava/lang/String;
    const-string v12, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .restart local v1    # "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " broadcast"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_e

    const-string v12, ""

    :goto_4
    invoke-virtual {v13, v12}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 323
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v8    # "reason":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Broadcast received: ignore "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
