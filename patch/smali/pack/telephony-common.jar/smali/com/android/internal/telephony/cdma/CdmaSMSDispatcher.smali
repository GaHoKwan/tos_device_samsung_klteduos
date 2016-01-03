.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final CTC_AUTOLOGIN_WAITING_ACTION:Ljava/lang/String; = "android.intent.action.WAITING_AUTO_LOGIN"

.field private static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher"

.field private static final VDBG:Z


# instance fields
.field private mCTCAutoLoginWaitingActionReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private misDAN:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->misDAN:Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 916
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCTCAutoLoginWaitingActionReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCTCAutoLoginWaitingActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.WAITING_AUTO_LOGIN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIsDisposed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendAutoLoginSmsResponse()V

    return-void
.end method

.method public static getSCADialingNumberFromRil(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "smsc_string"    # Ljava/lang/String;

    .prologue
    .line 438
    const/4 v5, 0x0

    .line 439
    .local v5, "toa":I
    const/4 v1, 0x0

    .line 441
    .local v1, "isInternational":Z
    const-string v6, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "smsc_string = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v6, "\"?(\\+?)([0-9]+)\"?,([0-9]*)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 444
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 446
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 447
    const-string v6, "+"

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 448
    const/4 v1, 0x1

    .line 451
    :cond_0
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "smsc":Ljava/lang/String;
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 458
    :goto_0
    and-int/lit16 v6, v5, 0x90

    const/16 v7, 0x90

    if-ne v6, v7, :cond_1

    .line 459
    const/4 v1, 0x1

    .line 466
    :cond_1
    if-eqz v1, :cond_2

    .line 467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 470
    .end local v4    # "smsc":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v4

    .line 454
    .restart local v4    # "smsc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    goto :goto_0

    .line 462
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "smsc":Ljava/lang/String;
    :cond_3
    const-string v6, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid smsc format. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private sendAutoLoginSmsResponse()V
    .locals 6

    .prologue
    .line 963
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 964
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 966
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x25

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 967
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 968
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 969
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 970
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 971
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 972
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "sendAutoLoginSmsResponse() invokeRilRequestRaw"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 978
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 983
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v2

    .line 980
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 973
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 974
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendAutoLoginSms() error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 977
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 978
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 979
    :catch_2
    move-exception v2

    .line 980
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 976
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 977
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 978
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 981
    :goto_1
    throw v3

    .line 979
    :catch_3
    move-exception v2

    .line 980
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 263
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z
    .param p3, "isEms"    # Z

    .prologue
    .line 270
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected checkEcmPolicy(ZLjava/lang/String;)Z
    .locals 7
    .param p1, "outgoing"    # Z
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 871
    const/4 v4, 0x0

    .local v4, "result":Z
    const/4 v3, 0x0

    .local v3, "ltecall":Z
    const/4 v1, 0x0

    .local v1, "ecm":Z
    const/4 v2, 0x0

    .line 872
    .local v2, "ine911":Z
    const-string v5, "ril.cdma.inecmmode"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 873
    const-string v0, "4437501000"

    .line 902
    .local v0, "dcnAddr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 903
    const/4 v4, 0x1

    .line 909
    :goto_0
    return v4

    .line 905
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public checkImeiTrackerMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 913
    const/4 v0, 0x1

    return v0
.end method

.method public clearDuplicatedCbMessages()V
    .locals 2

    .prologue
    .line 865
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Error! clearDuplicatedCbMessages is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method protected dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 2
    .param p1, "smsc_hexstring"    # Ljava/lang/String;

    .prologue
    .line 587
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "dispatchSmsServiceCenter function is not applicable for CDMA"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCTCAutoLoginWaitingActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 130
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "3gpp2"

    return-object v0
.end method

.method handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 157
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCdmaStatusReport deliveryPendingList.size(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 160
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 161
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCdmaStatusReport tracker.mMessageRef: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sms.mMessageRef: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    if-ne v5, v6, :cond_1

    .line 166
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 168
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 170
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 171
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 173
    const-string v5, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v5, "simSlot"

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 159
    .restart local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 144
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 150
    :goto_0
    return-void

    .line 148
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const-string v0, "CdmaSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport() called for object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 189
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 192
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 194
    .local v7, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 195
    return-void

    .line 189
    .end local v5    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v7    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "origPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 633
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 636
    .local v9, "intent":Landroid/content/Intent;
    const-string v2, "LastSentMsg"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 637
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3, v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v8

    .line 639
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 644
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p7, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p5

    invoke-static {p2, p1, p3, v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .local v7, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p5

    .line 647
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 648
    .local v10, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v10, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v11

    .line 650
    .local v11, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 644
    .end local v7    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v10    # "map":Ljava/util/HashMap;
    .end local v11    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public sendDomainChangeSms(B)V
    .locals 7
    .param p1, "type"    # B

    .prologue
    const/4 v6, 0x0

    .line 401
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsPhone;

    .line 402
    .local v1, "imsPhone":Lcom/android/internal/telephony/ims/ImsPhone;
    const-string v0, "4437501000"

    .line 403
    .local v0, "destAddr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsPhone;->getDcnAddress()Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDomainChangeNotification(BLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 426
    .local v3, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, v6, v6, v3}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 427
    .local v2, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v6, v6, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 429
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 430
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 683
    const-string v19, "CdmaSMSDispatcher"

    const-string v20, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_c

    .line 685
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v10, :cond_0

    .line 686
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .line 688
    .local v14, "sentIntent":Landroid/app/PendingIntent;
    const/16 v19, 0x1

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 689
    .restart local v14    # "sentIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    .line 690
    .local v9, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v19, "CdmaSMSDispatcher"

    const-string v20, "failed to send error result"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 696
    .end local v9    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v10    # "i":I
    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 698
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v13, v0, 0xff

    .line 699
    .local v13, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 700
    .local v12, "msgCount":I
    const/4 v8, 0x0

    .line 702
    .local v8, "encoding":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    if-ge v10, v12, :cond_5

    .line 704
    const-string v19, "USA"

    const-string v20, "CHN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 705
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 709
    .local v7, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_3
    iget v0, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v8, v0, :cond_3

    if-eqz v8, :cond_2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    .line 712
    :cond_2
    iget v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 702
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 707
    .end local v7    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .restart local v7    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    goto :goto_3

    .line 716
    .end local v7    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v12, :cond_c

    .line 717
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 718
    .local v5, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v13, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 719
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    iput v0, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 720
    iput v12, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 721
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 722
    new-instance v15, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v15}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 723
    .local v15, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v5, v15, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 725
    const/4 v14, 0x0

    .line 726
    .restart local v14    # "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v10, :cond_6

    .line 727
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 730
    .restart local v14    # "sentIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v6, 0x0

    .line 731
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v10, :cond_7

    .line 732
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 735
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_7
    new-instance v18, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 736
    .local v18, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 738
    move-object/from16 v0, v18

    iput-object v15, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 740
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_a

    .line 742
    const-string v19, "CHN"

    const-string v20, "CHN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, "HKTW"

    const-string v20, "CHN"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 744
    :cond_8
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 754
    :goto_5
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 760
    if-eqz v6, :cond_b

    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_b

    const/16 v19, 0x1

    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, p6

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 763
    .local v16, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .line 765
    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v14, v6, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v17

    .line 767
    .local v17, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 716
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 747
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v16    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v17    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_9
    const/16 v19, 0x9

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_5

    .line 752
    :cond_a
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_5

    .line 760
    :cond_b
    const/16 v19, 0x0

    goto :goto_6

    .line 769
    .end local v5    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v8    # "encoding":I
    .end local v12    # "msgCount":I
    .end local v13    # "refNumber":I
    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    .end local v15    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v18    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_c
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 20
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 785
    const-string v18, "CdmaSMSDispatcher"

    const-string v19, "Sending multipart message already in progress. Can\'t send another multipart message."

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_b

    .line 787
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 788
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    .line 790
    .local v13, "sentIntent":Landroid/app/PendingIntent;
    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local v13    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 791
    .restart local v13    # "sentIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v8

    .line 792
    .local v8, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v18, "CdmaSMSDispatcher"

    const-string v19, "failed to send error result"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 798
    .end local v8    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v9    # "i":I
    .end local v13    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 800
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v12, v0, 0xff

    .line 801
    .local v12, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 802
    .local v11, "msgCount":I
    const/4 v7, 0x0

    .line 804
    .local v7, "encoding":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v11, :cond_4

    .line 805
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    .line 806
    .local v6, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v0, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v7, v0, :cond_3

    if-eqz v7, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    .line 809
    :cond_2
    iget v7, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 804
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 813
    .end local v6    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_b

    .line 814
    new-instance v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 815
    .local v4, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v12, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 816
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    iput v0, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 817
    iput v11, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 818
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 819
    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 820
    .local v14, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v4, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 822
    const/4 v13, 0x0

    .line 823
    .restart local v13    # "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_5

    .line 824
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 827
    .restart local v13    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    const/4 v5, 0x0

    .line 828
    .local v5, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_6

    .line 829
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 832
    .restart local v5    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 833
    .local v17, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 834
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 836
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_9

    .line 838
    const-string v18, "CHN"

    const-string v19, "CHN"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "HKTW"

    const-string v19, "CHN"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 840
    :cond_7
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 847
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 852
    if-eqz v5, :cond_a

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_a

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 855
    .local v15, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 857
    .local v10, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v13, v5, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 859
    .local v16, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 813
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 842
    .end local v10    # "map":Ljava/util/HashMap;
    .end local v15    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v16    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4

    .line 845
    :cond_9
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4

    .line 852
    :cond_a
    const/16 v18, 0x0

    goto :goto_5

    .line 861
    .end local v4    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v5    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v7    # "encoding":I
    .end local v11    # "msgCount":I
    .end local v12    # "refNumber":I
    .end local v13    # "sentIntent":Landroid/app/PendingIntent;
    .end local v14    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v17    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_b
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z

    .prologue
    const/4 v4, 0x1

    .line 278
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 279
    .local v3, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 281
    iput-object p4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 284
    if-ne p5, v4, :cond_2

    .line 286
    const-string v5, "CHN"

    const-string v6, "CHN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "HKTW"

    const-string v6, "CHN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    :cond_0
    const/4 v5, 0x2

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 301
    :goto_0
    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 307
    if-eqz p7, :cond_3

    if-eqz p8, :cond_3

    :goto_1
    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 310
    .local v1, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 312
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, p6, p7, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 314
    .local v2, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 315
    return-void

    .line 291
    .end local v0    # "map":Ljava/util/HashMap;
    .end local v1    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/16 v5, 0x9

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 299
    :cond_2
    const/4 v5, 0x4

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 307
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected sendNewSubmitPduWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZI)V
    .locals 0
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "priority"    # I

    .prologue
    .line 668
    return-void
.end method

.method protected sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 617
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "sendOTADomestic"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v0, 0x1

    .line 620
    .local v0, "curIndex":I
    const/4 v3, 0x1

    .line 622
    .local v3, "totalCnt":I
    invoke-static {p2, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    .line 623
    .local v2, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v1

    .line 624
    .local v1, "map":Ljava/util/HashMap;
    const-string v5, "curIndex"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v5, "totalCnt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v5, "3gpp"

    invoke-virtual {p0, v1, v7, v7, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    .line 627
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 628
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 345
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 348
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 350
    .local v2, "pdu":[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 352
    .local v3, "reply":Landroid/os/Message;
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSms:  isIms()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mImsRetry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMessageRef="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SS="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x1

    .local v0, "curIndex":I
    const/4 v4, 0x1

    .line 366
    .local v4, "totalCnt":I
    const-string v5, "curIndex"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    const-string v5, "curIndex"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 368
    const-string v5, "totalCnt"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 371
    :cond_0
    if-ge v0, v4, :cond_1

    .line 372
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSmsMore([BLandroid/os/Message;)V

    .line 395
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 1
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 139
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 328
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 331
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 203
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 205
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "LastSentMsg"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {p4, v7, v8, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p5, :cond_1

    const/4 v7, 0x1

    :goto_1
    const/4 v8, 0x0

    invoke-static {p2, p1, p3, v7, v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    .line 243
    .local v4, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v3

    .line 247
    .local v3, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, p4, p5, v7}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v6

    .line 249
    .local v6, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 253
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 254
    .local v5, "time":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, p3, v8}, Lcom/android/internal/telephony/SMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 241
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v3    # "map":Ljava/util/HashMap;
    .end local v4    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v5    # "time":Ljava/lang/Long;
    .end local v6    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 18
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "callbackNumber"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .prologue
    .line 503
    if-eqz p5, :cond_0

    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 506
    .local v15, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    :try_start_0
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 509
    .local v13, "intent":Landroid/content/Intent;
    const-string v4, "LastSentMsg"

    const/4 v5, 0x1

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v13    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 503
    .end local v15    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 512
    .restart local v15    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v12

    .line 513
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 517
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v14

    .line 518
    .local v14, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v14, v1, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v17

    .line 520
    .local v17, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 522
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 523
    .local v11, "calendar":Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 524
    .local v16, "time":Ljava/lang/Long;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/android/internal/telephony/SMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "is7bitAlphabet"    # Z

    .prologue
    .line 475
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v9

    .line 480
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 484
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz p5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 487
    .local v11, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, p1, v0, v1, v11}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 488
    .local v10, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v10, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v13

    .line 490
    .local v13, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 492
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 493
    .local v8, "calendar":Ljava/util/Calendar;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 494
    .local v12, "time":Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 484
    .end local v8    # "calendar":Ljava/util/Calendar;
    .end local v10    # "map":Ljava/util/HashMap;
    .end local v11    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v12    # "time":Ljava/lang/Long;
    .end local v13    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected sendTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I

    .prologue
    .line 614
    return-void
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 21
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "replyPath"    # Z
    .param p7, "expiry"    # I
    .param p8, "serviceType"    # I
    .param p9, "encodingType"    # I
    .param p10, "confirmID"    # I

    .prologue
    .line 534
    const/4 v13, 0x1

    .local v13, "curIndex":I
    const/16 v19, 0x1

    .line 535
    .local v19, "totalCnt":I
    const/4 v10, 0x0

    .line 537
    .local v10, "senderAddr":Ljava/lang/String;
    if-lez p10, :cond_0

    .line 538
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_0
    return-void

    .line 542
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 544
    :try_start_0
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 545
    .local v15, "intent":Landroid/content/Intent;
    const-string v5, "LastSentMsg"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6, v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    .end local v15    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v14

    .line 548
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 564
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 565
    :cond_2
    if-eqz p5, :cond_3

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 569
    .local v17, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v16

    .line 570
    .local v16, "map":Ljava/util/HashMap;
    const-string v5, "curIndex"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v5, "totalCnt"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v20

    .line 575
    .local v20, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 578
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 579
    .local v12, "calendar":Ljava/util/Calendar;
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 580
    .local v18, "time":Ljava/lang/Long;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v6}, Lcom/android/internal/telephony/SMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 565
    .end local v12    # "calendar":Ljava/util/Calendar;
    .end local v16    # "map":Ljava/util/HashMap;
    .end local v17    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v18    # "time":Ljava/lang/Long;
    .end local v20    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 567
    :cond_4
    if-eqz p5, :cond_5

    const/4 v8, 0x1

    :goto_3
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v17

    .restart local v17    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    goto :goto_2

    .end local v17    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v8, 0x0

    goto :goto_3
.end method

.method protected sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "noOfOccur"    # I
    .param p3, "scptCategory"    # I
    .param p4, "scptLanguage"    # I
    .param p5, "scptCategoryResult"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v6, 0x0

    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    const-string v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending SCPT result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;IIII)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 659
    invoke-virtual {p0, p1, v6, v6, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 660
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, p6, p7, v3}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 662
    .local v2, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 663
    return-void
.end method
