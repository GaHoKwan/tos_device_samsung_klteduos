.class public Lcom/android/internal/telephony/CardSubscriptionManager;
.super Landroid/os/Handler;
.source "CardSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CardSubscriptionManager$1;,
        Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    }
.end annotation


# static fields
.field private static final EVENT_GET_ICCID_DONE:I = 0x3

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x0

.field private static final EVENT_RADIO_ON:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x5

.field private static final EVENT_UPDATE_UICC_STATUS:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CardSubscriptionManager"

.field private static sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;


# instance fields
.field private mAllCardsInfoAvailable:Z

.field private mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

.field private mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

.field private mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

.field private mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mNumPhones:I

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mRadioOn:[Z

.field private mUiccCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateUiccStatusContext:I


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    .line 154
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    .line 155
    iput v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    .line 159
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    .line 162
    iput-object v5, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    .line 164
    iput-boolean v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 181
    const-string v1, "CardSubscriptionManager"

    const-string v2, "Constructor - Enter"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-object p2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    const-string v1, "CTC"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    aput-boolean v4, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/SubscriptionData;

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    .line 199
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    if-ge v0, v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/CardSubscriptionManager;Lcom/android/internal/telephony/uicc/UiccCard;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    new-array v1, v1, [Landroid/os/RegistrantList;

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    .line 204
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    new-array v1, v1, [Landroid/os/RegistrantList;

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    .line 205
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    if-ge v0, v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    aput-object v2, v1, v0

    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    aput-object v2, v1, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 210
    :cond_3
    const-string v1, "CardSubscriptionManager"

    const-string v2, "Constructor - Exit"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method private appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 616
    sget-object v0, Lcom/android/internal/telephony/CardSubscriptionManager$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 628
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 618
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 620
    :pswitch_1
    const-string v0, "SIM"

    goto :goto_0

    .line 622
    :pswitch_2
    const-string v0, "USIM"

    goto :goto_0

    .line 624
    :pswitch_3
    const-string v0, "RUIM"

    goto :goto_0

    .line 626
    :pswitch_4
    const-string v0, "CSIM"

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillAppIndex(Lcom/android/internal/telephony/Subscription;I)V
    .locals 3
    .param p1, "cardSub"    # Lcom/android/internal/telephony/Subscription;
    .param p2, "appIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 603
    iget-object v0, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 604
    iput v2, p1, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 605
    iput v2, p1, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    const-string v0, "SIM"

    iget-object v1, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "USIM"

    iget-object v1, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    :cond_2
    iput p2, p1, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 608
    iput v2, p1, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0

    .line 609
    :cond_3
    const-string v0, "RUIM"

    iget-object v1, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CSIM"

    iget-object v1, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    :cond_4
    iput v2, p1, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 611
    iput p2, p1, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/internal/telephony/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/CardSubscriptionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 168
    const-class v1, Lcom/android/internal/telephony/CardSubscriptionManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "CardSubscriptionManager"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object v0, Lcom/android/internal/telephony/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CardSubscriptionManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    .line 172
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized handleGetIccIdDone(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 432
    monitor-enter p0

    if-nez p1, :cond_0

    .line 433
    :try_start_0
    const-string v4, "CardSubscriptionManager"

    const-string v5, "handleGetIccIdDone: parameter is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :goto_0
    monitor-exit p0

    return-void

    .line 437
    :cond_0
    :try_start_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 438
    .local v2, "data":[B
    const/4 v1, 0x0

    .line 440
    .local v1, "cardIndex":I
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 441
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 444
    :cond_1
    const-string v4, "CardSubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetIccIdDone: cardIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_2

    .line 447
    const-string v4, "CardSubscriptionManager"

    const-string v5, "handleGetIccIdDone: radio not available - EXIT"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
    .end local v1    # "cardIndex":I
    .end local v2    # "data":[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 451
    .restart local v1    # "cardIndex":I
    .restart local v2    # "data":[B
    :cond_2
    const/4 v3, 0x0

    .line 453
    .local v3, "iccId":Ljava/lang/String;
    :try_start_2
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 454
    const-string v4, "CardSubscriptionManager"

    const-string v5, "Exception in GET ICCID"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setCardState(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)V

    .line 461
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 463
    iget-object v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setIccId(Ljava/lang/String;)V

    .line 464
    const-string v4, "CardSubscriptionManager"

    const-string v5, "============================================================="

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v4, "CardSubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET ICCID DONE. ICCID of card["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v4, "CardSubscriptionManager"

    const-string v5, "============================================================="

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICCID Read Done for card : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/CardSubscriptionManager;->updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_3
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1
.end method

.method private handleIccChanged(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 310
    const/4 v3, 0x0

    .line 312
    .local v3, "cardStateChanged":Z
    const-string v6, "CardSubscriptionManager"

    const-string v7, "handleIccChanged: ENTER"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 315
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 316
    .local v1, "cardIndex":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-boolean v6, v6, v7

    if-nez v6, :cond_0

    .line 317
    const-string v6, "CardSubscriptionManager"

    const-string v7, "handleIccChanged: radio not available - EXIT"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v1    # "cardIndex":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 320
    .restart local v1    # "cardIndex":Ljava/lang/Integer;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    check-cast v6, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    .line 321
    .local v5, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 323
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const-string v6, "CardSubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cardIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new uiccCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " old card = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz v0, :cond_5

    .line 328
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    .line 329
    .local v4, "oldCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setUiccCard(Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 331
    const-string v6, "CardSubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: oldCardState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-eqz v5, :cond_4

    .line 334
    const-string v6, "CardSubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: new uiccCard.getCardState() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    if-eq v6, v4, :cond_2

    .line 339
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v6, v7, :cond_1

    .line 340
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setIccId(Ljava/lang/String;)V

    .line 341
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 343
    :cond_1
    const/4 v3, 0x1

    .line 354
    .end local v4    # "oldCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 355
    .local v2, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    const-string v6, "CardSubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: cardStateChanged = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " card info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v6, v7, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 359
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->updateIccIds(I)Z

    .line 364
    .end local v0    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v1    # "cardIndex":Ljava/lang/Integer;
    .end local v2    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    .end local v5    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_3
    :goto_2
    const-string v6, "CardSubscriptionManager"

    const-string v7, "handleIccChanged: EXIT"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 346
    .restart local v0    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v1    # "cardIndex":Ljava/lang/Integer;
    .restart local v4    # "oldCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .restart local v5    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_4
    const-string v6, "CardSubscriptionManager"

    const-string v7, "handleIccChanged: new uiccCard is NULL"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v3, 0x1

    goto :goto_1

    .line 349
    .end local v4    # "oldCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_5
    if-nez v0, :cond_2

    .line 350
    const/4 v3, 0x1

    .line 351
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-direct {v8, p0, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/CardSubscriptionManager;Lcom/android/internal/telephony/uicc/UiccCard;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 360
    .restart local v2    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    :cond_6
    if-eqz v3, :cond_3

    .line 361
    const-string v6, "ICC STATUS CHANGED"

    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isIccIdAvailable(I)Z
    .locals 3
    .param p1, "cardIndex"    # I

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 372
    .local v0, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    const/4 v1, 0x1

    .line 376
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAllCardsInfoAvailable()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 634
    return-void
.end method

.method private notifyCardInfoAvailable(I)V
    .locals 1
    .param p1, "cardIndex"    # I

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 643
    return-void
.end method

.method private notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;)V
    .locals 3
    .param p1, "cardIndex"    # I
    .param p2, "reason"    # Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    .prologue
    const/4 v2, 0x0

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 639
    return-void
.end method

.method private declared-synchronized onUpdateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 16
    .param p1, "cardIndex"    # Ljava/lang/Integer;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus: cardIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " reason = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v5, 0x0

    .line 490
    .local v5, "cardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 491
    .local v2, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    const/4 v10, 0x0

    .line 492
    .local v10, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v4, 0x0

    .line 493
    .local v4, "cardRemoved":Z
    const/4 v3, 0x0

    .line 495
    .local v3, "cardInserted":Z
    if-eqz v2, :cond_0

    .line 496
    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v10

    .line 499
    :cond_0
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-boolean v12, v12, v13

    if-nez v12, :cond_7

    .line 500
    :cond_1
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): mRadioOn["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget-boolean v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): NO Card!!!!! at index : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    if-eqz v12, :cond_2

    .line 504
    const/4 v4, 0x1

    .line 506
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    aput-object v14, v12, v13

    .line 587
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 588
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyCardInfoAvailable(I)V

    .line 590
    :cond_4
    if-eqz v4, :cond_5

    .line 591
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v13, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;)V

    .line 596
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CardSubscriptionManager;->isValidCards()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_6

    .line 597
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyAllCardsInfoAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_6
    monitor-exit p0

    return-void

    .line 508
    :cond_7
    :try_start_1
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    .line 510
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): cardIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " cardInfo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v7, 0x0

    .line 514
    .local v7, "numApps":I
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v12, :cond_8

    .line 515
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v7

    .line 517
    :cond_8
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): Number of apps : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v12, :cond_e

    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    if-lez v7, :cond_e

    .line 522
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): mCardSubData["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/android/internal/telephony/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    if-eq v12, v13, :cond_3

    .line 531
    :cond_9
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): New card, update card info at index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    new-instance v14, Lcom/android/internal/telephony/SubscriptionData;

    invoke-direct {v14, v7}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v14, v12, v13

    .line 536
    const/4 v1, 0x0

    .local v1, "appIndex":I
    :goto_1
    if-ge v1, v7, :cond_d

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v12, v1

    .line 538
    .local v6, "cardSub":Lcom/android/internal/telephony/Subscription;
    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v11

    .line 541
    .local v11, "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v11, :cond_b

    .line 542
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 546
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    .line 547
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAppLabel()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    .line 548
    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    .line 550
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v9

    .line 551
    .local v9, "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/CardSubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v8

    .line 553
    .local v8, "subAppType":Ljava/lang/String;
    const-string v12, "UNKNOWN"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 554
    iput-object v8, v6, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 563
    :goto_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v12, v13, :cond_a

    .line 564
    const-string v12, "CardSubscriptionManager"

    const-string v13, "**********************************************************************************"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AppState of the UiccCardApplication @ cardIndex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " appIndex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is APPSTATE_READY!!!!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v12, "CardSubscriptionManager"

    const-string v13, "Android expectes APPSTATE_DETECTED before selecting the subscriptions!!!!!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v12, "CardSubscriptionManager"

    const-string v13, "WARNING!!! Please configure the NV items properly to select the subscriptions from UI"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v12, "CardSubscriptionManager"

    const-string v13, "*************************************************************************************"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->fillAppIndex(Lcom/android/internal/telephony/Subscription;I)V

    .line 536
    .end local v8    # "subAppType":Ljava/lang/String;
    .end local v9    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 556
    .restart local v8    # "subAppType":Ljava/lang/String;
    .restart local v9    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_c
    const/4 v12, 0x0

    iput-object v12, v6, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 557
    const-string v12, "CardSubscriptionManager"

    const-string v13, "onUpdateUiccStatus(): UNKNOWN APP"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 487
    .end local v1    # "appIndex":I
    .end local v2    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    .end local v3    # "cardInserted":Z
    .end local v4    # "cardRemoved":Z
    .end local v5    # "cardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v6    # "cardSub":Lcom/android/internal/telephony/Subscription;
    .end local v7    # "numApps":I
    .end local v8    # "subAppType":Ljava/lang/String;
    .end local v9    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v10    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v11    # "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 579
    .restart local v1    # "appIndex":I
    .restart local v2    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    .restart local v3    # "cardInserted":Z
    .restart local v4    # "cardRemoved":Z
    .restart local v5    # "cardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .restart local v7    # "numApps":I
    .restart local v10    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 582
    .end local v1    # "appIndex":I
    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    aput-object v14, v12, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private processRadioOn(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 295
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 297
    .local v0, "cardIndex":Ljava/lang/Integer;
    const-string v1, "CardSubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRadioOn on cardIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v1, "CardSubscriptionManager"

    const-string v2, "Invalid Index!!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processRadioUnavailable(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 279
    .local v0, "cardIndex":Ljava/lang/Integer;
    const-string v1, "CardSubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRadioUnavailable on cardIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean v4, v1, v2

    .line 283
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->resetCardInfo(I)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;)V

    .line 288
    iput-boolean v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v1, "CardSubscriptionManager"

    const-string v2, "Invalid Index!!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processSimRefresh(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 260
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 261
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 263
    .local v1, "state":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 264
    .local v0, "slot":Ljava/lang/Integer;
    const-string v2, "CardSubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSimRefresh: slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " refreshResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    if-ge v2, v3, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CardSubscriptionManager;->resetCardInfo(I)V

    .line 269
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;)V

    .line 274
    .end local v0    # "slot":Ljava/lang/Integer;
    .end local v1    # "state":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v2, "CardSubscriptionManager"

    const-string v3, "processSimRefresh received without input"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetCardInfo(I)V
    .locals 4
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 381
    const-string v0, "CardSubscriptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCardInfo(): cardIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aput-object v3, v0, p1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/CardSubscriptionManager;Lcom/android/internal/telephony/uicc/UiccCard;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_1
    return-void
.end method

.method private updateIccIds(I)Z
    .locals 10
    .param p1, "cardIndex"    # I

    .prologue
    .line 395
    const/4 v3, 0x0

    .line 396
    .local v3, "readStarted":Z
    iget-object v7, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 398
    .local v1, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 400
    .local v6, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const-string v7, "CardSubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateIccIds: cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cardInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v7, v8, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->isReadIccIdInProgress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "strCardIndex":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 410
    .local v4, "response":Landroid/os/Message;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 411
    .local v0, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    .line 413
    .local v2, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v2, :cond_0

    .line 414
    const-string v7, "CardSubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateIccIds: get ICCID for cardInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v7, 0x2fe2

    invoke-virtual {v2, v7, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 416
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 417
    const/4 v3, 0x1

    .line 422
    .end local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v4    # "response":Landroid/os/Message;
    .end local v5    # "strCardIndex":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .param p1, "cardIndex"    # Ljava/lang/Integer;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 474
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    .line 475
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 479
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 480
    return-void
.end method


# virtual methods
.method public getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;
    .locals 1
    .param p1, "cardIndex"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 224
    :pswitch_0
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->processRadioUnavailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 229
    :pswitch_1
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_RADIO_ON"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->processRadioOn(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 234
    :pswitch_2
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_ICC_CHANGED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->handleIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 239
    :pswitch_3
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_READ_ICCID_DONE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->handleGetIccIdDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 244
    :pswitch_4
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_UPDATE_UICC_STATUS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->onUpdateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_5
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_SIM_REFRESH"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->processSimRefresh(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isCardAbsentOrError(I)Z
    .locals 3
    .param p1, "cardIndex"    # I

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 695
    .local v0, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidCards()Z
    .locals 4

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 684
    .local v0, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 687
    :cond_1
    const/4 v2, 0x0

    .line 690
    .end local v0    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 646
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 647
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 650
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 652
    monitor-exit v2

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "cardIndex"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 663
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 664
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 666
    monitor-exit v2

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "cardIndex"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 656
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 657
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 659
    monitor-exit v2

    .line 660
    return-void

    .line 659
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPhones([Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "p"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method
