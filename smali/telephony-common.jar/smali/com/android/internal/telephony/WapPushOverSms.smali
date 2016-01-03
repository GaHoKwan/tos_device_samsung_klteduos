.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPushOrigAddr:Ljava/lang/String;

.field private mWapPushAddress:Ljava/lang/String;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mWapPushTimeStamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 87
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    sget-boolean v2, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dispatchWapPdu_DMNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 4
    .param p1, "pdu"    # [B
    .param p2, "binaryContentType"    # I
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 598
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 600
    const-string v2, "pdus"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 601
    const-string v2, "pushtype"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    const/16 v0, 0x13

    .line 604
    .local v0, "appOp":I
    const-string v2, "WAP PUSH"

    const-string v3, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p4, v1, v2, v0, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 606
    return-void
.end method

.method private dispatchWapPdu_DSNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "binaryContentType"    # I
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 633
    const/16 v0, 0x13

    .line 636
    .local v0, "appOp":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "ds_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 638
    const-string v2, "pushtype"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p4, v1, v2, v0, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 667
    return-void
.end method

.method private dispatchWapPdu_MMS([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 11
    .param p1, "pdu"    # [B
    .param p2, "transactionId"    # I
    .param p3, "pduType"    # I
    .param p4, "headerStartIndex"    # I
    .param p5, "headerLength"    # I
    .param p6, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 564
    move/from16 v0, p5

    new-array v6, v0, [B

    .line 565
    .local v6, "header":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-static {p1, p4, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    add-int v5, p4, p5

    .line 567
    .local v5, "dataIndex":I
    array-length v8, p1

    sub-int/2addr v8, v5

    new-array v4, v8, [B

    .line 568
    .local v4, "data":[B
    const/4 v8, 0x0

    array-length v9, v4

    invoke-static {p1, v5, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "application/vnd.wap.mms-message"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v8, "transactionId"

    invoke-virtual {v7, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    const-string v8, "pduType"

    invoke-virtual {v7, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    const-string v8, "header"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 576
    const-string v8, "data"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 578
    const-string v8, "simSlot"

    invoke-virtual/range {p7 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    iget-object v8, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v3

    .line 583
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 585
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 586
    sget-boolean v8, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "WAP PUSH"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delivering MMS to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    const/16 v2, 0x12

    .line 590
    .local v2, "appOp":I
    const-string v8, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-virtual {v0, v7, v8, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 591
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 5
    .param p1, "pdu"    # [B
    .param p2, "transactionId"    # I
    .param p3, "pduType"    # I
    .param p4, "headerStartIndex"    # I
    .param p5, "headerLength"    # I
    .param p6, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 540
    new-array v1, p5, [B

    .line 541
    .local v1, "header":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {p1, p4, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "application/vnd.wap.coc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v3, "transactionId"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    const-string v3, "pduType"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    const-string v3, "header"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 549
    const-string v3, "data"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 551
    const-string v3, "simSlot"

    invoke-virtual {p7}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 554
    const-string v3, "origaddr"

    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    :cond_0
    const/16 v0, 0x13

    .line 558
    .local v0, "appOp":I
    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p7, v2, v3, v0, p6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 559
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 5
    .param p1, "pdu"    # [B
    .param p2, "binaryContentType"    # I
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 615
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 619
    const-string v2, "pushtype"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 623
    const-string v2, "origaddr"

    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    :cond_0
    const/16 v0, 0x13

    .line 626
    .local v0, "appOp":I
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p4, v1, v2, v0, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 627
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 48
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 114
    const-string v6, "WAP PUSH"

    const-string v7, "dispatchWapPdu"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rx: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    if-nez p1, :cond_2

    .line 118
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "WAP PUSH"

    const-string v7, "Received PDU is null."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    const/4 v6, 0x2

    .line 525
    :goto_0
    return v6

    .line 123
    :cond_2
    const/16 v31, 0x0

    .line 124
    .local v31, "index":I
    add-int/lit8 v32, v31, 0x1

    .end local v31    # "index":I
    .local v32, "index":I
    :try_start_0
    aget-byte v6, p1, v31
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    and-int/lit16 v0, v6, 0xff

    move/from16 v44, v0

    .line 125
    .local v44, "transactionId":I
    add-int/lit8 v31, v32, 0x1

    .end local v32    # "index":I
    .restart local v31    # "index":I
    :try_start_1
    aget-byte v6, p1, v32

    and-int/lit16 v0, v6, 0xff

    move/from16 v40, v0

    .line 127
    .local v40, "pduType":I
    const/4 v6, 0x6

    move/from16 v0, v40

    if-eq v0, v6, :cond_7

    const/4 v6, 0x7

    move/from16 v0, v40

    if-eq v0, v6, :cond_7

    .line 129
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e004e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v31

    .line 131
    const/4 v6, -0x1

    move/from16 v0, v31

    if-eq v0, v6, :cond_5

    .line 132
    add-int/lit8 v32, v31, 0x1

    .end local v31    # "index":I
    .restart local v32    # "index":I
    :try_start_2
    aget-byte v6, p1, v31
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    and-int/lit16 v0, v6, 0xff

    move/from16 v44, v0

    .line 133
    add-int/lit8 v31, v32, 0x1

    .end local v32    # "index":I
    .restart local v31    # "index":I
    :try_start_3
    aget-byte v6, p1, v32

    and-int/lit16 v0, v6, 0xff

    move/from16 v40, v0

    .line 134
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_3

    .line 135
    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " PDU Type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transactionID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3
    const/4 v6, 0x6

    move/from16 v0, v40

    if-eq v0, v6, :cond_7

    const/4 v6, 0x7

    move/from16 v0, v40

    if-eq v0, v6, :cond_7

    .line 141
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 145
    :cond_5
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 150
    :cond_7
    new-instance v39, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 158
    .local v39, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 159
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_8

    const-string v6, "WAP PUSH"

    const-string v7, "Received PDU. Header Length error."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_8
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 162
    :cond_9
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v11, v6

    .line 163
    .local v11, "headerLength":I
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v6

    add-int v31, v31, v6

    .line 165
    move/from16 v28, v31

    .line 179
    .local v28, "headerStartIndex":I
    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 180
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "WAP PUSH"

    const-string v7, "Received PDU. Header Content-Type error."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_a
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 184
    :cond_b
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v37

    .line 185
    .local v37, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v17

    .line 186
    .local v17, "binaryContentType":J
    move/from16 v33, v31

    .line 189
    .local v33, "index_con013":I
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v30, v0

    .line 192
    .local v30, "iBinaryContentType":I
    if-nez v37, :cond_f

    .line 194
    sparse-switch v30, :sswitch_data_0

    .line 251
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_c

    .line 252
    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received PDU. Unsupported Content-Type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 196
    :sswitch_0
    const-string v37, "application/vnd.oma.drm.rights+xml"
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 306
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v26

    .line 307
    .local v26, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    invoke-virtual/range {v26 .. v26}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v5

    .line 308
    .local v5, "phoneResPol":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-virtual/range {v26 .. v26}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v23

    .line 309
    .local v23, "deviceInventory":Landroid/sec/enterprise/DeviceInventory;
    const-string v6, "gsm.operator.isroaming"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual/range {v26 .. v26}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    invoke-virtual {v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 312
    :cond_e
    const-string v6, "WAP PUSH"

    const-string v7, " MDM RoamingPush or WapPush Disabled "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 313
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 199
    .end local v5    # "phoneResPol":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v23    # "deviceInventory":Landroid/sec/enterprise/DeviceInventory;
    .end local v26    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    :sswitch_1
    :try_start_5
    const-string v37, "application/vnd.oma.drm.rights+wbxml"

    .line 200
    goto :goto_1

    .line 202
    :sswitch_2
    const-string v37, "application/vnd.wap.sic"

    .line 203
    goto :goto_1

    .line 205
    :sswitch_3
    const-string v37, "application/vnd.wap.slc"

    .line 206
    goto :goto_1

    .line 208
    :sswitch_4
    const-string v37, "application/vnd.wap.coc"

    .line 209
    goto :goto_1

    .line 211
    :sswitch_5
    const-string v37, "application/vnd.wap.mms-message"

    .line 212
    goto :goto_1

    .line 214
    :sswitch_6
    const-string v37, "application/vnd.omaloc-supl-init"

    .line 215
    goto :goto_1

    .line 217
    :sswitch_7
    const-string v37, "application/vnd.docomo.pf"

    .line 218
    goto :goto_1

    .line 226
    :sswitch_8
    const-string v37, "application/vnd.syncml.notification"

    .line 227
    goto :goto_1

    .line 232
    :sswitch_9
    const-string v37, "application/vnd.syncml.ds.notification"

    .line 233
    goto :goto_1

    .line 236
    :sswitch_a
    const-string v37, "application/vnd.wap.connectivity-wbxml"

    .line 237
    goto :goto_1

    .line 239
    :sswitch_b
    const-string v37, "application/vnd.syncml.dm+wbxml"

    .line 240
    goto :goto_1

    .line 242
    :sswitch_c
    const-string v37, "application/vnd.syncml.dm+xml"

    .line 243
    goto :goto_1

    .line 247
    :sswitch_d
    const-string v37, "application/vnd.wap.emn+wbxml"

    .line 248
    goto :goto_1

    .line 257
    :cond_f
    const-string v6, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 258
    const/16 v30, 0x4a

    goto :goto_1

    .line 259
    :cond_10
    const-string v6, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 260
    const/16 v30, 0x4b

    goto :goto_1

    .line 261
    :cond_11
    const-string v6, "application/vnd.wap.sic"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 262
    const/16 v30, 0x2e

    goto :goto_1

    .line 263
    :cond_12
    const-string v6, "application/vnd.wap.slc"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 264
    const/16 v30, 0x30

    goto/16 :goto_1

    .line 265
    :cond_13
    const-string v6, "application/vnd.wap.coc"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 266
    const/16 v30, 0x32

    goto/16 :goto_1

    .line 267
    :cond_14
    const-string v6, "application/vnd.wap.mms-message"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 268
    const/16 v30, 0x3e

    goto/16 :goto_1

    .line 269
    :cond_15
    const-string v6, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 270
    const/16 v30, 0x312

    goto/16 :goto_1

    .line 271
    :cond_16
    const-string v6, "application/vnd.docomo.pf"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 272
    const/16 v30, 0x310

    goto/16 :goto_1

    .line 278
    :cond_17
    const-string v6, "application/vnd.syncml.notification"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 279
    const/16 v30, 0x44

    goto/16 :goto_1

    .line 280
    :cond_18
    const-string v6, "application/vnd.syncml.ds.notification"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 281
    const/16 v30, 0x4e

    goto/16 :goto_1

    .line 284
    :cond_19
    const-string v6, "application/vnd.wap.connectivity-wbxml"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 285
    const/16 v30, 0x36

    goto/16 :goto_1

    .line 286
    :cond_1a
    const-string v6, "application/vnd.syncml.dm+wbxml"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 287
    const/16 v30, 0x42

    goto/16 :goto_1

    .line 288
    :cond_1b
    const-string v6, "application/vnd.syncml.dm+xml"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 289
    const/16 v30, 0x43

    goto/16 :goto_1

    .line 292
    :cond_1c
    const-string v6, "application/vnd.wap.emn+wbxml"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 293
    const/16 v30, 0x30a

    goto/16 :goto_1

    .line 296
    :cond_1d
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_1e

    .line 297
    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received PDU. Unknown Content-Type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 299
    :cond_1e
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 315
    .restart local v5    # "phoneResPol":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v23    # "deviceInventory":Landroid/sec/enterprise/DeviceInventory;
    .restart local v26    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    :cond_1f
    const/16 v6, 0x3e

    move/from16 v0, v30

    if-ne v6, v0, :cond_22

    .line 316
    const/4 v6, 0x1

    :try_start_6
    invoke-virtual {v5, v6}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-virtual {v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingMmsAllowed()Z

    move-result v6

    if-nez v6, :cond_21

    .line 317
    :cond_20
    const-string v6, "WAP PUSH"

    const-string v7, "emergency call only or incoming MMS not allowed"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 319
    :cond_21
    invoke-virtual {v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 320
    const-string v6, "WAP PUSH"

    const-string v7, "blocking mms with storage"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 323
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 328
    :cond_22
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v47, "wapSms":Ljava/lang/StringBuilder;
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v6, v0

    move/from16 v0, v29

    if-ge v0, v6, :cond_23

    .line 330
    aget-byte v6, p1, v29

    int-to-char v6, v6

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 332
    :cond_23
    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_24

    .line 333
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/sec/enterprise/DeviceInventory;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 341
    .end local v5    # "phoneResPol":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v23    # "deviceInventory":Landroid/sec/enterprise/DeviceInventory;
    .end local v26    # "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    .end local v29    # "i":I
    .end local v47    # "wapSms":Ljava/lang/StringBuilder;
    :cond_24
    :goto_3
    const/16 v24, 0x0

    .line 342
    .local v24, "dispatchedByApplication":Z
    sparse-switch v30, :sswitch_data_1

    .line 383
    :goto_4
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_25

    .line 384
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 336
    .end local v24    # "dispatchedByApplication":Z
    :catch_0
    move-exception v38

    .line 337
    .local v38, "npe":Ljava/lang/NullPointerException;
    :try_start_7
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_24

    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MDM failed to get policy - NullPointerException but this isn\'t issue"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 521
    .end local v11    # "headerLength":I
    .end local v17    # "binaryContentType":J
    .end local v28    # "headerStartIndex":I
    .end local v30    # "iBinaryContentType":I
    .end local v33    # "index_con013":I
    .end local v37    # "mimeType":Ljava/lang/String;
    .end local v38    # "npe":Ljava/lang/NullPointerException;
    .end local v39    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v40    # "pduType":I
    :catch_1
    move-exception v14

    .line 524
    .end local v44    # "transactionId":I
    .local v14, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v6, 0x2

    goto/16 :goto_0

    .end local v14    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v11    # "headerLength":I
    .restart local v17    # "binaryContentType":J
    .restart local v24    # "dispatchedByApplication":Z
    .restart local v28    # "headerStartIndex":I
    .restart local v30    # "iBinaryContentType":I
    .restart local v33    # "index_con013":I
    .restart local v37    # "mimeType":Ljava/lang/String;
    .restart local v39    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v40    # "pduType":I
    .restart local v44    # "transactionId":I
    :sswitch_e
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, v44

    move/from16 v9, v40

    move/from16 v10, v28

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 344
    :try_start_8
    invoke-direct/range {v6 .. v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 345
    const/16 v24, 0x1

    .line 346
    goto :goto_4

    :sswitch_f
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, v44

    move/from16 v9, v40

    move/from16 v10, v28

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 348
    invoke-direct/range {v6 .. v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIIILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 349
    const/16 v24, 0x1

    .line 350
    goto :goto_4

    .line 356
    :sswitch_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 357
    const/16 v24, 0x1

    .line 358
    goto :goto_4

    .line 365
    :sswitch_11
    const/16 v24, 0x0

    .line 366
    goto :goto_4

    .line 372
    :sswitch_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DSNoti([BILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 373
    const/16 v24, 0x1

    .line 377
    goto/16 :goto_4

    .line 389
    :cond_25
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v6

    add-int v31, v31, v6

    .line 391
    new-array v0, v11, [B

    move-object/from16 v27, v0

    .line 392
    .local v27, "header":[B
    const/4 v6, 0x0

    move-object/from16 v0, v27

    array-length v7, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    if-eqz v37, :cond_29

    const-string v6, "application/vnd.wap.coc"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 397
    move-object/from16 v35, p1

    .line 410
    .local v35, "intentData":[B
    :goto_6
    add-int v6, v31, v11

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 411
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v31, v0

    .line 412
    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 413
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v45

    .line 415
    .local v45, "wapAppId":Ljava/lang/String;
    const/16 v36, 0x1

    .line 416
    .local v36, "isAsciiType":Z
    const/16 v22, 0x21

    .line 418
    .local v22, "deltaIndex":I
    if-nez v45, :cond_26

    .line 419
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    .line 421
    const/16 v36, 0x0

    .line 422
    const/16 v22, 0x4

    .line 426
    :cond_26
    if-nez v37, :cond_2a

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    .line 428
    .local v20, "contentType":Ljava/lang/String;
    :goto_7
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_27

    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appid found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_27
    if-eqz v37, :cond_2d

    const-string v6, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string v6, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 432
    if-eqz v36, :cond_2b

    .line 433
    new-instance v15, Ljava/lang/String;

    const-string v6, "x-oma-application:ulp.ua"

    invoke-direct {v15, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 434
    .local v15, "appID":Ljava/lang/String;
    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 435
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_28

    const-string v6, "WAP PUSH"

    const-string v7, " InvalidApplicationID-ASCII"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_28
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 399
    .end local v15    # "appID":Ljava/lang/String;
    .end local v20    # "contentType":Ljava/lang/String;
    .end local v22    # "deltaIndex":I
    .end local v35    # "intentData":[B
    .end local v36    # "isAsciiType":Z
    .end local v45    # "wapAppId":Ljava/lang/String;
    :cond_29
    add-int v21, v28, v11

    .line 400
    .local v21, "dataIndex":I
    move-object/from16 v0, p1

    array-length v6, v0

    sub-int v6, v6, v21

    new-array v0, v6, [B

    move-object/from16 v35, v0

    .line 401
    .restart local v35    # "intentData":[B
    const/4 v6, 0x0

    move-object/from16 v0, v35

    array-length v7, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6

    .end local v21    # "dataIndex":I
    .restart local v22    # "deltaIndex":I
    .restart local v36    # "isAsciiType":Z
    .restart local v45    # "wapAppId":Ljava/lang/String;
    :cond_2a
    move-object/from16 v20, v37

    .line 426
    goto :goto_7

    .line 439
    .restart local v20    # "contentType":Ljava/lang/String;
    :cond_2b
    add-int v6, v33, v22

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p1, v6

    const/16 v7, -0x70

    if-eq v6, v7, :cond_2d

    .line 440
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_2c

    const-string v6, "WAP PUSH"

    const-string v7, " InvalidApplicationID-HEX"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1

    .line 441
    :cond_2c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 448
    :cond_2d
    const/16 v43, 0x1

    .line 449
    .local v43, "processFurther":Z
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v46, v0

    .line 451
    .local v46, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v46, :cond_2f

    .line 452
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_2e

    const-string v6, "WAP PUSH"

    const-string v7, "wap push manager not found!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2e
    :goto_8
    if-nez v43, :cond_31

    .line 470
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 454
    :cond_2f
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v34, "intent":Landroid/content/Intent;
    const-string v6, "transactionId"

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    const-string v6, "pduType"

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    const-string v6, "header"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 458
    const-string v6, "data"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 459
    const-string v6, "contentTypeParameters"

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 462
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v20

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v42

    .line 463
    .local v42, "procRet":I
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_30

    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "procRet:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    .line 464
    :cond_30
    and-int/lit8 v6, v42, 0x1

    if-lez v6, :cond_2e

    const v6, 0x8000

    and-int v6, v6, v42

    if-nez v6, :cond_2e

    .line 466
    const/16 v43, 0x0

    goto :goto_8

    .line 472
    .end local v34    # "intent":Landroid/content/Intent;
    .end local v42    # "procRet":I
    .end local v46    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_2
    move-exception v25

    .line 473
    .local v25, "e":Landroid/os/RemoteException;
    :try_start_a
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_31

    const-string v6, "WAP PUSH"

    const-string v7, "remote func failed..."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v20    # "contentType":Ljava/lang/String;
    .end local v22    # "deltaIndex":I
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v36    # "isAsciiType":Z
    .end local v43    # "processFurther":Z
    .end local v45    # "wapAppId":Ljava/lang/String;
    :cond_31
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_32

    const-string v6, "WAP PUSH"

    const-string v7, "fall back to existing handler"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_32
    if-nez v37, :cond_34

    .line 479
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_33

    const-string v6, "WAP PUSH"

    const-string v7, "Header Content-Type error."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_33
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 486
    :cond_34
    const-string v6, "application/vnd.wap.mms-message"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 487
    const-string v41, "android.permission.RECEIVE_MMS"

    .line 488
    .local v41, "permission":Ljava/lang/String;
    const/16 v16, 0x12

    .line 494
    .local v16, "appOp":I
    :goto_9
    new-instance v34, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .restart local v34    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v6, "transactionId"

    move-object/from16 v0, v34

    move/from16 v1, v44

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    const-string v6, "pduType"

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    const-string v6, "header"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 499
    const-string v6, "data"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 500
    const-string v6, "contentTypeParameters"

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 502
    const-string v6, "simSlot"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    if-eqz v6, :cond_35

    .line 505
    const-string v6, "origaddr"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    :cond_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v19

    .line 512
    .local v19, "componentName":Landroid/content/ComponentName;
    if-eqz v19, :cond_36

    .line 514
    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 515
    sget-boolean v6, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v6, :cond_36

    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delivering MMS to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_36
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    move-object/from16 v2, v41

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 520
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 490
    .end local v16    # "appOp":I
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .end local v34    # "intent":Landroid/content/Intent;
    .end local v41    # "permission":Ljava/lang/String;
    :cond_37
    const-string v41, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1

    .line 491
    .restart local v41    # "permission":Ljava/lang/String;
    const/16 v16, 0x13

    .restart local v16    # "appOp":I
    goto/16 :goto_9

    .line 521
    .end local v11    # "headerLength":I
    .end local v16    # "appOp":I
    .end local v17    # "binaryContentType":J
    .end local v24    # "dispatchedByApplication":Z
    .end local v27    # "header":[B
    .end local v28    # "headerStartIndex":I
    .end local v30    # "iBinaryContentType":I
    .end local v31    # "index":I
    .end local v33    # "index_con013":I
    .end local v35    # "intentData":[B
    .end local v37    # "mimeType":Ljava/lang/String;
    .end local v39    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v40    # "pduType":I
    .end local v41    # "permission":Ljava/lang/String;
    .end local v44    # "transactionId":I
    .restart local v32    # "index":I
    :catch_3
    move-exception v14

    move/from16 v31, v32

    .end local v32    # "index":I
    .restart local v31    # "index":I
    goto/16 :goto_5

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_a
        0x3e -> :sswitch_5
        0x42 -> :sswitch_b
        0x43 -> :sswitch_c
        0x44 -> :sswitch_8
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0x4e -> :sswitch_9
        0xce -> :sswitch_9
        0x30a -> :sswitch_d
        0x310 -> :sswitch_7
        0x312 -> :sswitch_6
    .end sparse-switch

    .line 342
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_11
        0x32 -> :sswitch_e
        0x36 -> :sswitch_11
        0x3e -> :sswitch_f
        0x42 -> :sswitch_11
        0x43 -> :sswitch_11
        0x44 -> :sswitch_10
        0x4e -> :sswitch_12
        0xce -> :sswitch_12
    .end sparse-switch
.end method

.method public dispatchWapPushAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "OrigAddr"    # Ljava/lang/String;

    .prologue
    .line 531
    if-eqz p1, :cond_0

    .line 532
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mPushOrigAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_1

    .line 97
    sget-boolean v0, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 73
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 74
    sget-boolean v0, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 80
    sget-boolean v0, Lcom/android/internal/telephony/WapPushOverSms;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public setWpaPushAddressTimeStamp(Ljava/lang/String;J)V
    .locals 1
    .param p1, "wapPushAddress"    # Ljava/lang/String;
    .param p2, "wapPushTimeStamp"    # J

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushAddress:Ljava/lang/String;

    .line 678
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushTimeStamp:Ljava/lang/String;

    .line 679
    return-void
.end method
