.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;
    }
.end annotation


# static fields
.field private static final AT_COMMAND_CMGF:Ljava/lang/String; = "AT+CMGF"

.field private static final AT_COMMAND_CMGS:Ljava/lang/String; = "AT+CMGS"

.field private static final AT_COMMAND_CMGW:Ljava/lang/String; = "AT+CMGW"

.field private static final AT_COMMAND_CMSS:Ljava/lang/String; = "AT+CMSS"


# instance fields
.field private aTaddress:Ljava/lang/String;

.field private aTtext:Ljava/lang/String;

.field private index:I

.field private msgId:I

.field private records:Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2309
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2314
    const-string v0, "9081209000"

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2315
    const-string v0, "This is the message body"

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    .line 2316
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->index:I

    .line 2317
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    .line 2318
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;-><init>(Lcom/android/internal/telephony/SMSDispatcher$2;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->records:Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

    .line 2474
    return-void
.end method


# virtual methods
.method public extractValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 2469
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2470
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2471
    const/16 v0, 0xd

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2324
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.action.SIM_REFRESH_INIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2325
    const-string v1, "SMSDispatcher"

    const-string v2, "ACTION_SIM_REFRESH_INIT"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/SMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    .line 2327
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/SMSDispatcher;->retryGetSmsc:I

    .line 2328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 2455
    :cond_0
    :goto_0
    return-void

    .line 2329
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2330
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->clearDuplicatedCbMessages()V

    goto :goto_0

    .line 2334
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2335
    const-string v1, "ZTO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigSsms"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->initSelloutSms(Landroid/content/Context;)V

    goto :goto_0

    .line 2338
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app.mms.SSMS_STATE_FILE_UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2339
    const-string v1, "ZTO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigSsms"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2340
    const-string v1, "ssms_state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 2341
    .local v15, "ssms_state":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1, v15}, Lcom/android/internal/telephony/SMSDispatcher;->updateSelloutSmsFile(I)V

    goto/16 :goto_0

    .line 2343
    .end local v15    # "ssms_state":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2349
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LTE_SMS_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2350
    const-string v1, "ltesms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "ltesms"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/SMSDispatcher;->mLteSmsStatus:I

    .line 2352
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lte sms status is updated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mLteSmsStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2354
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BCS_REQUEST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2355
    const-string v1, "SMSDispatcher"

    const-string v2, "ACTION_BCS_REQUEST"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 2357
    .local v10, "data":Landroid/os/Bundle;
    if-nez v10, :cond_8

    .line 2358
    const-string v1, "SmsDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but there are no extras..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2363
    :cond_8
    const-string v1, "command"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2364
    .local v9, "command":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 2368
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/SMSDispatcher$2;->splitArgu(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2369
    .local v7, "arg":[Ljava/lang/String;
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 2370
    :goto_1
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.BCS_RESPONSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2374
    .local v13, "responseIntent":Landroid/content/Intent;
    const-string v1, "AT+CMSS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AT+CMSS"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_c

    .line 2375
    array-length v1, v7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 2376
    const/4 v1, 0x0

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->index:I

    .line 2382
    :cond_9
    :goto_2
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aTaddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.AT_CMSS_COMPLETE"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2385
    .local v8, "atIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2387
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 2388
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    .line 2431
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "atIntent":Landroid/content/Intent;
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2369
    .end local v13    # "responseIntent":Landroid/content/Intent;
    :cond_a
    const-string v9, ""

    goto/16 :goto_1

    .line 2377
    .restart local v13    # "responseIntent":Landroid/content/Intent;
    :cond_b
    array-length v1, v7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 2378
    const/4 v1, 0x0

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->index:I

    .line 2379
    const/4 v1, 0x1

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    goto/16 :goto_2

    .line 2389
    :cond_c
    const-string v1, "AT+CMGS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AT+CMGS"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_e

    .line 2390
    array-length v1, v7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 2391
    const/4 v1, 0x0

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2392
    const/4 v1, 0x1

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    .line 2394
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aTtext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aTaddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :goto_4
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.AT_CMSS_COMPLETE"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2401
    .restart local v8    # "atIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2403
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->Sim_Smsc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 2404
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    goto/16 :goto_3

    .line 2397
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "atIntent":Landroid/content/Intent;
    :cond_d
    const-string v1, "SMSDispatcher"

    const-string v2, "the size of arg is not proper"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2405
    :cond_e
    const-string v1, "AT+CMGF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AT+CMSS"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_f

    .line 2406
    const-string v1, "response"

    const-string v2, "OK"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2407
    :cond_f
    const-string v1, "AT+CMGW"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AT+CMSS"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_13

    .line 2408
    array-length v1, v7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 2409
    const/4 v1, 0x0

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2410
    const/4 v1, 0x1

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    .line 2421
    :goto_5
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aTtext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aTaddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->records:Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/internal/telephony/SMSDispatcher$2$ATSMSRecordSet;->addMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2424
    .local v11, "index":I
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    const-string v1, "response"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 2411
    .end local v11    # "index":I
    :cond_10
    array-length v1, v7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    .line 2412
    const/4 v1, 0x0

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2413
    const/4 v1, 0x2

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    goto/16 :goto_5

    .line 2414
    :cond_11
    array-length v1, v7

    const/4 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 2415
    const/4 v1, 0x0

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTaddress:Ljava/lang/String;

    .line 2416
    const/4 v1, 0x3

    aget-object v1, v7, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$2;->extractValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->aTtext:Ljava/lang/String;

    goto/16 :goto_5

    .line 2418
    :cond_12
    const-string v1, "SMSDispatcher"

    const-string v2, "the size of arg is not proper"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2427
    :cond_13
    const-string v1, "SMSDispatcher"

    const-string v2, "AT-Command is not for SMS"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2432
    .end local v7    # "arg":[Ljava/lang/String;
    .end local v9    # "command":Ljava/lang/String;
    .end local v10    # "data":Landroid/os/Bundle;
    .end local v13    # "responseIntent":Landroid/content/Intent;
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.AT_CMSS_COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2433
    const-string v1, "SMSDispatcher"

    const-string v2, "ACTION_AT_CMSS_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.BCS_RESPONSE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2435
    .restart local v13    # "responseIntent":Landroid/content/Intent;
    const/4 v14, 0x0

    .line 2436
    .local v14, "resultCode":I
    const-string v1, "result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2437
    const-string v1, "result"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 2440
    :cond_15
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    if-nez v14, :cond_16

    .line 2442
    const-string v1, "response"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$2;->msgId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2446
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2444
    :cond_16
    const-string v1, "response"

    const-string v2, "500"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 2448
    .end local v13    # "responseIntent":Landroid/content/Intent;
    .end local v14    # "resultCode":I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v12

    .line 2449
    .local v12, "rc":I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_0

    goto/16 :goto_0
.end method

.method public splitArgu(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2459
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2460
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2461
    .local v0, "args":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2465
    .end local v0    # "args":Ljava/lang/String;
    .local v1, "res":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2463
    .end local v1    # "res":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    .restart local v1    # "res":[Ljava/lang/String;
    goto :goto_0
.end method
