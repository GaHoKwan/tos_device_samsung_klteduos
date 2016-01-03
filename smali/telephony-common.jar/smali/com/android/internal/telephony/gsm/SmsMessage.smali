.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    }
.end annotation


# static fields
.field private static final CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

.field private static DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final VDBG:Z

.field public static mDay:I

.field public static mHour:I

.field public static mMin:I

.field public static mMonth:I

.field public static mSec:I

.field public static mTimezone:I

.field public static mYear:I

.field private static unsupportedDatacodingScheme:Z


# instance fields
.field private automaticDeletion:Z

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private mDataCodingScheme:I

.field private mIsStatusReportMessage:Z

.field private mProtocolIdentifier:I

.field private mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private mReplyPathPresent:Z

.field private mStatus:I

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

.field protected numberOfMessages:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 116
    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 127
    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    .line 165
    const-string v0, "CTC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SpecialAddressHandlingFor"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 97
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 162
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->numberOfMessages:I

    .line 612
    return-void
.end method

.method private static ChangeGsmCharCodetoUnicode([B)Ljava/lang/String;
    .locals 13
    .param p0, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 2608
    const/4 v3, 0x0

    .line 2609
    .local v3, "dataCnt":I
    const/4 v5, 0x0

    .line 2610
    .local v5, "offset":I
    const/4 v0, 0x0

    .line 2611
    .local v0, "charPlace":I
    const/4 v8, 0x2

    new-array v7, v8, [B

    fill-array-data v7, :array_0

    .line 2612
    .local v7, "yenByteData":[B
    const-string v6, ""

    .line 2613
    .local v6, "responseData":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2614
    .local v2, "compChar":C
    const-string v1, ""

    .line 2616
    .local v1, "chgData":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_0
    array-length v8, p0

    if-ge v0, v8, :cond_6

    .line 2617
    aget-byte v8, p0, v0

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->isSJIS2ByeteCharactor(B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2619
    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-char v2, v8

    .line 2620
    add-int/lit8 v8, v0, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    or-int/2addr v8, v2

    int-to-char v2, v8

    .line 2622
    invoke-static {v2}, Lcom/kddi/android/internal/telephony/KddiSmsDataConvertor;->getReceiveEmojiChange(C)Ljava/lang/String;

    move-result-object v1

    .line 2623
    if-eqz v1, :cond_1

    .line 2625
    sub-int v3, v0, v5

    .line 2626
    array-length v8, p0

    if-ge v5, v8, :cond_0

    if-eqz v3, :cond_0

    .line 2628
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const-string v10, "sjis"

    invoke-direct {v9, p0, v5, v3, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2634
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2635
    add-int/lit8 v5, v0, 0x2

    .line 2638
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 2616
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2629
    :catch_0
    move-exception v4

    .line 2630
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v8, "SmsMessage"

    const-string v9, "ChangeGsmCharCodetoUnicode() SJIS decode failed"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SJIS decode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2640
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_3
    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_2

    .line 2641
    sub-int v3, v0, v5

    .line 2642
    array-length v8, p0

    if-ge v5, v8, :cond_5

    .line 2643
    if-eqz v3, :cond_4

    .line 2645
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const-string v10, "sjis"

    invoke-direct {v9, p0, v5, v3, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 2652
    :cond_4
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    array-length v11, v7

    const-string v12, "utf-8"

    invoke-direct {v9, v7, v10, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 2658
    :cond_5
    add-int/lit8 v5, v0, 0x1

    goto :goto_1

    .line 2646
    :catch_1
    move-exception v4

    .line 2647
    .restart local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    const-string v8, "SmsMessage"

    const-string v9, "ChangeGsmCharCodetoUnicode() SJIS decode failed"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SJIS decode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2653
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v4

    .line 2654
    .restart local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    const-string v8, "SmsMessage"

    const-string v9, "ChangeGsmCharCodetoUnicode() utf-8 decode failed"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SJIS decode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2662
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_6
    sub-int v3, v0, v5

    .line 2663
    array-length v8, p0

    if-ge v5, v8, :cond_7

    if-eqz v3, :cond_7

    .line 2665
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const-string v10, "sjis"

    invoke-direct {v9, p0, v5, v3, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    .line 2671
    :cond_7
    return-object v6

    .line 2666
    :catch_3
    move-exception v4

    .line 2667
    .restart local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    const-string v8, "SmsMessage"

    const-string v9, "ChangeGsmCharCodetoUnicode() SJIS decode failed"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SJIS decode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2611
    nop

    :array_0
    .array-data 1
        -0x3et
        -0x5bt
    .end array-data
.end method

.method public static ConvertDateStringToBCD(Ljava/lang/String;)[B
    .locals 19
    .param p0, "mDate"    # Ljava/lang/String;

    .prologue
    .line 2336
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "date : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2339
    .local v12, "year":Ljava/lang/String;
    const/4 v14, 0x2

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2340
    .local v4, "month":Ljava/lang/String;
    const/4 v14, 0x4

    const/4 v15, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2341
    .local v1, "day":Ljava/lang/String;
    const/4 v14, 0x6

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2342
    .local v2, "hour":Ljava/lang/String;
    const/16 v14, 0x8

    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2343
    .local v3, "min":Ljava/lang/String;
    const/16 v14, 0xa

    const/16 v15, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2345
    .local v5, "sec":Ljava/lang/String;
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "1. year:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " month:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " day:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hour:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    .line 2349
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    .line 2350
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    .line 2351
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    .line 2352
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    .line 2353
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    .line 2354
    const/4 v14, 0x0

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2356
    const/4 v13, 0x0

    .line 2357
    .local v13, "zone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    .line 2360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v14

    int-to-long v10, v14

    .line 2361
    .local v10, "tzOffset":J
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "timezeone"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gez v14, :cond_2

    .line 2363
    neg-long v10, v10

    .line 2364
    const-wide/32 v14, 0xdbba0

    div-long v6, v10, v14

    .line 2365
    .local v6, "temp":J
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "timezeone->temp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    long-to-int v14, v6

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v8

    .line 2367
    .local v8, "temp2":I
    div-int/lit8 v14, v8, 0xa

    shl-int/lit8 v14, v14, 0x4

    rem-int/lit8 v15, v8, 0xa

    add-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2368
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mTimezone"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "2. year:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " month:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " day:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hour:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2373
    const-string v14, "SmsMessage"

    const-string v15, "This is timestamp in Arabic."

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%02d%02d%02d%02d%02d%02d%02x"

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2400
    .end local v8    # "temp2":I
    .local v9, "timestamp":Ljava/lang/String;
    :goto_0
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "timestamp string: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v14

    return-object v14

    .line 2375
    .end local v9    # "timestamp":Ljava/lang/String;
    .restart local v8    # "temp2":I
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "fa"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2376
    const-string v14, "SmsMessage"

    const-string v15, "This is timestamp in Farsi."

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%02d%02d%02d%02d%02d%02d%02x"

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0

    .line 2379
    .end local v9    # "timestamp":Ljava/lang/String;
    :cond_1
    const-string v14, "%02d%02d%02d%02d%02d%02d%02x"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0

    .line 2382
    .end local v6    # "temp":J
    .end local v8    # "temp2":I
    .end local v9    # "timestamp":Ljava/lang/String;
    :cond_2
    const-wide/32 v14, 0xdbba0

    div-long v6, v10, v14

    .line 2383
    .restart local v6    # "temp":J
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "timezeone->temp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    long-to-int v14, v6

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2385
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mTimezone"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "2. year:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " month:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " day:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hour:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ar"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2390
    const-string v14, "SmsMessage"

    const-string v15, "This is timestamp in Arabic."

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%02d%02d%02d%02d%02d%02d%02d"

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0

    .line 2392
    .end local v9    # "timestamp":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "fa"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2393
    const-string v14, "SmsMessage"

    const-string v15, "This is timestamp in Farsi."

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%02d%02d%02d%02d%02d%02d%02d"

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0

    .line 2396
    .end local v9    # "timestamp":Ljava/lang/String;
    :cond_4
    const-string v14, "%02d%02d%02d%02d%02d%02d%02d"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    return v0
.end method

.method static synthetic access$100([B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->ChangeGsmCharCodetoUnicode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 993
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 994
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v1, :cond_0

    .line 995
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 996
    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 997
    .local v0, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 998
    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    .line 999
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1001
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1007
    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1009
    .end local v0    # "octets":I
    :cond_0
    return-object v1

    .line 1004
    .restart local v0    # "octets":I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1005
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .prologue
    const/4 v3, 0x1

    .line 1684
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1686
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-ne p2, v3, :cond_1

    .line 1687
    const/4 v1, 0x0

    .line 1695
    :goto_0
    if-nez v1, :cond_0

    .line 1696
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1697
    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 1698
    .local v0, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1699
    const/16 v2, 0x8c

    if-le v0, v2, :cond_3

    .line 1700
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1702
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1708
    :goto_1
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1710
    .end local v0    # "octets":I
    :cond_0
    return-object v1

    .line 1689
    :cond_1
    if-nez p2, :cond_2

    .line 1690
    invoke-static {p0, v3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .line 1693
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .line 1705
    .restart local v0    # "octets":I
    :cond_3
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1706
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 7
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "maxEmailLen"    # I

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, -0x1

    .line 1726
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    .line 1727
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v3, :cond_0

    .line 1728
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1729
    .restart local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    mul-int/lit8 p2, p2, 0x2

    .line 1731
    if-lez p2, :cond_1

    rsub-int v4, p2, 0x8c

    add-int/lit8 v0, v4, -0x1

    .line 1733
    .local v0, "maxLenPerSMS":I
    :goto_0
    if-lez p2, :cond_2

    rsub-int v4, p2, 0x86

    add-int/lit8 v1, v4, -0x1

    .line 1736
    .local v1, "maxLenPerSMSWithHeader":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 1737
    .local v2, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1738
    if-le v2, v0, :cond_5

    .line 1739
    add-int/lit8 v4, v0, -0x2

    if-le p2, v4, :cond_3

    .line 1740
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1741
    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1761
    :goto_2
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1764
    .end local v0    # "maxLenPerSMS":I
    .end local v1    # "maxLenPerSMSWithHeader":I
    .end local v2    # "octets":I
    :cond_0
    return-object v3

    .line 1731
    :cond_1
    const/16 v0, 0x8c

    goto :goto_0

    .line 1733
    .restart local v0    # "maxLenPerSMS":I
    :cond_2
    const/16 v1, 0x86

    goto :goto_1

    .line 1743
    .restart local v1    # "maxLenPerSMSWithHeader":I
    .restart local v2    # "octets":I
    :cond_3
    rem-int v4, v2, v1

    if-eqz v4, :cond_4

    .line 1744
    div-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1745
    rem-int v4, v2, v1

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 1748
    :cond_4
    div-int v4, v2, v1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1749
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 1753
    :cond_5
    add-int/lit8 v4, v1, -0x2

    if-lt p2, v4, :cond_6

    .line 1754
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1755
    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 1757
    :cond_6
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1758
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 8
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I
    .param p3, "maxEmailLen"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1780
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1782
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-ne p2, v5, :cond_1

    .line 1783
    const/4 v3, 0x0

    .line 1790
    :goto_0
    if-nez v3, :cond_0

    .line 1791
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1792
    .restart local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    mul-int/lit8 p3, p3, 0x2

    .line 1794
    if-lez p3, :cond_3

    rsub-int v4, p3, 0x8c

    add-int/lit8 v0, v4, -0x1

    .line 1796
    .local v0, "maxLenPerSMS":I
    :goto_1
    if-lez p3, :cond_4

    rsub-int v4, p3, 0x86

    add-int/lit8 v1, v4, -0x1

    .line 1799
    .local v1, "maxLenPerSMSWithHeader":I
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 1800
    .local v2, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1801
    if-le v2, v0, :cond_7

    .line 1802
    add-int/lit8 v4, v0, -0x2

    if-le p3, v4, :cond_5

    .line 1803
    iput v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1804
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1824
    :goto_3
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1827
    .end local v0    # "maxLenPerSMS":I
    .end local v1    # "maxLenPerSMSWithHeader":I
    .end local v2    # "octets":I
    :cond_0
    return-object v3

    .line 1784
    :cond_1
    if-nez p2, :cond_2

    .line 1785
    invoke-static {p0, v5, p3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    goto :goto_0

    .line 1787
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    goto :goto_0

    .line 1794
    :cond_3
    const/16 v0, 0x8c

    goto :goto_1

    .line 1796
    .restart local v0    # "maxLenPerSMS":I
    :cond_4
    const/16 v1, 0x86

    goto :goto_2

    .line 1806
    .restart local v1    # "maxLenPerSMSWithHeader":I
    .restart local v2    # "octets":I
    :cond_5
    rem-int v4, v2, v1

    if-eqz v4, :cond_6

    .line 1807
    div-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1808
    rem-int v4, v2, v1

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1811
    :cond_6
    div-int v4, v2, v1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1812
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1816
    :cond_7
    add-int/lit8 v4, v1, -0x2

    if-lt p3, v4, :cond_8

    .line 1817
    iput v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1818
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1820
    :cond_8
    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1821
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 8
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 251
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 253
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    .line 258
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 259
    const-string v5, "SmsMessage"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 286
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 263
    .restart local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    .line 266
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 270
    .local v3, "size":I
    new-array v2, v3, [B

    .line 271
    .local v2, "pdu":[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V

    .line 282
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mti: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/SmsMessageBase;->mMti:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " indexOnIcc :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " statusOnIcc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2    # "pdu":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "SmsMessage"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 286
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6
    .param p0, "pdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 183
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 184
    .local v2, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed: "

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 188
    goto :goto_0

    .line 189
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed with out of memory: "

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 191
    goto :goto_0
.end method

.method private static decToBcd(I)I
    .locals 4
    .param p0, "digit"    # I

    .prologue
    .line 2319
    const/4 v1, 0x0

    .line 2320
    .local v1, "left":I
    const/4 v2, 0x0

    .line 2321
    .local v2, "right":I
    const/4 v0, 0x0

    .line 2323
    .local v0, "bcd_value":I
    div-int/lit8 v1, p0, 0xa

    .line 2324
    rem-int/lit8 v2, p0, 0xa

    .line 2326
    mul-int/lit8 v3, v2, 0xa

    add-int v0, v3, v1

    .line 2328
    return v0
.end method

.method public static encodeGsmShiftJis(Ljava/lang/String;)[B
    .locals 15
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 2689
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    new-array v1, v12, [C

    .line 2690
    .local v1, "buffer":[C
    const/4 v12, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v1, v14}, Ljava/lang/String;->getChars(II[CI)V

    .line 2692
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    mul-int/lit8 v12, v12, 0x4

    new-array v10, v12, [B

    .line 2693
    .local v10, "messageBuf":[B
    const/4 v3, 0x0

    .line 2694
    .local v3, "count":I
    const/4 v11, 0x0

    .line 2697
    .local v11, "start":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    :try_start_0
    array-length v12, v1

    if-ge v8, v12, :cond_11

    .line 2729
    add-int/lit8 v12, v8, 0x1

    array-length v13, v1

    if-ge v12, v13, :cond_c

    aget-char v12, v1, v8

    add-int/lit8 v13, v8, 0x1

    aget-char v13, v1, v13

    invoke-static {v12, v13}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2743
    aget-char v12, v1, v8

    const v13, 0xfffc

    and-int/2addr v12, v13

    const v13, 0xdbb8

    if-ne v12, v13, :cond_1

    .line 2744
    aget-char v12, v1, v8

    and-int/lit8 v12, v12, 0x3

    add-int/lit8 v13, v8, 0x1

    aget-char v13, v1, v13

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/kddi/android/internal/telephony/KddiSmsDataConvertor;->getGooglePuaSurrogateEmoji(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object v2

    .line 2746
    .local v2, "c":Ljava/lang/Character;
    if-eqz v2, :cond_0

    .line 2747
    if-ge v11, v8, :cond_16

    .line 2748
    sub-int v9, v8, v11

    .line 2749
    .local v9, "len":I
    new-array v5, v9, [C

    .line 2750
    .local v5, "dest":[C
    const/4 v12, 0x0

    invoke-static {v1, v11, v5, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2752
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5}, Ljava/lang/String;-><init>([C)V

    const-string v13, "sjis"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2753
    .local v0, "b":[B
    const/4 v12, 0x0

    array-length v13, v0

    invoke-static {v0, v12, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2754
    array-length v12, v0

    add-int/2addr v3, v12

    move v4, v3

    .line 2757
    .end local v0    # "b":[B
    .end local v3    # "count":I
    .end local v5    # "dest":[C
    .end local v9    # "len":I
    .local v4, "count":I
    :goto_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2758
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2759
    add-int/lit8 v8, v8, 0x1

    .line 2760
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2697
    .end local v2    # "c":Ljava/lang/Character;
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2774
    :cond_1
    :try_start_2
    aget-char v12, v1, v8

    const v13, 0xfffe

    and-int/2addr v12, v13

    const v13, 0xd83c

    if-ne v12, v13, :cond_0

    .line 2775
    aget-char v12, v1, v8

    and-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v8, 0x1

    aget-char v13, v1, v13

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/kddi/android/internal/telephony/KddiSmsDataConvertor;->getUnicodeSurrogateEmoji(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object v2

    .line 2776
    .restart local v2    # "c":Ljava/lang/Character;
    if-eqz v2, :cond_0

    .line 2777
    if-ge v11, v8, :cond_15

    .line 2778
    sub-int v9, v8, v11

    .line 2779
    .restart local v9    # "len":I
    new-array v5, v9, [C

    .line 2780
    .restart local v5    # "dest":[C
    const/4 v12, 0x0

    invoke-static {v1, v11, v5, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2782
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5}, Ljava/lang/String;-><init>([C)V

    const-string v13, "sjis"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2783
    .restart local v0    # "b":[B
    const/4 v12, 0x0

    array-length v13, v0

    invoke-static {v0, v12, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2784
    array-length v12, v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/2addr v3, v12

    move v4, v3

    .line 2787
    .end local v0    # "b":[B
    .end local v3    # "count":I
    .end local v5    # "dest":[C
    .end local v9    # "len":I
    .restart local v4    # "count":I
    :goto_3
    :try_start_3
    aget-char v12, v1, v8

    const v13, 0xd83c

    if-ne v12, v13, :cond_b

    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xdde6

    if-lt v12, v13, :cond_b

    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xddff

    if-gt v12, v13, :cond_b

    .line 2789
    add-int/lit8 v12, v8, 0x3

    array-length v13, v1

    if-ge v12, v13, :cond_b

    add-int/lit8 v12, v8, 0x2

    aget-char v12, v1, v12

    const v13, 0xd83c

    if-ne v12, v13, :cond_b

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xdde6

    if-lt v12, v13, :cond_b

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddff

    if-gt v12, v13, :cond_b

    .line 2792
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xdde8

    if-ne v12, v13, :cond_2

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddf3

    if-ne v12, v13, :cond_2

    .line 2793
    const v12, 0xf3d2

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 2794
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2795
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 2796
    add-int/lit8 v8, v8, 0x3

    .line 2797
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2798
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2799
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_2
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xdde9

    if-ne v12, v13, :cond_3

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddea

    if-ne v12, v13, :cond_3

    .line 2800
    const v12, 0xf3cf

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    .line 2801
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2802
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 2803
    add-int/lit8 v8, v8, 0x3

    .line 2804
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2805
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2806
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_3
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xddea

    if-ne v12, v13, :cond_4

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddf8

    if-ne v12, v13, :cond_4

    .line 2807
    const v12, 0xf348

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v2

    .line 2808
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2809
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 2810
    add-int/lit8 v8, v8, 0x3

    .line 2811
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2812
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2813
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_4
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xddeb

    if-ne v12, v13, :cond_5

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddf7

    if-ne v12, v13, :cond_5

    .line 2814
    const v12, 0xf3ce

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1

    move-result-object v2

    .line 2815
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_0

    .line 2816
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 2817
    add-int/lit8 v8, v8, 0x3

    .line 2818
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2819
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2820
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_5
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xddec

    if-ne v12, v13, :cond_6

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xdde7

    if-ne v12, v13, :cond_6

    .line 2821
    const v12, 0xf3d1

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v2

    .line 2822
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_0

    .line 2823
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 2824
    add-int/lit8 v8, v8, 0x3

    .line 2825
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2826
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2827
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_6
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xddee

    if-ne v12, v13, :cond_7

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddf9

    if-ne v12, v13, :cond_7

    .line 2828
    const v12, 0xf3d0

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_1

    move-result-object v2

    .line 2829
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_0

    .line 2830
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 2831
    add-int/lit8 v8, v8, 0x3

    .line 2832
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2833
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2834
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_7
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xddef

    if-ne v12, v13, :cond_8

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddf5

    if-ne v12, v13, :cond_8

    .line 2835
    const v12, 0xf6a5

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_1

    move-result-object v2

    .line 2836
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_0

    .line 2837
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 2838
    add-int/lit8 v8, v8, 0x3

    .line 2839
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2840
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2841
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_8
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xddf0

    if-ne v12, v13, :cond_9

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddf7

    if-ne v12, v13, :cond_9

    .line 2842
    const v12, 0xf3d3

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_1

    move-result-object v2

    .line 2843
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_12} :catch_0

    .line 2844
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 2845
    add-int/lit8 v8, v8, 0x3

    .line 2846
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2847
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2848
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_9
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xddf7

    if-ne v12, v13, :cond_a

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddfa

    if-ne v12, v13, :cond_a

    .line 2849
    const v12, 0xf349

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_13} :catch_1

    move-result-object v2

    .line 2850
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_14
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_14} :catch_0

    .line 2851
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    .line 2852
    add-int/lit8 v8, v8, 0x3

    .line 2853
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2854
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2855
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_a
    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12

    const v13, 0xddfa

    if-ne v12, v13, :cond_b

    add-int/lit8 v12, v8, 0x3

    aget-char v12, v1, v12

    const v13, 0xddf8

    if-ne v12, v13, :cond_b

    .line 2856
    const v12, 0xf790

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_15} :catch_1

    move-result-object v2

    .line 2857
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_16} :catch_0

    .line 2858
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_17
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_17} :catch_1

    .line 2859
    add-int/lit8 v8, v8, 0x3

    .line 2860
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .line 2861
    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2865
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_b
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_18} :catch_0

    .line 2866
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_19} :catch_1

    .line 2867
    add-int/lit8 v8, v8, 0x1

    .line 2868
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2871
    .end local v2    # "c":Ljava/lang/Character;
    :cond_c
    :try_start_1a
    aget-char v12, v1, v8

    const v13, 0xffff

    and-int/2addr v12, v13

    const/16 v13, 0xa5

    if-ne v12, v13, :cond_d

    .line 2872
    if-ge v11, v8, :cond_14

    .line 2873
    sub-int v9, v8, v11

    .line 2874
    .restart local v9    # "len":I
    new-array v5, v9, [C

    .line 2875
    .restart local v5    # "dest":[C
    const/4 v12, 0x0

    invoke-static {v1, v11, v5, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2877
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5}, Ljava/lang/String;-><init>([C)V

    const-string v13, "sjis"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2878
    .restart local v0    # "b":[B
    const/4 v12, 0x0

    array-length v13, v0

    invoke-static {v0, v12, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2879
    array-length v12, v0

    add-int/2addr v3, v12

    move v4, v3

    .line 2882
    .end local v0    # "b":[B
    .end local v3    # "count":I
    .end local v5    # "dest":[C
    .end local v9    # "len":I
    .restart local v4    # "count":I
    :goto_4
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    const/16 v12, 0x5c

    aput-byte v12, v10, v4

    .line 2883
    add-int/lit8 v11, v8, 0x1

    goto/16 :goto_2

    .line 2885
    :cond_d
    aget-char v12, v1, v8

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-static {v12}, Lcom/kddi/android/internal/telephony/KddiSmsDataConvertor;->getUnicodeEmoji(Ljava/lang/Character;)Ljava/lang/Character;

    move-result-object v2

    .line 2886
    .restart local v2    # "c":Ljava/lang/Character;
    if-eqz v2, :cond_0

    .line 2887
    if-ge v11, v8, :cond_13

    .line 2888
    sub-int v9, v8, v11

    .line 2889
    .restart local v9    # "len":I
    new-array v5, v9, [C

    .line 2890
    .restart local v5    # "dest":[C
    const/4 v12, 0x0

    invoke-static {v1, v11, v5, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2892
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5}, Ljava/lang/String;-><init>([C)V

    const-string v13, "sjis"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2893
    .restart local v0    # "b":[B
    const/4 v12, 0x0

    array-length v13, v0

    invoke-static {v0, v12, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2894
    array-length v12, v0
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_1a} :catch_0

    add-int/2addr v3, v12

    move v4, v3

    .line 2897
    .end local v0    # "b":[B
    .end local v3    # "count":I
    .end local v5    # "dest":[C
    .end local v9    # "len":I
    .restart local v4    # "count":I
    :goto_5
    :try_start_1b
    aget-char v12, v1, v8

    const/16 v13, 0x23

    if-eq v12, v13, :cond_e

    aget-char v12, v1, v8

    const/16 v13, 0x30

    if-lt v12, v13, :cond_10

    aget-char v12, v1, v8

    const/16 v13, 0x39

    if-gt v12, v13, :cond_10

    .line 2899
    :cond_e
    add-int/lit8 v12, v8, 0x1

    array-length v13, v1

    if-ge v12, v13, :cond_f

    add-int/lit8 v12, v8, 0x1

    aget-char v12, v1, v12
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_1b} :catch_1

    const/16 v13, 0x20e3

    if-ne v12, v13, :cond_f

    .line 2901
    add-int/lit8 v8, v8, 0x1

    .line 2903
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_1c} :catch_0

    .line 2904
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_1d} :catch_1

    .line 2905
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2907
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_f
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :try_start_1e
    aget-char v12, v1, v8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v4

    .line 2908
    add-int/lit8 v11, v8, 0x1

    goto/16 :goto_2

    .line 2911
    .end local v3    # "count":I
    .restart local v4    # "count":I
    :cond_10
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "count":I
    .restart local v3    # "count":I
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    const v13, 0xff00

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v4
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_1e} :catch_0

    .line 2912
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .restart local v4    # "count":I
    :try_start_1f
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v3
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_1f} :catch_1

    .line 2913
    add-int/lit8 v11, v8, 0x1

    move v3, v4

    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_2

    .line 2919
    .end local v2    # "c":Ljava/lang/Character;
    :cond_11
    if-ge v11, v8, :cond_12

    .line 2920
    sub-int v9, v8, v11

    .line 2921
    .restart local v9    # "len":I
    :try_start_20
    new-array v5, v9, [C

    .line 2922
    .restart local v5    # "dest":[C
    const/4 v12, 0x0

    invoke-static {v1, v11, v5, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2924
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5}, Ljava/lang/String;-><init>([C)V

    const-string v13, "sjis"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2925
    .restart local v0    # "b":[B
    const/4 v12, 0x0

    array-length v13, v0

    invoke-static {v0, v12, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2926
    array-length v12, v0
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_20} :catch_0

    add-int/2addr v3, v12

    .line 2932
    .end local v0    # "b":[B
    .end local v5    # "dest":[C
    .end local v9    # "len":I
    :cond_12
    new-array v6, v3, [B

    .line 2933
    .local v6, "destBuf":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v12, v6, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2935
    return-object v6

    .line 2928
    .end local v6    # "destBuf":[B
    :catch_0
    move-exception v7

    .line 2929
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    :goto_6
    new-instance v12, Lcom/android/internal/telephony/EncodeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ShiftJis encode failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2928
    .end local v3    # "count":I
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "c":Ljava/lang/Character;
    .restart local v4    # "count":I
    :catch_1
    move-exception v7

    move v3, v4

    .end local v4    # "count":I
    .restart local v3    # "count":I
    goto :goto_6

    :cond_13
    move v4, v3

    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_5

    .end local v2    # "c":Ljava/lang/Character;
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_14
    move v4, v3

    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_4

    .end local v4    # "count":I
    .restart local v2    # "c":Ljava/lang/Character;
    .restart local v3    # "count":I
    :cond_15
    move v4, v3

    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_3

    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_16
    move v4, v3

    .end local v3    # "count":I
    .restart local v4    # "count":I
    goto/16 :goto_1
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 458
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 460
    .local v1, "textPart":[B
    if-eqz p1, :cond_0

    .line 462
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 464
    .local v2, "userData":[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 465
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 472
    .local v0, "ret":[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 473
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    return-object v0

    .line 469
    .end local v0    # "ret":[B
    .end local v2    # "userData":[B
    :cond_0
    move-object v2, v1

    .restart local v2    # "userData":[B
    goto :goto_0
.end method

.method public static getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 15
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "Address"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "header"    # [B

    .prologue
    .line 2489
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2490
    :cond_0
    const/4 v5, 0x0

    .line 2598
    :goto_0
    return-object v5

    .line 2493
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 2495
    .local v7, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-eqz v7, :cond_3

    .line 2496
    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-gtz v12, :cond_2

    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v12, :cond_3

    .line 2497
    :cond_2
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSimDeliverPdu: ted.languageTable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSimDeliverPdu: ted.languageShiftTable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2500
    .local v6, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v12, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2501
    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v12, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2502
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 2506
    .end local v6    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 2508
    .local v5, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz p4, :cond_4

    const/16 v12, 0x40

    :goto_1
    or-int/lit8 v12, v12, 0x0

    int-to-byte v4, v12

    .line 2510
    .local v4, "mtiByte":B
    const/4 v2, 0x0

    .line 2514
    .local v2, "bo":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {p0, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 2519
    if-eqz v7, :cond_5

    .line 2520
    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v13, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1, v12, v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .line 2527
    .local v11, "userData":[B
    :goto_2
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_6

    .line 2529
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2508
    .end local v2    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "mtiByte":B
    .end local v11    # "userData":[B
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2523
    .restart local v2    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "mtiByte":B
    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1, v12, v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .restart local v11    # "userData":[B
    goto :goto_2

    .line 2539
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2543
    const/4 v12, 0x7

    new-array v9, v12, [B

    .line 2545
    .local v9, "timestamp":[B
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object v9

    .line 2547
    const/4 v12, 0x0

    array-length v13, v9

    invoke-virtual {v2, v9, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2549
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v2, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2597
    :goto_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v5, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 2551
    .end local v9    # "timestamp":[B
    .end local v11    # "userData":[B
    :catch_0
    move-exception v3

    .line 2557
    .local v3, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v12, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 2565
    .local v8, "textPart":[B
    if-eqz p4, :cond_7

    .line 2566
    move-object/from16 v0, p4

    array-length v12, v0

    array-length v13, v8

    add-int/2addr v12, v13

    new-array v11, v12, [B

    .line 2568
    .restart local v11    # "userData":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2569
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    array-length v14, v8

    invoke-static {v8, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2574
    :goto_4
    array-length v12, v11

    const/16 v13, 0x8c

    if-le v12, v13, :cond_8

    .line 2576
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2558
    .end local v8    # "textPart":[B
    .end local v11    # "userData":[B
    :catch_1
    move-exception v10

    .line 2559
    .local v10, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v12, "SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2562
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2571
    .end local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v8    # "textPart":[B
    :cond_7
    move-object v11, v8

    .restart local v11    # "userData":[B
    goto :goto_4

    .line 2581
    :cond_8
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2585
    const/4 v12, 0x7

    new-array v9, v12, [B

    .line 2587
    .restart local v9    # "timestamp":[B
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object v9

    .line 2589
    const/4 v12, 0x0

    array-length v13, v9

    invoke-virtual {v2, v9, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2592
    array-length v12, v11

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2594
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v2, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3
.end method

.method private static getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 10
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "Address"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2412
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0xb4

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2416
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 2417
    iput-object v7, p3, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    .line 2423
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2426
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2427
    .local v1, "c":C
    const/4 v4, 0x1

    .line 2439
    .local v4, "isNumeric":Z
    if-eqz v4, :cond_3

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2440
    const-string v7, "SmsMessage"

    const-string v8, "Address is Numeric."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 2445
    .local v2, "daBytes":[B
    if-nez v2, :cond_1

    .line 2446
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2475
    :goto_1
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2477
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "daBytes":[B
    :goto_2
    return-object v0

    .line 2419
    .end local v1    # "c":C
    .end local v4    # "isNumeric":Z
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, p3, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto :goto_0

    .line 2448
    .restart local v1    # "c":C
    .restart local v2    # "daBytes":[B
    .restart local v4    # "isNumeric":Z
    :cond_1
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_2

    :goto_3
    sub-int v5, v7, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2451
    array-length v5, v2

    invoke-virtual {v0, v2, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    move v5, v6

    .line 2448
    goto :goto_3

    .line 2454
    .end local v2    # "daBytes":[B
    :cond_3
    const-string v8, "SmsMessage"

    const-string v9, "Address is Alphabetic."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2465
    .restart local v2    # "daBytes":[B
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2468
    const/16 v7, 0xd0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2471
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v2, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 2459
    .end local v2    # "daBytes":[B
    :catch_0
    move-exception v3

    .line 2460
    .local v3, "ex":Lcom/android/internal/telephony/EncodeException;
    const-string v5, "SmsMessage"

    const-string v6, "Implausible UnsupportedEncodingException "

    invoke-static {v5, v6, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 2462
    goto :goto_2
.end method

.method public static getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 12
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "Address"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "header"    # [B

    .prologue
    .line 2218
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2219
    :cond_0
    const/4 v3, 0x0

    .line 2313
    :goto_0
    return-object v3

    .line 2222
    :cond_1
    const/4 v9, 0x0

    invoke-static {p2, v9}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    .line 2224
    .local v5, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-eqz v5, :cond_3

    .line 2225
    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-gtz v9, :cond_2

    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v9, :cond_3

    .line 2226
    :cond_2
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSimSubmitPdu: ted.languageTable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSimSubmitPdu: ted.languageShiftTable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    new-instance v4, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2229
    .local v4, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v9, v4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2230
    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v9, v4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2231
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p3

    .line 2235
    .end local v4    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 2237
    .local v3, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p3, :cond_4

    const/16 v9, 0x40

    :goto_1
    or-int/lit8 v9, v9, 0x1

    int-to-byte v2, v9

    .line 2239
    .local v2, "mtiByte":B
    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 2247
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-eqz v5, :cond_5

    .line 2248
    :try_start_0
    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v10, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p2, p3, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v8

    .line 2255
    .local v8, "userData":[B
    :goto_2
    const/4 v9, 0x0

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xa0

    if-le v9, v10, :cond_6

    .line 2257
    const/4 v3, 0x0

    goto :goto_0

    .line 2237
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "mtiByte":B
    .end local v8    # "userData":[B
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 2251
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "mtiByte":B
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p2, p3, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v8

    .restart local v8    # "userData":[B
    goto :goto_2

    .line 2267
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2272
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v0, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2312
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 2274
    .end local v8    # "userData":[B
    :catch_0
    move-exception v1

    .line 2280
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v9, "utf-16be"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 2288
    .local v6, "textPart":[B
    if-eqz p3, :cond_7

    .line 2289
    array-length v9, p3

    array-length v10, v6

    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 2291
    .restart local v8    # "userData":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, p3

    invoke-static {p3, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2292
    const/4 v9, 0x0

    array-length v10, p3

    array-length v11, v6

    invoke-static {v6, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2297
    :goto_4
    array-length v9, v8

    const/16 v10, 0x8c

    if-le v9, v10, :cond_8

    .line 2299
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2281
    .end local v6    # "textPart":[B
    .end local v8    # "userData":[B
    :catch_1
    move-exception v7

    .line 2282
    .local v7, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v9, "SmsMessage"

    const-string v10, "Implausible UnsupportedEncodingException "

    invoke-static {v9, v10, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2285
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2294
    .end local v7    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "textPart":[B
    :cond_7
    move-object v8, v6

    .restart local v8    # "userData":[B
    goto :goto_4

    .line 2304
    :cond_8
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2307
    array-length v9, v8

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2309
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v0, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3
.end method

.method private static getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "Address"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .prologue
    const/4 v3, 0x0

    .line 2130
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2134
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 2135
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 2141
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2144
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2148
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2152
    .local v1, "daBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2157
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2160
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2162
    return-object v0

    .line 2137
    .end local v1    # "daBytes":[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1    # "daBytes":[B
    :cond_1
    move v2, v3

    .line 2152
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "originationPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .prologue
    const/4 v7, 0x0

    .line 2169
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 2170
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 2171
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 2172
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 2174
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2175
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 2177
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 2179
    .local v4, "smsHeaderData":[B
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 2180
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    const/4 v2, 0x0

    .line 2208
    :goto_0
    return-object v2

    .line 2185
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 2186
    .local v2, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 2193
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2198
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2201
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2202
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2205
    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2207
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    const/4 v7, 0x0

    .line 508
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 509
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 510
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 511
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 513
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 514
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 516
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 518
    .local v4, "smsHeaderData":[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 519
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v2, 0x0

    .line 547
    :goto_0
    return-object v2

    .line 524
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 525
    .local v2, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 532
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 537
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 540
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 541
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 544
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 546
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 13
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "replyPath"    # Z
    .param p5, "expiry"    # I
    .param p6, "serviceType"    # I
    .param p7, "encodingType"    # I
    .param p8, "a"    # I
    .param p9, "b"    # I

    .prologue
    .line 2038
    if-gtz p8, :cond_0

    if-lez p9, :cond_1

    .line 2039
    :cond_0
    new-instance v12, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2040
    .local v12, "Header":Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p8

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2041
    move/from16 v0, p9

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2042
    invoke-static {v12}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 2045
    .end local v12    # "Header":Lcom/android/internal/telephony/SmsHeader;
    :goto_0
    return-object v1

    :cond_1
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .prologue
    const/4 v5, 0x0

    .line 319
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I

    .prologue
    .line 345
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 346
    :cond_0
    const/4 v7, 0x0

    .line 446
    :goto_0
    return-object v7

    .line 351
    :cond_1
    if-nez p5, :cond_4

    .line 353
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v9

    .line 354
    .local v9, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 355
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 356
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 358
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 360
    :cond_2
    if-eqz p4, :cond_5

    .line 361
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 362
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    .line 364
    :cond_3
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 368
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 369
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 380
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 382
    .local v7, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 383
    .local v6, "mtiByte":B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 390
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_7

    .line 391
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 417
    .local v11, "userData":[B
    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_9

    .line 418
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_8

    .line 420
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 372
    .end local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "mtiByte":B
    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11    # "userData":[B
    .restart local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 373
    .restart local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 374
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 375
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 382
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 395
    .restart local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "mtiByte":B
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11    # "userData":[B
    goto :goto_3

    .line 396
    .end local v11    # "userData":[B
    :catch_0
    move-exception v10

    .line 397
    .local v10, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 400
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 403
    .end local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 407
    .local v5, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 408
    .restart local v11    # "userData":[B
    const/16 p5, 0x3

    goto :goto_3

    .line 409
    .end local v11    # "userData":[B
    :catch_2
    move-exception v10

    .line 410
    .restart local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    const-string v12, "SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 431
    .end local v5    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v11    # "userData":[B
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 444
    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 445
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 433
    :cond_9
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    .line 435
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 440
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "is7bitAlphabet"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1833
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "replyPath"    # Z
    .param p6, "expiry"    # I
    .param p7, "serviceType"    # I
    .param p8, "encodingType"    # I

    .prologue
    .line 1853
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "replyPath"    # Z
    .param p6, "expiry"    # I
    .param p7, "serviceType"    # I
    .param p8, "encodingType"    # I
    .param p9, "languageTable"    # I
    .param p10, "languageShiftTable"    # I

    .prologue
    .line 1875
    const-string v12, "SmsMessage"

    const-string v13, "getSubmitPdu with Options"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1878
    :cond_0
    const/4 v8, 0x0

    .line 2026
    :goto_0
    return-object v8

    .line 1880
    :cond_1
    const-string v12, "SmsMessage"

    const-string v13, "**getSubmitPdu_Options**"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "replyPath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encodingType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const-string v12, "SmsMessage"

    const-string v13, "**********************"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1887
    .local v8, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v12, 0x40

    :goto_1
    or-int/lit8 v12, v12, 0x1

    int-to-byte v7, v12

    .line 1888
    .local v7, "mtiByte":B
    if-eqz p5, :cond_2

    .line 1889
    or-int/lit16 v12, v7, 0x80

    int-to-byte v7, v12

    .line 1890
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mtiByte = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_2
    or-int/lit8 v12, v7, 0x10

    int-to-byte v7, v12

    .line 1899
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mtiByte = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const/4 v5, 0x0

    .line 1906
    .local v5, "encodingUcs2":Z
    const/4 v4, 0x0

    .line 1907
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v7, v1, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 1913
    const/4 v12, 0x1

    move/from16 v0, p8

    if-ne v0, v12, :cond_4

    .line 1914
    :try_start_0
    new-instance v12, Lcom/android/internal/telephony/EncodeException;

    const-string v13, "Input Method is Unicode"

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1958
    :catch_0
    move-exception v6

    .line 1972
    .local v6, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v12, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 1981
    .local v9, "textPart":[B
    if-eqz p4, :cond_6

    .line 1983
    move-object/from16 v0, p4

    array-length v12, v0

    array-length v13, v9

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    new-array v11, v12, [B

    .line 1985
    .local v11, "userData":[B
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 1986
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1987
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    add-int/lit8 v13, v13, 0x1

    array-length v14, v9

    invoke-static {v9, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1992
    :goto_2
    array-length v12, v11

    const/16 v13, 0x8c

    if-le v12, v13, :cond_7

    .line 1994
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1887
    .end local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "encodingUcs2":Z
    .end local v6    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v7    # "mtiByte":B
    .end local v9    # "textPart":[B
    .end local v11    # "userData":[B
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1931
    .restart local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "encodingUcs2":Z
    .restart local v7    # "mtiByte":B
    :cond_4
    :try_start_2
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p9

    move/from16 v3, p10

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .line 1934
    .restart local v11    # "userData":[B
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_5

    .line 1936
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1947
    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1953
    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1954
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "expirty = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2025
    :goto_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v8, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 1974
    .end local v11    # "userData":[B
    .restart local v6    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v10

    .line 1975
    .local v10, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v12, "SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1978
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1989
    .end local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v9    # "textPart":[B
    :cond_6
    move-object v11, v9

    .restart local v11    # "userData":[B
    goto :goto_2

    .line 2008
    :cond_7
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2015
    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2016
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "expirty = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    array-length v12, v11

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2022
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3
.end method

.method public static getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2055
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 2058
    .local v4, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v3, 0x1

    .line 2060
    .local v3, "mtiByte":B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0xb4

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2064
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 2065
    iput-object v8, v4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 2072
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2075
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2080
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2084
    .local v1, "daBytes":[B
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v9, v6, 0x2

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v10, 0xf0

    if-ne v6, v10, :cond_1

    const/4 v6, 0x1

    :goto_1
    sub-int v6, v9, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2088
    array-length v6, v1

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2091
    const/16 v6, 0x7f

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2099
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2106
    .local v5, "userData":[B
    aget-byte v6, v5, v7

    and-int/lit16 v6, v6, 0xff

    const/16 v9, 0xa0

    if-le v6, v9, :cond_2

    move-object v4, v8

    .line 2118
    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v5    # "userData":[B
    :goto_2
    return-object v4

    .line 2068
    .end local v1    # "daBytes":[B
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1    # "daBytes":[B
    :cond_1
    move v6, v7

    .line 2084
    goto :goto_1

    .line 2100
    :catch_0
    move-exception v2

    .line 2101
    .local v2, "ex":Lcom/android/internal/telephony/EncodeException;
    const-string v6, "SmsMessage"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v8

    .line 2103
    goto :goto_2

    .line 2112
    .end local v2    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v5    # "userData":[B
    :cond_2
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2116
    array-length v6, v5

    invoke-virtual {v0, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2117
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_2
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .prologue
    const/4 v3, 0x0

    .line 565
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 569
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 570
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 579
    :goto_0
    if-eqz p3, :cond_0

    .line 581
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 586
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 589
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 596
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 601
    .local v1, "daBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 605
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 608
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 609
    return-object v0

    .line 572
    .end local v1    # "daBytes":[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1    # "daBytes":[B
    :cond_2
    move v2, v3

    .line 601
    goto :goto_1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 296
    .local v0, "len":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 298
    .local v1, "smscLen":I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private static isSJIS2ByeteCharactor(B)Z
    .locals 2
    .param p0, "in"    # B

    .prologue
    .line 2676
    const/16 v0, 0x81

    and-int/lit16 v1, p0, 0xff

    if-gt v0, v1, :cond_0

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x9f

    if-le v0, v1, :cond_3

    :cond_0
    const/16 v0, 0xe0

    and-int/lit16 v1, p0, 0xff

    if-gt v0, v1, :cond_1

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xef

    if-le v0, v1, :cond_3

    :cond_1
    const/16 v0, 0xf3

    and-int/lit16 v1, p0, 0xff

    if-gt v0, v1, :cond_2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xf4

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v0, 0xf6

    and-int/lit16 v1, p0, 0xff

    if-gt v0, v1, :cond_4

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xf7

    if-gt v0, v1, :cond_4

    .line 2681
    :cond_3
    const/4 v0, 0x1

    .line 2684
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 226
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 227
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 214
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 215
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 4
    .param p1, "pdu"    # [B

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 1137
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1139
    .local v1, "p":Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    .line 1141
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1149
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1151
    .local v0, "firstByte":I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMti:I

    .line 1152
    iget v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMti:I

    packed-switch v2, :pswitch_data_0

    .line 1168
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1158
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1170
    :goto_0
    return-void

    .line 1161
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1164
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1223
    and-int/lit16 v2, p2, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1225
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1229
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_0

    .line 1230
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SmsMessage;->CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

    if-eqz v2, :cond_0

    .line 1231
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v5, "+00852"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1232
    const-string v2, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is wrong format startwith +00852 Address Before = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v1, "origAddress":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1235
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v5, "+"

    iput-object v5, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1237
    const-string v2, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Address After Replacement = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    .end local v1    # "origAddress":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_1

    .line 1249
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1253
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1260
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    .line 1264
    and-int/lit8 v2, p2, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_3

    move v0, v3

    .line 1266
    .local v0, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1267
    return-void

    .end local v0    # "hasUserDataHeader":Z
    :cond_2
    move v2, v4

    .line 1223
    goto/16 :goto_0

    :cond_3
    move v0, v4

    .line 1264
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 5
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v1, 0x1

    .line 1179
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 1182
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1184
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1186
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    .line 1187
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 1189
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 1192
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1194
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1195
    .local v0, "extraParams":I
    move v2, v0

    .line 1196
    .local v2, "moreExtraParams":I
    :goto_0
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 1200
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_0

    .line 1204
    :cond_0
    and-int/lit8 v3, v0, 0x78

    if-nez v3, :cond_3

    .line 1206
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    .line 1207
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1210
    :cond_1
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_2

    .line 1211
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1214
    :cond_2
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_3

    .line 1215
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 1216
    .local v1, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1220
    .end local v0    # "extraParams":I
    .end local v1    # "hasUserDataHeader":Z
    .end local v2    # "moreExtraParams":I
    :cond_3
    return-void

    .line 1215
    .restart local v0    # "extraParams":I
    .restart local v2    # "moreExtraParams":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1276
    and-int/lit16 v4, p2, 0x80

    const/16 v7, 0x80

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1279
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1283
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1288
    iget-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v4, :cond_0

    .line 1295
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1299
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1307
    const/4 v2, 0x0

    .line 1308
    .local v2, "validityPeriodLength":I
    shr-int/lit8 v4, p2, 0x3

    and-int/lit8 v1, v4, 0x3

    .line 1309
    .local v1, "validityPeriodFormat":I
    if-nez v1, :cond_2

    .line 1311
    const/4 v2, 0x0

    move v3, v2

    .line 1323
    .end local v2    # "validityPeriodLength":I
    .local v3, "validityPeriodLength":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    if-lez v3, :cond_4

    .line 1325
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .end local v1    # "validityPeriodFormat":I
    .end local v3    # "validityPeriodLength":I
    :cond_1
    move v4, v6

    .line 1276
    goto :goto_0

    .line 1313
    .restart local v1    # "validityPeriodFormat":I
    .restart local v2    # "validityPeriodLength":I
    :cond_2
    const/4 v4, 0x2

    if-ne v4, v1, :cond_3

    .line 1315
    const/4 v2, 0x1

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .line 1319
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_3
    const/4 v2, 0x7

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .line 1328
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_4
    and-int/lit8 v4, p2, 0x40

    const/16 v7, 0x40

    if-ne v4, v7, :cond_5

    move v0, v5

    .line 1330
    .local v0, "hasUserDataHeader":Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1331
    return-void

    .end local v0    # "hasUserDataHeader":Z
    :cond_5
    move v0, v6

    .line 1328
    goto :goto_2
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 12
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    .prologue
    .line 1341
    const/4 v4, 0x0

    .line 1342
    .local v4, "hasMessageClass":Z
    const/4 v6, 0x0

    .line 1344
    .local v6, "userDataCompressed":Z
    const/4 v3, 0x0

    .line 1349
    .local v3, "encodingType":I
    const/4 v5, 0x0

    .line 1363
    .local v5, "isChangedmwiSense":Z
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x84

    if-ne v9, v10, :cond_2

    .line 1364
    const/4 v3, 0x4

    .line 1482
    :cond_0
    :goto_0
    const/4 v9, 0x1

    if-ne v3, v9, :cond_f

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p1, p2, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v2

    .line 1484
    .local v2, "count":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    .line 1485
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1570
    packed-switch v3, :pswitch_data_0

    .line 1613
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1615
    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const-string v10, "\r\n"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xd

    const/16 v11, 0xa

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 1617
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->parseMessageBody()V

    .line 1620
    :cond_1
    if-nez v4, :cond_14

    .line 1621
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1638
    :goto_3
    return-void

    .line 1365
    .end local v2    # "count":I
    :cond_2
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_6

    .line 1366
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_3

    const/4 v6, 0x1

    .line 1367
    :goto_4
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    .line 1369
    :goto_5
    if-eqz v6, :cond_5

    .line 1370
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto :goto_0

    .line 1366
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 1367
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 1374
    :cond_5
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 1376
    :pswitch_0
    const/4 v3, 0x1

    .line 1377
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1381
    :pswitch_1
    const/4 v3, 0x3

    .line 1382
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1391
    :pswitch_2
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const/4 v3, 0x2

    .line 1394
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1399
    :cond_6
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xf0

    if-ne v9, v10, :cond_8

    .line 1400
    const/4 v4, 0x1

    .line 1401
    const/4 v6, 0x0

    .line 1402
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1404
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_7

    .line 1406
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1409
    :cond_7
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 1411
    :cond_8
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-eq v9, v10, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xd0

    if-eq v9, v10, :cond_9

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_d

    .line 1420
    :cond_9
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1423
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xc0

    if-ne v9, v10, :cond_a

    const/4 v9, 0x1

    :goto_6
    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    .line 1424
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    .line 1426
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_b

    .line 1427
    const/4 v3, 0x3

    .line 1432
    :goto_7
    const/4 v6, 0x0

    .line 1433
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_c

    const/4 v0, 0x1

    .line 1434
    .local v0, "active":Z
    :goto_8
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiSense:Z

    .line 1438
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_0

    .line 1447
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in DCS for fax/email/other: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Dont store = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1423
    .end local v0    # "active":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_6

    .line 1429
    :cond_b
    const/4 v3, 0x1

    goto :goto_7

    .line 1433
    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    .line 1451
    :cond_d
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xc0

    const/16 v10, 0x80

    if-ne v9, v10, :cond_e

    .line 1469
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1470
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1474
    :cond_e
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1482
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1573
    .restart local v2    # "count":I
    :pswitch_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1577
    :pswitch_4
    if-eqz p2, :cond_10

    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v10, v9

    :goto_9
    if-eqz p2, :cond_11

    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :goto_a
    invoke-virtual {p1, v2, v10, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    const/4 v9, 0x0

    move v10, v9

    goto :goto_9

    :cond_11
    const/4 v9, 0x0

    goto :goto_a

    .line 1588
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v8

    .line 1589
    .local v8, "userdata":[B
    array-length v7, v8

    .line 1590
    .local v7, "userLength":I
    if-lez v7, :cond_13

    .line 1591
    add-int/lit8 v9, v7, -0x2

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    int-to-char v1, v9

    .line 1592
    .local v1, "compChar":C
    add-int/lit8 v9, v7, -0x1

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    or-int/2addr v9, v1

    int-to-char v1, v9

    .line 1594
    const v9, 0xd83d

    if-eq v1, v9, :cond_12

    const v9, 0xd83c

    if-ne v1, v9, :cond_13

    .line 1595
    :cond_12
    const-string v9, "SmsMessage"

    const-string v10, "found emoji"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v9, 0x2

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mlastByte:[B

    .line 1597
    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mlastByte:[B

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x2

    aget-byte v11, v8, v11

    aput-byte v11, v9, v10

    .line 1598
    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mlastByte:[B

    const/4 v10, 0x1

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v8, v11

    aput-byte v11, v9, v10

    .line 1599
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsfourBytesUnicode:Z

    .line 1603
    .end local v1    # "compChar":C
    :cond_13
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1607
    .end local v7    # "userLength":I
    .end local v8    # "userdata":[B
    :pswitch_6
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1623
    :cond_14
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_2

    goto/16 :goto_3

    .line 1625
    :pswitch_7
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_3

    .line 1628
    :pswitch_8
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_3

    .line 1631
    :pswitch_9
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_3

    .line 1634
    :pswitch_a
    sget-object v9, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_3

    .line 1570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1374
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1623
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 1023
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 1664
    const/4 v0, 0x0

    return v0
.end method

.method public getMessagePriority()I
    .locals 2

    .prologue
    .line 2603
    const-string v0, "SmsMessage"

    const-string v1, "getMessagePriority: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1669
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->numberOfMessages:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1109
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1044
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiSense:Z

    if-nez v0, :cond_0

    .line 1048
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1055
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiSense:Z

    if-eqz v0, :cond_0

    .line 1059
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1066
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMwiDontStore:Z

    if-eqz v1, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return v0

    .line 1075
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1090
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1099
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1103
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1029
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
