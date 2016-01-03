.class public Lcom/android/internal/telephony/SubscriptionManager;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;,
        Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;,
        Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    }
.end annotation


# static fields
.field private static final EVENT_ALL_CARD_INFO_AVAILABLE:I = 0x2

.field private static final EVENT_CARD_INFO_AVAILABLE:I = 0x0

.field private static final EVENT_CARD_INFO_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_PROCESS_AVAILABLE_CARDS:I = 0xb

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_RADIO_ON:I = 0x9

.field private static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0x5

.field private static final EVENT_SET_DOMAIN_DONE:I = 0xc9

.field private static final EVENT_SET_DUALCARD_GW_SUBSCRIPTION_DONE:I = 0x65

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x3

.field private static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field private static final OEM_HOOK_SET_SERVICE_DOMAIN_CS_ONLY:[B

.field private static final OEM_HOOK_SET_SERVICE_DOMAIN_PS_CS:[B

.field public static final SUB_ACTIVATE_FAILED:Ljava/lang/String; = "ACTIVATE FAILED"

.field public static final SUB_ACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "ACTIVATE NOT SUPPORTED"

.field public static final SUB_ACTIVATE_SUCCESS:Ljava/lang/String; = "ACTIVATE SUCCESS"

.field public static final SUB_DEACTIVATE_FAILED:Ljava/lang/String; = "DEACTIVATE FAILED"

.field public static final SUB_DEACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "DEACTIVATE NOT SUPPORTED"

.field public static final SUB_DEACTIVATE_SUCCESS:Ljava/lang/String; = "DEACTIVATE SUCCESS"

.field public static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field private static final SUB_STATUS_ACTIVATED:I = 0x1

.field private static final SUB_STATUS_DEACTIVATED:I

.field private static mContext:Landroid/content/Context;

.field private static sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;


# instance fields
.field private isSimReset:[Z

.field private mActivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mAllCardsStatusAvailable:Z

.field private mCardCount:I

.field private mCardInfoAvailable:[Z

.field private mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentDds:I

.field private mCurrentSubscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActive:Z

.field private mDeactivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableDdsInProgress:Z

.field private mFlagAllCardsInfo:Z

.field private mFlagDualcardGwProcessDone:Z

.field private mIsNewCard:[Z

.field private mNumPhones:I

.field mOldICCID:Ljava/lang/String;

.field private mProxyPhone:[Lcom/android/internal/telephony/Phone;

.field private mQueuedDds:I

.field private mRadioOn:[Z

.field private mSetDdsCompleteMsg:Landroid/os/Message;

.field private mSetDdsRequired:Z

.field private mSetSubscriptionInProgress:Z

.field private mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

.field private mSubActivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubResult:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 147
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionManager;->OEM_HOOK_SET_SERVICE_DOMAIN_CS_ONLY:[B

    .line 148
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/SubscriptionManager;->OEM_HOOK_SET_SERVICE_DOMAIN_PS_CS:[B

    return-void

    .line 147
    :array_0
    .array-data 1
        0x2t
        0x4t
        0x0t
        0x5t
        0x2t
    .end array-data

    .line 148
    nop

    :array_1
    .array-data 1
        0x2t
        0x4t
        0x0t
        0x5t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 236
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 113
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    .line 160
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    .line 161
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    .line 162
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    .line 163
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    .line 164
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    .line 171
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 173
    iput-boolean v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    .line 179
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 181
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDataActive:Z

    .line 185
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    .line 187
    iput v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardCount:I

    .line 189
    iput-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mOldICCID:Ljava/lang/String;

    .line 191
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagAllCardsInfo:Z

    .line 194
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagDualcardGwProcessDone:Z

    .line 237
    const-string v2, "SubscriptionManager"

    const-string v3, "Constructor - Enter"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sput-object p1, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 241
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 243
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isSubscriptionManagerPatialEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    .line 245
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    .line 246
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, p0, v5, v3}, Lcom/android/internal/telephony/CardSubscriptionManager;->registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, p0, v4, v3}, Lcom/android/internal/telephony/CardSubscriptionManager;->registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v0

    .line 254
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 261
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0xa

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 265
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aput-boolean v5, v2, v0

    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    aput-boolean v5, v2, v0

    .line 267
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    aput-boolean v5, v2, v0

    .line 268
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    aput-boolean v5, v2, v0

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    .line 272
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    .line 273
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    .line 274
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_2

    .line 275
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v1, v2, v0

    .line 276
    .local v1, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    new-instance v3, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/android/internal/telephony/SubscriptionManager;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 284
    .end local v0    # "i":I
    .end local v1    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getDataSubscription()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    .line 285
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructor current active dds is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v2, "SubscriptionManager"

    const-string v3, "Constructor - Exit"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method private getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;
    .locals 1
    .param p1, "subId"    # Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/Subscription;

    return-object v0
.end method

.method private getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Z
    .locals 1
    .param p1, "subId"    # Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    return v0
.end method

.method private getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    .locals 1
    .param p1, "subId"    # Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/Subscription;

    iget-object v0, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    return-object v0
.end method

.method public static getDataSubscription()I
    .locals 2

    .prologue
    .line 1529
    const-string v0, "persist.sys.dataprefer.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 215
    const-class v1, Lcom/android/internal/telephony/SubscriptionManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "SubscriptionManager"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/internal/telephony/SubscriptionManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    .line 219
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isAllCardsInfoAvailable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 910
    const/4 v4, 0x1

    .line 911
    .local v4, "result":Z
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    .local v0, "arr$":[Z
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, v0, v2

    .line 912
    .local v1, "available":Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move v4, v5

    .line 911
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 912
    goto :goto_1

    .line 914
    .end local v1    # "available":Z
    :cond_1
    if-nez v4, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    if-eqz v7, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    return v6
.end method

.method private isAllRadioOn()Z
    .locals 5

    .prologue
    .line 902
    const/4 v4, 0x1

    .line 903
    .local v4, "result":Z
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    .local v0, "arr$":[Z
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-boolean v3, v0, v1

    .line 904
    .local v3, "radioOn":Z
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 903
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 906
    .end local v3    # "radioOn":Z
    :cond_1
    return v4
.end method

.method private isAnyPendingActivateRequest(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Subscription;

    .line 1153
    .local v0, "newSub":Lcom/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1155
    const/4 v1, 0x1

    .line 1157
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPresentInActivatePendingList(Lcom/android/internal/telephony/Subscription;)Z
    .locals 4
    .param p1, "userSub"    # Lcom/android/internal/telephony/Subscription;

    .prologue
    .line 891
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v3, :cond_1

    .line 892
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v1

    .line 893
    .local v2, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Subscription;

    .line 894
    .local v0, "actPendingSub":Lcom/android/internal/telephony/Subscription;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Subscription;->isSame(Lcom/android/internal/telephony/Subscription;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 895
    const/4 v3, 0x1

    .line 898
    .end local v0    # "actPendingSub":Lcom/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :goto_1
    return v3

    .line 891
    .restart local v0    # "actPendingSub":Lcom/android/internal/telephony/Subscription;
    .restart local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    .end local v0    # "actPendingSub":Lcom/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private notifySubscriptionActivated(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1242
    return-void
.end method

.method private notifySubscriptionDeactivated(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1234
    return-void
.end method

.method private printPendingActivateRequests()V
    .locals 6

    .prologue
    .line 971
    const-string v3, "SubscriptionManager"

    const-string v4, "ActivatePending Queue : "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 973
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v0

    .line 974
    .local v2, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 975
    .local v1, "newSub":Lcom/android/internal/telephony/Subscription;
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    .end local v1    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private printPendingDeactivateRequests()V
    .locals 6

    .prologue
    .line 983
    const-string v3, "SubscriptionManager"

    const-string v4, "DeactivatePending Queue : "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 985
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v0

    .line 986
    .local v2, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 987
    .local v1, "newSub":Lcom/android/internal/telephony/Subscription;
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    .end local v1    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private processActivateRequests()V
    .locals 3

    .prologue
    .line 1049
    const-string v0, "SubscriptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processActivateRequests: mSetSubscriptionInProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 1053
    :cond_0
    return-void
.end method

.method private processAllCardsInfoAvailable()V
    .locals 15

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isAllRadioOn()Z

    move-result v11

    if-nez v11, :cond_0

    .line 647
    const-string v11, "SubscriptionManager"

    const-string v12, "processAllCardsInfoAvailable: Radio Not Available "

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_0
    return-void

    .line 651
    :cond_0
    const/4 v0, 0x0

    .line 652
    .local v0, "availableCards":I
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 654
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v11, :cond_3

    .line 655
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v11, v11, v1

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->isCardAbsentOrError(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 656
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 654
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 661
    :cond_3
    iget v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ne v0, v11, :cond_4

    iget-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v11, :cond_4

    .line 662
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    .line 669
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v5

    .line 670
    .local v5, "mCardSubscriptionManager":Lcom/android/internal/telephony/CardSubscriptionManager;
    iget v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v4, v11, [Lcom/android/internal/telephony/SubscriptionData;

    .line 671
    .local v4, "mCardSubscrInfo":[Lcom/android/internal/telephony/SubscriptionData;
    const/4 v1, 0x0

    :goto_2
    iget v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v11, :cond_a

    .line 672
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v11

    aput-object v11, v4, v1

    .line 673
    const-string v11, "CTC"

    const-string v12, "CMCC"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v11, v11, v1

    if-eqz v11, :cond_8

    .line 675
    const/4 v6, -0x1

    .line 676
    .local v6, "mDefaultAppIndex":I
    const-string v11, "4"

    const-string v12, "ril.ICC_TYPE"

    invoke-static {v12, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 677
    const/4 v3, 0x0

    .local v3, "mAppIndex":I
    :goto_3
    aget-object v11, v4, v1

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_6

    .line 678
    const-string v11, "RUIM"

    aget-object v12, v4, v1

    iget-object v12, v12, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "CSIM"

    aget-object v12, v4, v1

    iget-object v12, v12, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 680
    :cond_5
    move v6, v3

    .line 685
    .end local v3    # "mAppIndex":I
    :cond_6
    const/4 v11, -0x1

    if-ne v6, v11, :cond_7

    .line 686
    const/4 v6, 0x0

    .line 688
    :cond_7
    const-string v11, "SubscriptionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processAllCardsInfoAvailable["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: set mDefaultAppIndex to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    aget-object v11, v4, v1

    iget-object v11, v11, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v11, v11, v6

    iput v1, v11, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 690
    aget-object v11, v4, v1

    iget-object v11, v11, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v11, v11, v6

    sget-object v12, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    const-string v13, "ACTIVATE SUCCESS"

    invoke-direct {p0, v1, v11, v12, v13}, Lcom/android/internal/telephony/SubscriptionManager;->updateCurrentSubscription(ILcom/android/internal/telephony/Subscription;Lcom/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;)V

    .line 671
    .end local v6    # "mDefaultAppIndex":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 677
    .restart local v3    # "mAppIndex":I
    .restart local v6    # "mDefaultAppIndex":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 698
    .end local v3    # "mAppIndex":I
    .end local v6    # "mDefaultAppIndex":I
    :cond_a
    new-instance v10, Lcom/android/internal/telephony/SubscriptionData;

    iget v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    .line 701
    .local v10, "mUserSelSub":Lcom/android/internal/telephony/SubscriptionData;
    const-string v11, "ril.MSIMM"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12

    .line 702
    const-string v11, "SubscriptionManager"

    const-string v12, "processAllCardsInfoAvailable: only SIM2 is presented"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v11, "persist.radio.calldefault.simid"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v2, "intent":Landroid/content/Intent;
    const-string v11, "simSlot"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    sget-object v11, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 708
    const/4 v1, 0x0

    :goto_4
    iget v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v11, :cond_c

    .line 709
    const-string v11, "ril.ICC_TYPE"

    invoke-static {v11, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 710
    const-string v11, "SubscriptionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processAllCardsInfoAvailable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ril.ICC_TYPE"

    invoke-static {v13, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ril.ICC_TYPE"

    invoke-static {v13, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v11, "ril.ICC_TYPE"

    invoke-static {v11, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 715
    :cond_c
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_d

    .line 717
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget-object v12, v4, v12

    iget-object v12, v12, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 718
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x1

    iput v12, v11, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 719
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x1

    iput v12, v11, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 720
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v12, v11, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 721
    sget-object v11, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone2_on"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 724
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v12, "SIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 725
    const-string v11, "ril.ICC_TYPE"

    const-string v12, "1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_d
    :goto_5
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z

    goto/16 :goto_0

    .line 726
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_e
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v12, "USIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 727
    const-string v11, "ril.ICC_TYPE"

    const-string v12, "2"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 728
    :cond_f
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v12, "RUIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 729
    const-string v11, "ril.ICC_TYPE"

    const-string v12, "3"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 730
    :cond_10
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v12, "CSIM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 731
    const-string v11, "ril.ICC_TYPE"

    const-string v12, "4"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 732
    :cond_11
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v12, "UNKNOWN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 733
    const-string v11, "ril.ICC_TYPE"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 737
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_12
    const/4 v1, 0x0

    :goto_6
    iget v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v11, :cond_d

    .line 738
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v11, v11, v1

    if-eqz v11, :cond_1a

    .line 739
    const-string v11, "SubscriptionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processAllCardsInfoAvailable: SIM"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is presented"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v11, "CTC"

    const-string v12, "CMCC"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 743
    const/4 v6, -0x1

    .line 744
    .restart local v6    # "mDefaultAppIndex":I
    const-string v11, "4"

    const-string v12, "ril.ICC_TYPE"

    invoke-static {v12, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 745
    const/4 v3, 0x0

    .restart local v3    # "mAppIndex":I
    :goto_7
    aget-object v11, v4, v1

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_14

    .line 746
    const-string v11, "RUIM"

    aget-object v12, v4, v1

    iget-object v12, v12, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string v11, "CSIM"

    aget-object v12, v4, v1

    iget-object v12, v12, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v12, v12, v3

    iget-object v12, v12, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 748
    :cond_13
    move v6, v3

    .line 753
    .end local v3    # "mAppIndex":I
    :cond_14
    const/4 v11, -0x1

    if-ne v6, v11, :cond_15

    .line 754
    const/4 v6, 0x0

    .line 756
    :cond_15
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v11, v11, v1

    aget-object v12, v4, v1

    iget-object v12, v12, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 760
    .end local v6    # "mDefaultAppIndex":I
    :goto_8
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v11, v11, v1

    iput v1, v11, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 761
    if-nez v1, :cond_1d

    .line 762
    sget-object v11, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone1_on"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 766
    .local v9, "mStatus":I
    :goto_9
    const-string v11, "CTC"

    const-string v12, "CMCC"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 767
    const-string v11, "gsm.sim.state"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 768
    .local v7, "mStateSlot":Ljava/lang/String;
    const-string v11, "gsm.sim.state"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 769
    .local v8, "mStateSlot2":Ljava/lang/String;
    const-string v11, "PIN_REQUIRED"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "PUK_REQUIRED"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "PIN_REQUIRED"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "PUK_REQUIRED"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 771
    :cond_16
    if-nez v1, :cond_1e

    .line 772
    sget-object v11, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone1_on"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 776
    :goto_a
    const/4 v9, 0x1

    .line 778
    :cond_17
    const/4 v11, 0x1

    if-ne v9, v11, :cond_18

    .line 779
    const/4 v9, 0x2

    .line 781
    :cond_18
    const-string v11, "SubscriptionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processAllCardsInfoAvailable["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: mStatus("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "), mStateSlot("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "), mStateSlot2("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v7    # "mStateSlot":Ljava/lang/String;
    .end local v8    # "mStateSlot2":Ljava/lang/String;
    :cond_19
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v11, v11, v1

    invoke-static {}, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v12

    aget-object v12, v12, v9

    iput-object v12, v11, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 737
    .end local v9    # "mStatus":I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 745
    .restart local v3    # "mAppIndex":I
    .restart local v6    # "mDefaultAppIndex":I
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 758
    .end local v3    # "mAppIndex":I
    .end local v6    # "mDefaultAppIndex":I
    :cond_1c
    iget-object v11, v10, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v11, v11, v1

    aget-object v12, v4, v1

    iget-object v12, v12, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    goto/16 :goto_8

    .line 764
    :cond_1d
    sget-object v11, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone2_on"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .restart local v9    # "mStatus":I
    goto/16 :goto_9

    .line 774
    .restart local v7    # "mStateSlot":Ljava/lang/String;
    .restart local v8    # "mStateSlot2":Ljava/lang/String;
    :cond_1e
    sget-object v11, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone2_on"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a
.end method

.method private processAvailableCards()V
    .locals 2

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isAllRadioOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    const-string v0, "SubscriptionManager"

    const-string v1, "processAvailableCards: Radio Not Available "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v0, :cond_1

    .line 807
    const-string v0, "SubscriptionManager"

    const-string v1, "processAvailableCards: set subscription in progress!!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    goto :goto_0
.end method

.method private processCardInfoAvailable(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 820
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 822
    .local v0, "cardIndex":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-boolean v7, v7, v8

    if-nez v7, :cond_1

    .line 823
    const-string v7, "SubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCardInfoAvailable: Radio Not Available on cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput-boolean v11, v7, v8

    .line 829
    const-string v7, "SubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCardInfoAvailable: CARD:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is available"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isAllCardsInfoAvailable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 832
    const-string v7, "SubscriptionManager"

    const-string v8, "All cards info not available!! Waiting for all info before processing"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 836
    :cond_2
    const-string v7, "SubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCardInfoAvailable: mSetSubscriptionInProgress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v7, :cond_3

    .line 839
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    .line 843
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    .line 844
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput-boolean v10, v7, v8

    .line 848
    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v4

    .line 849
    .local v4, "mCardSubscriptionManager":Lcom/android/internal/telephony/CardSubscriptionManager;
    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v3, v7, [Lcom/android/internal/telephony/SubscriptionData;

    .line 850
    .local v3, "mCardSubscrInfo":[Lcom/android/internal/telephony/SubscriptionData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v7, :cond_4

    .line 851
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v7

    aput-object v7, v3, v1

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 855
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/SubscriptionData;

    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    .line 858
    .local v6, "mUserSelSub":Lcom/android/internal/telephony/SubscriptionData;
    const-string v7, "ril.MSIMM"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_6

    .line 859
    const-string v7, "SubscriptionManager"

    const-string v8, "SIM reset! only SIM2 is presented"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v7, v6, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v10

    aget-object v8, v3, v10

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 861
    iget-object v7, v6, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v10

    iput v11, v7, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 862
    iget-object v7, v6, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v10

    iput v11, v7, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 863
    iget-object v7, v6, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v10

    sget-object v8, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v8, v7, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 864
    const-string v7, "persist.radio.calldefault.simid"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "simSlot"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 867
    sget-object v7, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 886
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z

    goto/16 :goto_0

    .line 869
    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v7, :cond_5

    .line 870
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_7

    .line 871
    const-string v7, "SubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM reset! SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is presented"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v7, v6, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v1

    aget-object v8, v3, v1

    iget-object v8, v8, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 875
    iget-object v7, v6, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v1

    iput v1, v7, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 876
    if-nez v1, :cond_8

    .line 877
    sget-object v7, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 881
    .local v5, "mStatus":I
    :goto_3
    iget-object v7, v6, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v1

    invoke-static {}, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v8

    aget-object v8, v8, v5

    iput-object v8, v7, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 869
    .end local v5    # "mStatus":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 879
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .restart local v5    # "mStatus":I
    goto :goto_3
.end method

.method private processCardInfoNotAvailable(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 923
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_2

    .line 924
    :cond_0
    const-string v5, "SubscriptionManager"

    const-string v6, "processCardInfoNotAvailable - Exception"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_1
    :goto_0
    return-void

    .line 928
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 929
    .local v0, "cardIndex":Ljava/lang/Integer;
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    .line 931
    .local v2, "reason":Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;
    const-string v7, "SubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCardInfoNotAvailable on cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput-boolean v6, v7, v8

    .line 938
    const/4 v4, 0x1

    .line 939
    .local v4, "subscriptionRequired":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v7, :cond_4

    .line 940
    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v7, v7, v1

    if-nez v7, :cond_3

    move v4, v5

    .line 939
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v4, v6

    .line 940
    goto :goto_2

    .line 945
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    if-eq v2, v7, :cond_5

    sget-object v7, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    if-ne v2, v7, :cond_7

    .line 949
    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v7, :cond_7

    .line 950
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v7

    aget-object v3, v7, v1

    .line 951
    .local v3, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 952
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V

    .line 953
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 949
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 958
    .end local v3    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    if-ne v2, v7, :cond_8

    .line 959
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 962
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    if-ne v2, v6, :cond_1

    .line 963
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-boolean v5, v6, v7

    goto/16 :goto_0
.end method

.method private processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 379
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 380
    .local v0, "subId":Ljava/lang/Integer;
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSetDataSubscriptionDone() subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 388
    :cond_0
    return-void
.end method

.method private processSetDomainDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 396
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 397
    .local v1, "subId":Ljava/lang/Integer;
    const/4 v2, 0x5

    invoke-static {p0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 400
    .local v0, "msgSetDataSub":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 401
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set domain to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as PS+CS. Calling cmd interface setVoiceDomainPref"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v2, "0"

    const-string v3, "ril.MSIMM"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/internal/telephony/SubscriptionManager;->OEM_HOOK_SET_SERVICE_DOMAIN_PS_CS:[B

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/internal/telephony/SubscriptionManager;->OEM_HOOK_SET_SERVICE_DOMAIN_PS_CS:[B

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 409
    const-string v2, "SubscriptionManager"

    const-string v3, "RIL request is needed to SUB0 in case of SIM2 only"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_2
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as CS only."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v2, "0"

    const-string v3, "ril.MSIMM"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/internal/telephony/SubscriptionManager;->OEM_HOOK_SET_SERVICE_DOMAIN_PS_CS:[B

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 417
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 419
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 420
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    goto :goto_0
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 497
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;

    .line 498
    .local v5, "setSubParam":Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x0

    .line 499
    .local v0, "cause":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 500
    .local v6, "subStatus":Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    const/4 v1, 0x0

    .line 502
    .local v1, "currentSub":Lcom/android/internal/telephony/Subscription;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    iget v10, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-boolean v7, v7, v10

    if-nez v7, :cond_1

    .line 503
    const-string v7, "SubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processSetUiccSubscriptionDone: Radio Not Available on subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_3

    .line 509
    const-string v7, "ril.MSIMM"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 510
    const-string v7, "SubscriptionManager"

    const-string v10, "subscription is activated in sim2 only mode. sub id will change to 0"

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iput v9, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    .line 513
    :cond_2
    const-string v7, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifySubscriptionActivated of SUB "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionActivated(I)V

    .line 517
    :cond_3
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_d

    .line 520
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/internal/telephony/CommandException;

    if-eqz v7, :cond_4

    .line 521
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 522
    .local v2, "error":Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v2, :cond_4

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v7, :cond_4

    .line 524
    iget-object v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_8

    .line 525
    const-string v0, "ACTIVATE NOT SUPPORTED"

    .line 532
    .end local v2    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    :goto_1
    iget-object v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_9

    .line 534
    const-string v7, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscription of SUB:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Activate Failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-nez v0, :cond_5

    .line 536
    const-string v0, "ACTIVATE FAILED"

    .line 538
    :cond_5
    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 539
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 542
    .restart local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_6
    :goto_2
    const-string v7, "SubscriptionManager"

    const-string v10, "set uicc subscription done. update the current subscriptions"

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v7, v1, v6, v0}, Lcom/android/internal/telephony/SubscriptionManager;->updateCurrentSubscription(ILcom/android/internal/telephony/Subscription;Lcom/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;)V

    .line 622
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_7

    .line 624
    iget v10, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    sget-object v7, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v6, v7, :cond_12

    move v7, v8

    :goto_3
    invoke-direct {p0, v10, v7}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    .line 627
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    iget v8, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aput-object v0, v7, v8

    .line 629
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v7

    if-nez v7, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v7

    if-nez v7, :cond_0

    .line 634
    iput-boolean v9, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 636
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v7, :cond_0

    .line 637
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-direct {v8, v12, v9, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 526
    .restart local v2    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_8
    iget-object v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_4

    .line 527
    const-string v0, "DEACTIVATE NOT SUPPORTED"

    goto/16 :goto_1

    .line 543
    .end local v2    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_9
    iget-object v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_c

    .line 545
    const-string v7, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscription of SUB:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Deactivate Failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-nez v0, :cond_a

    .line 551
    iget v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionManager;->isAnyPendingActivateRequest(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 552
    const-string v0, "ACTIVATE FAILED"

    .line 557
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_a
    :goto_4
    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 563
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 565
    .restart local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 559
    :cond_b
    const-string v0, "DEACTIVATE FAILED"

    goto :goto_4

    .line 567
    :cond_c
    const-string v7, "SubscriptionManager"

    const-string v10, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 571
    :cond_d
    iget-object v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_10

    .line 573
    const-string v7, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscription of SUB:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Activated"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 575
    const-string v0, "ACTIVATE SUCCESS"

    .line 576
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 578
    .restart local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    if-nez v1, :cond_e

    .line 579
    const-string v7, "SubscriptionManager"

    const-string v8, "currentSub is null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 582
    :cond_e
    const-string v7, "ril.MSIMM"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_f

    .line 583
    iput v9, v1, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 587
    :cond_f
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.settings.subscription_activate"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v3, "intent":Landroid/content/Intent;
    sget-object v7, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    const-string v7, "CTC"

    const-string v10, "CMCC"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 591
    new-instance v4, Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.samsung.intent.action.Slot"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "OnCompleted"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v4, "intentCtc":Landroid/content/Intent;
    sget-object v7, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 594
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentCtc":Landroid/content/Intent;
    :cond_10
    iget-object v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_11

    .line 596
    const-string v7, "SubscriptionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subscription of SUB:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Deactivated"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 598
    const-string v0, "DEACTIVATE SUCCESS"

    .line 599
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 601
    .restart local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget v7, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 604
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.settings.subscription_deactivate"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v3    # "intent":Landroid/content/Intent;
    sget-object v7, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 606
    const-string v7, "CTC"

    const-string v10, "CMCC"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 607
    new-instance v4, Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.samsung.intent.action.Slot"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v5, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "OffCompleted"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v4    # "intentCtc":Landroid/content/Intent;
    sget-object v7, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 611
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentCtc":Landroid/content/Intent;
    :cond_11
    const-string v7, "SubscriptionManager"

    const-string v10, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    move v7, v9

    .line 624
    goto/16 :goto_3
.end method

.method private processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 431
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 432
    .local v3, "subId":Ljava/lang/Integer;
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v0, v4, v6

    .line 433
    .local v0, "actStatus":I
    const-string v4, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSubscriptionStatusChanged sub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " actStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-ne v0, v5, :cond_4

    .line 438
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v0, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    .line 440
    iget-boolean v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    if-eqz v4, :cond_1

    .line 441
    const/4 v1, 0x0

    .line 443
    .local v1, "isMatchedDataSub":Z
    const-string v4, "ril.MSIMM"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 444
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    if-ne v4, v5, :cond_0

    .line 445
    const/4 v1, 0x1

    .line 446
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    .line 447
    const-string v4, "SubscriptionManager"

    const-string v7, "change currentDds from 1 to 0 because of SIM2 only"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 454
    const-string v4, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDataSubscription on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    iput v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    .line 458
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 459
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 462
    .local v2, "msgSetDdsDone":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    aget-object v4, v4, v5

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 463
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    .line 466
    .end local v1    # "isMatchedDataSub":Z
    .end local v2    # "msgSetDdsDone":Landroid/os/Message;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionActivated(I)V

    .line 490
    :goto_2
    return-void

    :cond_2
    move v4, v6

    .line 438
    goto :goto_0

    .line 449
    .restart local v1    # "isMatchedDataSub":Z
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    if-ne v4, v7, :cond_0

    .line 450
    const/4 v1, 0x1

    goto :goto_1

    .line 470
    .end local v1    # "isMatchedDataSub":Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-boolean v4, v4, v7

    if-nez v4, :cond_5

    .line 471
    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processSubscriptionStatusChanged: Radio Not Available on subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 475
    :cond_5
    if-nez v0, :cond_8

    .line 476
    const-string v4, "1"

    const-string v7, "ril.setSub"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 477
    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore SUB_STATUS_DEACTIVATED cause sub["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not deactivated by SubscriptionManager"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 482
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v5, :cond_7

    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    .line 484
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V

    .line 485
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->triggerUpdateFromAvaialbleCards()V

    goto/16 :goto_2

    :cond_7
    move v5, v6

    .line 482
    goto :goto_3

    .line 488
    :cond_8
    const-string v4, "SubscriptionManager"

    const-string v5, "handleSubscriptionStatusChanged INVALID"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V
    .locals 2
    .param p1, "subId"    # Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .prologue
    .line 1200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Subscription;->clear()V

    .line 1201
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1205
    return-void
.end method

.method private setDualCardGwSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z
    .locals 14
    .param p1, "subData"    # Lcom/android/internal/telephony/SubscriptionData;

    .prologue
    const/4 v13, -0x1

    const/4 v0, 0x0

    .line 1338
    iget-boolean v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagDualcardGwProcessDone:Z

    if-eqz v3, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return v0

    .line 1343
    :cond_1
    const/4 v1, -0x1

    .line 1344
    .local v1, "slotId":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v6, v3, :cond_4

    .line 1345
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v11, v3, v6

    .line 1346
    .local v11, "subId":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget-object v4, v4, v12

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Subscription;->isSame(Lcom/android/internal/telephony/Subscription;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1347
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_2

    .line 1348
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDualCardGwSubscription: Need to deactivate current SUB :"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    move v1, v6

    .line 1352
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_3

    .line 1353
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDualCardGwSubscription: Need to activate new SUB : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    move v1, v6

    .line 1356
    :cond_3
    if-eq v1, v13, :cond_7

    .line 1357
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDualCardGwSubscription: slotId : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    .end local v11    # "subId":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_4
    if-eq v1, v13, :cond_0

    .line 1365
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1366
    .local v9, "mCardType":I
    const/4 v3, 0x4

    if-ne v9, v3, :cond_0

    .line 1372
    const/4 v2, -0x1

    .line 1374
    .local v2, "mGwTypeAppIndex":I
    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v8

    .line 1375
    .local v8, "mCardSubscriptionManager":Lcom/android/internal/telephony/CardSubscriptionManager;
    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v7

    .line 1377
    .local v7, "mCardSubscrInfo":Lcom/android/internal/telephony/SubscriptionData;
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_6

    .line 1378
    const-string v3, "SIM"

    iget-object v4, v7, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "USIM"

    iget-object v4, v7, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1380
    :cond_5
    move v2, v6

    .line 1384
    :cond_6
    if-ne v2, v13, :cond_9

    .line 1385
    const-string v3, "SubscriptionManager"

    const-string v4, "setDualCardSubscription: cannot find GwTypeAppIndex, skip"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1344
    .end local v2    # "mGwTypeAppIndex":I
    .end local v7    # "mCardSubscrInfo":Lcom/android/internal/telephony/SubscriptionData;
    .end local v8    # "mCardSubscriptionManager":Lcom/android/internal/telephony/CardSubscriptionManager;
    .end local v9    # "mCardType":I
    .restart local v11    # "subId":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1377
    .end local v11    # "subId":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .restart local v2    # "mGwTypeAppIndex":I
    .restart local v7    # "mCardSubscrInfo":Lcom/android/internal/telephony/SubscriptionData;
    .restart local v8    # "mCardSubscriptionManager":Lcom/android/internal/telephony/CardSubscriptionManager;
    .restart local v9    # "mCardType":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1389
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v11, v3, v0

    .line 1390
    .restart local v11    # "subId":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    new-instance v10, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v10}, Lcom/android/internal/telephony/Subscription;-><init>()V

    .line 1391
    .local v10, "newSub":Lcom/android/internal/telephony/Subscription;
    iget-object v0, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1393
    const/16 v0, 0x65

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1397
    .local v5, "msgSetDualCardSubDone":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v1

    iget-object v3, v10, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move v3, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 1403
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private startNextPendingActivateRequests()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 1098
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->printPendingActivateRequests()V

    .line 1099
    const-string v0, "SubscriptionManager"

    const-string v2, "startNextPendingActivateRequests"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v7, v0, :cond_8

    .line 1102
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    aget-object v10, v0, v7

    .line 1103
    .local v10, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Subscription;

    .line 1104
    .local v8, "newSub":Lcom/android/internal/telephony/Subscription;
    if-eqz v8, :cond_0

    iget-object v0, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v0, v2, :cond_0

    .line 1105
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->validateActivationRequest(Lcom/android/internal/telephony/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1112
    :cond_1
    iget v11, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 1113
    .local v11, "subId":I
    const-string v0, "CTC"

    const-string v2, "CMCC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1114
    const-string v0, "SubscriptionManager"

    const-string v2, "skip updatePhoneObject"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_2
    :goto_1
    const-string v0, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNextPendingActivateRequests: Activating SUB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const-string v0, "ril.setSub"

    iget v2, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    new-instance v9, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;

    iget v0, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-direct {v9, p0, v0, v2}, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/SubscriptionManager;ILcom/android/internal/telephony/Subscription$SubscriptionStatus;)V

    .line 1129
    .local v9, "setSubParam":Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x3

    invoke-static {p0, v0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1133
    .local v5, "msgSetUiccSubDone":Landroid/os/Message;
    iget v6, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 1134
    .local v6, "ciIndex":I
    const-string v0, "ril.MSIMM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_3

    .line 1135
    const/4 v6, 0x0

    .line 1138
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v6

    iget v1, v8, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v4, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    move v0, v12

    .line 1148
    .end local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    .end local v6    # "ciIndex":I
    .end local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v9    # "setSubParam":Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    .end local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .end local v11    # "subId":I
    :goto_2
    return v0

    .line 1115
    .restart local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .restart local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .restart local v11    # "subId":I
    :cond_4
    const-string v0, "SIM"

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "USIM"

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "GSM"

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v11

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1117
    const-string v0, "SubscriptionManager"

    const-string v2, "gets New GSM phone"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v11

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(I)V

    goto/16 :goto_1

    .line 1119
    :cond_6
    const-string v0, "RUIM"

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "CSIM"

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_7
    const-string v0, "CDMA"

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v11

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1121
    const-string v0, "SubscriptionManager"

    const-string v2, "gets New CDMA phone"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v11

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(I)V

    goto/16 :goto_1

    .end local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .end local v11    # "subId":I
    :cond_8
    move v0, v1

    .line 1148
    goto :goto_2
.end method

.method private startNextPendingDeactivateRequests()Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 998
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->printPendingDeactivateRequests()V

    .line 1000
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v7, v1, :cond_2

    .line 1001
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v10, v1, v7

    .line 1002
    .local v10, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Subscription;

    .line 1003
    .local v8, "newSub":Lcom/android/internal/telephony/Subscription;
    if-eqz v8, :cond_0

    iget-object v1, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1004
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->validateDeactivationRequest(Lcom/android/internal/telephony/Subscription;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1006
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNextPendingDeactivateRequests: Need to deactivating SUB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    iget v2, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDataActive:Z

    if-eqz v1, :cond_3

    .line 1016
    const-string v0, "SubscriptionManager"

    const-string v1, "Deactivate all the data calls if there is any"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    :goto_1
    move v0, v11

    .line 1042
    .end local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_2
    return v0

    .line 1019
    .restart local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .restart local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_3
    const-string v1, "SubscriptionManager"

    const-string v2, "startNextPendingDeactivateRequests: Deactivating now"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v1, "ril.setSub"

    iget v2, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    new-instance v9, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;

    iget v1, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-direct {v9, p0, v1, v2}, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/SubscriptionManager;ILcom/android/internal/telephony/Subscription$SubscriptionStatus;)V

    .line 1023
    .local v9, "setSubParam":Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    const/4 v1, 0x3

    invoke-static {p0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1027
    .local v5, "msgSetUiccSubDone":Landroid/os/Message;
    iget v6, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 1028
    .local v6, "ciIndex":I
    const-string v1, "ril.MSIMM"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 1029
    const/4 v6, 0x0

    .line 1032
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v6

    iget v1, v8, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v4, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    goto :goto_1
.end method

.method private triggerUpdateFromAvaialbleCards()V
    .locals 1

    .prologue
    .line 795
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 796
    return-void
.end method

.method private updateCurrentSubscription(ILcom/android/internal/telephony/Subscription;Lcom/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "subscription"    # Lcom/android/internal/telephony/Subscription;
    .param p3, "subStatus"    # Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    .param p4, "cause"    # Ljava/lang/String;

    .prologue
    .line 1162
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1164
    .local v0, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentSubscription: subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne p3, v1, :cond_1

    .line 1168
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1174
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iput-object p3, v1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1175
    if-nez p4, :cond_0

    .line 1176
    const-string p4, "NO CHANGE IN SUBSCRIPTION"

    .line 1178
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object p4, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1179
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1180
    return-void

    .line 1170
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Subscription;->clear()V

    .line 1172
    sget-object p3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    goto :goto_0
.end method

.method private updateSubscriptionReadiness(IZ)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "ready"    # Z

    .prologue
    .line 1183
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1184
    .local v0, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSubscriptionReadiness("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1193
    :goto_0
    return-void

    .line 1192
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    goto :goto_0
.end method

.method private validateActivationRequest(Lcom/android/internal/telephony/Subscription;)Z
    .locals 5
    .param p1, "sub"    # Lcom/android/internal/telephony/Subscription;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1078
    iget v0, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 1079
    .local v0, "slotId":I
    const-string v3, "ril.MSIMM"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1080
    const/4 v0, 0x0

    .line 1083
    :cond_0
    iget-object v3, p1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    if-ltz v3, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v3, v4, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-ltz v3, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1090
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private validateDeactivationRequest(Lcom/android/internal/telephony/Subscription;)Z
    .locals 5
    .param p1, "sub"    # Lcom/android/internal/telephony/Subscription;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1059
    iget v0, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 1060
    .local v0, "slotId":I
    const-string v3, "ril.MSIMM"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1061
    const/4 v0, 0x0

    .line 1064
    :cond_0
    iget-object v3, p1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    if-ltz v3, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v3, v4, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-ltz v3, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1071
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getActiveSubscriptionsCount()I
    .locals 6

    .prologue
    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, "activeSubCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v3, :cond_1

    .line 1514
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v1

    .line 1515
    .local v2, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_0

    .line 1516
    add-int/lit8 v0, v0, 0x1

    .line 1513
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1519
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count of subs activated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return v0
.end method

.method public getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1212
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 294
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 296
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 297
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 298
    .local v1, "subId":Ljava/lang/Integer;
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE on SUB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v6, v2, v3

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isAllRadioOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 302
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    goto :goto_0

    .line 307
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 308
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 309
    .restart local v1    # "subId":Ljava/lang/Integer;
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RADIO_ON on SUB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 314
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :sswitch_2
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_CARD_INFO_AVAILABLE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processCardInfoAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 319
    :sswitch_3
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_CARD_INFO_NOT_AVAILABLE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processCardInfoNotAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 324
    :sswitch_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagAllCardsInfo:Z

    if-nez v2, :cond_1

    .line 325
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_ALL_CARD_INFO_AVAILABLE, delay 100 ms"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 327
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagAllCardsInfo:Z

    goto/16 :goto_0

    .line 330
    :cond_1
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_ALL_CARD_INFO_AVAILABLE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagAllCardsInfo:Z

    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processAllCardsInfoAvailable()V

    goto/16 :goto_0

    .line 336
    :sswitch_5
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 342
    :sswitch_6
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_SET_DUALCARD_GW_SUBSCRIPTION_DONE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagDualcardGwProcessDone:Z

    .line 344
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SubscriptionData;

    check-cast v2, Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z

    goto/16 :goto_0

    .line 349
    :sswitch_7
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_SUBSCRIPTION_STATUS_CHANGED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 354
    :sswitch_8
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 360
    :sswitch_9
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_SET_DOMAIN_DONE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processSetDomainDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 294
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0x65 -> :sswitch_6
        0xc9 -> :sswitch_9
    .end sparse-switch
.end method

.method public isSetSubscriptionInProgress()Z
    .locals 1

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 1224
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    .line 1225
    .local v0, "currentSelSub":Lcom/android/internal/telephony/Subscription;
    iget-object v1, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1499
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1500
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    monitor-exit p0

    return-void

    .line 1499
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1480
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1481
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 1482
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1483
    monitor-exit v2

    .line 1484
    return-void

    .line 1483
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1460
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1461
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 1462
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1463
    monitor-exit v2

    .line 1464
    return-void

    .line 1463
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 6
    .param p1, "subscription"    # I
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 1413
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSubscription() sub="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 1415
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    .line 1416
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 1418
    const-string v2, "Combination"

    const-string v3, "Combination"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1420
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1423
    .local v0, "msgSetDataSub":Landroid/os/Message;
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set DDS to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Calling cmd interface setDataSubscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const-string v2, "0"

    const-string v3, "ril.MSIMM"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1427
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    aget-object v2, v2, v3

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 1449
    .end local v0    # "msgSetDataSub":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1429
    .restart local v0    # "msgSetDataSub":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 1430
    const-string v2, "SubscriptionManager"

    const-string v3, "RIL request is needed to SUB0 in case of SIM2 only"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1433
    .end local v0    # "msgSetDataSub":Landroid/os/Message;
    :cond_2
    const-string v2, "IMC"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1435
    const/16 v2, 0xc9

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1438
    .local v1, "msgSetDomain":Landroid/os/Message;
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set domain to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as CS only. Calling cmd interface setVoiceDomainPref"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const-string v2, "0"

    const-string v3, "ril.MSIMM"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1442
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/internal/telephony/SubscriptionManager;->OEM_HOOK_SET_SERVICE_DOMAIN_CS_ONLY:[B

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0

    .line 1444
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/internal/telephony/SubscriptionManager;->OEM_HOOK_SET_SERVICE_DOMAIN_CS_ONLY:[B

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1445
    const-string v2, "SubscriptionManager"

    const-string v3, "RIL request is needed to SUB0 in case of SIM2 only"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPhones([Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "p"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 372
    return-void
.end method

.method public setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z
    .locals 9
    .param p1, "subData"    # Lcom/android/internal/telephony/SubscriptionData;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1270
    const/4 v3, 0x0

    .line 1276
    .local v3, "ret":Z
    iget-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v7, :cond_0

    .line 1333
    :goto_0
    return v5

    .line 1280
    :cond_0
    const-string v7, "CTC"

    const-string v8, "CMCC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1282
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->setDualCardGwSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 1283
    goto :goto_0

    .line 1285
    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagDualcardGwProcessDone:Z

    .line 1288
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v5, :cond_3

    .line 1289
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v7, "NO CHANGE IN SUBSCRIPTION"

    aput-object v7, v5, v1

    .line 1288
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1293
    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v5, :cond_7

    .line 1294
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v5

    aget-object v4, v5, v1

    .line 1299
    .local v4, "subId":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v5

    iget-object v7, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/Subscription;->isSame(Lcom/android/internal/telephony/Subscription;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1300
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v7, :cond_6

    .line 1301
    const-string v5, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to deactivate current SUB :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    new-instance v2, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/Subscription;-><init>()V

    .line 1303
    .local v2, "newSub":Lcom/android/internal/telephony/Subscription;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1304
    sget-object v5, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v5, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1305
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    .end local v2    # "newSub":Lcom/android/internal/telephony/Subscription;
    :cond_4
    :goto_3
    iget-object v5, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v7, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v7, :cond_5

    .line 1312
    const-string v5, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to activate new SUB : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    new-instance v2, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/Subscription;-><init>()V

    .line 1314
    .restart local v2    # "newSub":Lcom/android/internal/telephony/Subscription;
    iget-object v5, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v5, v5, v7

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1315
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    .end local v2    # "newSub":Lcom/android/internal/telephony/Subscription;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1306
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v7, :cond_4

    iget-object v5, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v7, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v7, :cond_4

    goto :goto_3

    .line 1320
    .end local v4    # "subId":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v5, :cond_8

    .line 1321
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v0

    .line 1322
    .local v0, "deactivateInProgress":Z
    if-eqz v0, :cond_a

    .line 1323
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 1329
    .end local v0    # "deactivateInProgress":Z
    :cond_8
    :goto_4
    iget-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v5, :cond_9

    .line 1331
    const/4 v3, 0x1

    :cond_9
    move v5, v3

    .line 1333
    goto/16 :goto_0

    .line 1325
    .restart local v0    # "deactivateInProgress":Z
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    goto :goto_4
.end method

.method public declared-synchronized unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1508
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    monitor-exit p0

    return-void

    .line 1508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterForSubscriptionActivated(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1489
    monitor-exit v1

    .line 1490
    return-void

    .line 1489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 1468
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1469
    monitor-exit v1

    .line 1470
    return-void

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
