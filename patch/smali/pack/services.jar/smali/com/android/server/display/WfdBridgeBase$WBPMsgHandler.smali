.class public Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;
.super Ljava/lang/Thread;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WBPMsgHandler"
.end annotation


# static fields
.field public static final STR_AllShareCast:Ljava/lang/String; = "AllShareCast"

.field public static final STR_CRLF:Ljava/lang/String; = "\r\n"

.field public static final STR_MirrorMouse:Ljava/lang/String; = "MirrorMouse"

.field public static final STR_RVF:Ljava/lang/String; = "RVF"

.field public static final STR_ScreenMirroring:Ljava/lang/String; = "ScreenMirroring"

.field public static final STR_Sink:Ljava/lang/String; = "Sink"

.field public static final STR_Source:Ljava/lang/String; = "Source"

.field private static final TAG:Ljava/lang/String; = "WBPMsgHandler"


# instance fields
.field private mMsgList:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/server/display/WfdBridgeBase$WBPMsg;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/WfdBridgeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;)V
    .locals 1

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    .line 286
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    .line 287
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    .line 288
    return-void
.end method

.method private parseBridgeCmdInfo(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 8
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 469
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 470
    .local v3, "parcel":Landroid/os/Parcel;
    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 471
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 472
    const-class v4, Lcom/android/server/display/CmdInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/CmdInfo;

    .line 474
    .local v1, "ci":Lcom/android/server/display/CmdInfo;
    const-string v4, "WBPMsgHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CmdType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-object v4, Lcom/android/server/display/WfdBridgeBase$1;->$SwitchMap$com$android$server$display$CmdInfo$CmdType:[I

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 492
    const-string v4, "WBPMsgHandler"

    const-string v5, "Wrong Cmd Type is accepted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 500
    .end local v1    # "ci":Lcom/android/server/display/CmdInfo;
    .end local v3    # "parcel":Landroid/os/Parcel;
    :goto_1
    return-void

    .line 478
    .restart local v1    # "ci":Lcom/android/server/display/CmdInfo;
    .restart local v3    # "parcel":Landroid/os/Parcel;
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v4, v4, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v6

    iget-object v7, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v7}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onConnRequest(IILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    .end local v1    # "ci":Lcom/android/server/display/CmdInfo;
    .end local v3    # "parcel":Landroid/os/Parcel;
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v4, "WBPMsgHandler"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 482
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "ci":Lcom/android/server/display/CmdInfo;
    .restart local v3    # "parcel":Landroid/os/Parcel;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v4, v4, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v6

    iget-object v7, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v7}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onConnRequest(IILjava/net/InetAddress;)V

    goto :goto_0

    .line 486
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v0

    .line 487
    .local v0, "busyFlag":I
    const-string v4, "WBPMsgHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected mBusyFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput v0, v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mBusyFlag:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 2
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 352
    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 354
    :cond_0
    const-string v0, "WBPMsgHandler"

    const-string v1, "received msg is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    const-string v1, "WBP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseResponse(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z

    goto :goto_0

    .line 361
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseRequest(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z

    goto :goto_0
.end method

.method private parseRequest(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z
    .locals 8
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v5, 0x1

    .line 368
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    const-string v7, " \n\r,"

    invoke-direct {v2, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "token":Ljava/lang/String;
    const-string v6, "GET_PARAMETER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_GET_PARAM_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    .line 413
    :goto_0
    return v5

    .line 374
    :cond_0
    const-string v6, "TRIGGER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 376
    iget-object v6, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v6}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onGetStatus()I

    move-result v1

    .line 378
    .local v1, "deviceStatus":I
    const/16 v6, 0xc8

    if-ne v1, v6, :cond_2

    .line 379
    const/4 v0, -0x1

    .line 380
    .local v0, "dev":I
    const/4 v4, -0x1

    .line 382
    .local v4, "type":I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 386
    const-string v6, "RVF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 387
    const/4 v4, 0x0

    .line 395
    :cond_1
    :goto_1
    const-string v6, "Sink"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 396
    const/4 v0, 0x1

    .line 401
    :goto_2
    if-gez v4, :cond_6

    .line 402
    const/16 v1, 0x12f

    .line 409
    .end local v0    # "dev":I
    .end local v4    # "type":I
    :cond_2
    :goto_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_TRIGGER_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;I)V

    goto :goto_0

    .line 388
    .restart local v0    # "dev":I
    .restart local v4    # "type":I
    :cond_3
    const-string v6, "MirrorMouse"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 389
    const/4 v4, 0x1

    goto :goto_1

    .line 390
    :cond_4
    const-string v6, "ScreenMirroring"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 391
    const/4 v4, 0x2

    goto :goto_1

    .line 398
    :cond_5
    const/4 v0, 0x2

    goto :goto_2

    .line 404
    :cond_6
    iget-object v6, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    iget-object v7, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v7}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v6, v0, v4, v7}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onConnRequest(IILjava/net/InetAddress;)V

    goto :goto_3

    .line 413
    .end local v0    # "dev":I
    .end local v1    # "deviceStatus":I
    .end local v4    # "type":I
    :cond_7
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private parseResponse(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z
    .locals 9
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 419
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    const-string v7, " \n\r,"

    invoke-direct {v1, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "token":Ljava/lang/String;
    const/4 v0, 0x0

    .line 425
    .local v0, "errorCode":I
    const-string v6, "WBP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 463
    :goto_0
    return v4

    .line 428
    :cond_0
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget v6, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mWbpVersion:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 430
    const-string v6, "\\/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "strArr":[Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mWbpVersion:F

    .line 433
    .end local v2    # "strArr":[Ljava/lang/String;
    :cond_1
    const-string v6, "WBPMsgHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WBP version= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 435
    const-string v6, "WBPMsgHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WBP error code= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 437
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 438
    const-string v6, "WBPMsgHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WBP error msg= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_4

    .line 441
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 442
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 443
    const-string/jumbo v6, "supported:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 444
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-nez v6, :cond_3

    .line 445
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v7, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v8, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {v7, v8}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;-><init>(Lcom/android/server/display/WfdBridgeBase;)V

    iput-object v7, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 448
    :goto_1
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    invoke-virtual {v6, v1}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->parseSupportedType(Ljava/util/StringTokenizer;)V

    .line 449
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput-boolean v4, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    .line 458
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v4, v4, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v6}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onOK(Ljava/net/InetAddress;)V

    :goto_2
    move v4, v5

    .line 463
    goto/16 :goto_0

    .line 447
    :cond_3
    const-string v6, "WBPMsgHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseResponse wbp.mPeer.mDevice = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v8, v8, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 460
    :cond_4
    iget-object v4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v4, v4, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v4, v0}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onError(I)V

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 347
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 348
    return-void
.end method

.method public getSupportedDevList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, "AllShareCast/Source/Sink, RVF/Source/Sink"

    return-object v0
.end method

.method public putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    .locals 3
    .param p1, "msg"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WBPMsgHandler"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 295
    .local v2, "msg":Lcom/android/server/display/WfdBridgeBase$WBPMsg;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-boolean v3, v3, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    if-eqz v3, :cond_1

    .line 297
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 298
    iget v3, v2, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 341
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    .line 342
    const-string v3, "WBPMsgHandler"

    const-string v4, "End of WBPMsgHandler"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 302
    :cond_2
    :try_start_1
    iget v3, v2, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    sparse-switch v3, :sswitch_data_0

    .line 329
    const-string v3, "WBPMsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WBPMsg Parse Error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "WBPMsgHandler"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :sswitch_0
    :try_start_2
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_NOT_PARSED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_0

    .line 309
    :sswitch_1
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_NOT_PARSED_LEGACY"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseBridgeCmdInfo(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_0

    .line 314
    :sswitch_2
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_TRIGGER_M1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_GET_PARAM(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_0

    .line 319
    :sswitch_3
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_WBP_TRIGGER"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_TRIGGER(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_0

    .line 324
    :sswitch_4
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_TRIGGER_BUSYFLAG"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_busyFlag(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 302
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3ed -> :sswitch_4
    .end sparse-switch
.end method

.method public send_WBP_GET_PARAM(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 2
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 536
    const-string v0, "GET_PARAMETER WBP/1.1\r\nsupported\r\n\r\n"

    .line 540
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 541
    return-void
.end method

.method public send_WBP_GET_PARAM_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 3
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WBP/1.1 200 OK\r\nsupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->getSupportedDevList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 554
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    if-eqz v1, :cond_1

    .line 555
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I

    .line 557
    :cond_1
    return-void
.end method

.method public send_WBP_TRIGGER(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 6
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 561
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v3, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    if-eqz v3, :cond_1

    .line 562
    :cond_0
    const-string v3, "WBPMsgHandler"

    const-string v4, "send_WBP_TRIGGER : Client is a legacy device."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget v3, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mBusyFlag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 564
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/16 v4, 0x12d

    invoke-interface {v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onError(I)V

    .line 608
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TRIGGER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WBP/1.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v3, v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 612
    return-void

    .line 567
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string v3, "WBPMsgHandler"

    const-string v4, "sendCmd for trigger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 569
    .local v2, "parcel":Landroid/os/Parcel;
    new-instance v3, Lcom/android/server/display/CmdInfo;

    iget v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mDev:I

    iget v5, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    invoke-direct {v3, v4, v5}, Lcom/android/server/display/CmdInfo;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 570
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 571
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v2    # "parcel":Landroid/os/Parcel;
    :goto_1
    const-string v3, "WBPMsgHandler"

    const-string v4, "Force OK, launch Peding dev"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v4}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onOK(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WBPMsgHandler"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public send_WBP_TRIGGER_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;I)V
    .locals 3
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;
    .param p2, "returnType"    # I

    .prologue
    .line 615
    const-string v0, "WBP/1.1"

    .line 617
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 304 UNKNOWN\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    :goto_0
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 640
    return-void

    .line 619
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 200 OK\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    goto :goto_0

    .line 623
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 301 SCREEN_OFF\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    goto :goto_0

    .line 627
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 302 ENGINE_RUNNING\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    goto :goto_0

    .line 631
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 303 DO_NOT_SUPPORT\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    goto :goto_0

    .line 617
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_2
        0x12f -> :sswitch_3
    .end sparse-switch
.end method

.method public send_busyFlag(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 4
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 503
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    if-eqz v1, :cond_1

    .line 504
    :cond_0
    const-string v1, "WBPMsgHandler"

    const-string v2, "sendCmd for trigger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 506
    .local v0, "parcel":Landroid/os/Parcel;
    new-instance v1, Lcom/android/server/display/CmdInfo;

    sget-object v2, Lcom/android/server/display/CmdInfo$CmdType;->SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

    iget v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    invoke-direct {v1, v2, v3}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 507
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 510
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_1
    return-void
.end method

.method public triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I
    .locals 2
    .param p1, "msgType"    # I
    .param p2, "to"    # Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .prologue
    .line 532
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILcom/android/server/display/WfdBridgeBase$BridgePeer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    move-result v0

    return v0
.end method
