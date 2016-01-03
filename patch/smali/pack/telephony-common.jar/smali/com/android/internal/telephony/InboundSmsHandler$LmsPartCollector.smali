.class Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LmsPartCollector"
.end annotation


# instance fields
.field private mDestPort:I

.field private final mIsCdmaWapPush:Z

.field private final mMessageCount:I

.field private final mPdus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IZ)V
    .locals 2
    .param p1, "messageCount"    # I
    .param p2, "isCdmaWapPush"    # Z

    .prologue
    .line 2590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mPdus:Ljava/util/Map;

    .line 2588
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mDestPort:I

    .line 2591
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 2592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageCount should be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2594
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mMessageCount:I

    .line 2595
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mIsCdmaWapPush:Z

    .line 2596
    return-void
.end method


# virtual methods
.method add(I[BLjava/lang/Integer;)V
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "pdu"    # [B
    .param p3, "destPort"    # Ljava/lang/Integer;

    .prologue
    .line 2600
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mIsCdmaWapPush:Z

    if-nez v0, :cond_0

    .line 2601
    add-int/lit8 p1, p1, -0x1

    .line 2604
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mMessageCount:I

    if-lt p1, v0, :cond_2

    .line 2605
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Illegal sequence number"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2608
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mPdus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    if-eqz p3, :cond_3

    .line 2611
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mDestPort:I

    .line 2613
    :cond_3
    return-void
.end method

.method addAllFromCursor(Landroid/database/Cursor;III)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sequenceNumberColumn"    # I
    .param p3, "pduColumn"    # I
    .param p4, "destPortColumn"    # I

    .prologue
    .line 2616
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2617
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2618
    .local v2, "seqNumber":I
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 2619
    .local v1, "pdu":[B
    const/4 v0, 0x0

    .line 2620
    .local v0, "destPort":Ljava/lang/Integer;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2621
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2624
    :cond_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->add(I[BLjava/lang/Integer;)V

    goto :goto_0

    .line 2626
    .end local v0    # "destPort":Ljava/lang/Integer;
    .end local v1    # "pdu":[B
    .end local v2    # "seqNumber":I
    :cond_1
    return-void
.end method

.method getDestPort()I
    .locals 1

    .prologue
    .line 2641
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mDestPort:I

    return v0
.end method

.method getPdusSequence()[[B
    .locals 4

    .prologue
    .line 2633
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mMessageCount:I

    new-array v1, v2, [[B

    .line 2634
    .local v1, "pdus":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mMessageCount:I

    if-ge v0, v2, :cond_0

    .line 2635
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mPdus:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v1, v0

    .line 2634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2637
    :cond_0
    return-object v1
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;->mPdus:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
