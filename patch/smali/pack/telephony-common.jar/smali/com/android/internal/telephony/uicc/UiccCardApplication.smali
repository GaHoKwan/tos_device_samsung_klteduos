.class public Lcom/android/internal/telephony/uicc/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCardApplication$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x5

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x7

.field private static final EVENT_CHANGE_PIN1_DONE:I = 0x2

.field private static final EVENT_CHANGE_PIN2_DONE:I = 0x3

.field private static final EVENT_GET_PIN_REMAINING_DONE:I = 0x1a

.field private static final EVENT_PIN1_DONE:I = 0x9

.field private static final EVENT_PIN1_PUK1_DONE:I = 0x1

.field private static final EVENT_PIN2_DONE:I = 0xa

.field private static final EVENT_PIN2_PUK2_DONE:I = 0x8

.field private static final EVENT_PUK1_DONE:I = 0xb

.field private static final EVENT_PUK2_DONE:I = 0xc

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x6

.field private static final EVENT_WAIT_UPDATE_DONE:I = 0xd

.field private static final EVENT_WAIT_UPDATE_STATE_DONE:I = 0xe

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCardApplication"

.field private static final PIN1:I = 0x1

.field private static final PIN2:I = 0x3

.field private static final PUK1:I = 0x2

.field private static final PUK2:I = 0x4


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field private mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field private mDestroyed:Z

.field public mFdnState:Z

.field private mGetLockInfoRegistrants:Landroid/os/RegistrantList;

.field private mHandler:Landroid/os/Handler;

.field private mIccFdnAvailable:Z

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIccLockEnabled:Z

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIccStateUpdated:I

.field private mIccStateUpdatedPinPuk:I

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPin1Replaced:Z

.field private mPin1RetryCount:I

.field private mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private mPin2RetryCount:I

.field private mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mPinRemainingCount:[I

.field private mPuk1RetryCount:I

.field private mPuk2RetryCount:I

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mSPLockedRegistrants:Landroid/os/RegistrantList;

.field public mSimPinState:Z

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUpdateSimLockInfoRegistrants:Landroid/os/RegistrantList;

.field private mperso_unblock_retries:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDbg:Z

    .line 93
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    .line 112
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1RetryCount:I

    .line 113
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk1RetryCount:I

    .line 114
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2RetryCount:I

    .line 115
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk2RetryCount:I

    .line 116
    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mperso_unblock_retries:I

    .line 117
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I

    .line 118
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mFdnState:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mSimPinState:Z

    .line 122
    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I

    .line 131
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    .line 133
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 134
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 135
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 137
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mGetLockInfoRegistrants:Landroid/os/RegistrantList;

    .line 138
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUpdateSimLockInfoRegistrants:Landroid/os/RegistrantList;

    .line 139
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mSPLockedRegistrants:Landroid/os/RegistrantList;

    .line 140
    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

    .line 512
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating UiccApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 154
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/UiccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 156
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 157
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 158
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 159
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 160
    iget-object v3, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 161
    iget v3, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    .line 162
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 163
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 165
    iget v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_num_retries:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1RetryCount:I

    .line 166
    iget v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk1_num_retries:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk1RetryCount:I

    .line 167
    iget v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2_num_retries:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2RetryCount:I

    .line 168
    iget v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk2_num_retries:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk2RetryCount:I

    .line 169
    iget v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_unblock_retries:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mperso_unblock_retries:I

    .line 172
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 173
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 175
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 176
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v2, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 194
    :cond_0
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinRemainingCount:[I

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_2

    .line 196
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinRemainingCount:[I

    aput v5, v1, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_1
    move v1, v2

    .line 161
    goto :goto_0

    .line 199
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPinRemainingDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/uicc/UiccCardApplication;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I

    return p1
.end method

.method static synthetic access$908(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I

    return v0
.end method

.method private createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 303
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 305
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 307
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/uicc/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 309
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 311
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 313
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 303
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

.method private createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 290
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1

    .line 291
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 298
    :goto_0
    return-object v0

    .line 292
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_3

    .line 293
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 294
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_4

    .line 295
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 298
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPinRemainingDone(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1402
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 1407
    .local v1, "rspRaw":[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 1409
    .local v0, "rsp":Ljava/lang/String;
    aget-byte v2, v1, v4

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    aget-byte v2, v1, v5

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 1411
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinRemainingCount:[I

    aget-byte v3, v1, v6

    aput v3, v2, v4

    .line 1412
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinRemainingCount:[I

    aget-byte v3, v1, v7

    aput v3, v2, v5

    .line 1413
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinRemainingCount:[I

    const/4 v3, 0x4

    aget-byte v3, v1, v3

    aput v3, v2, v6

    .line 1414
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinRemainingCount:[I

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    aput v3, v2, v7

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1265
    const-string v0, "UiccCardApplication"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1269
    const-string v0, "UiccCardApplication"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-void
.end method

.method private notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    const/4 v2, 0x0

    .line 892
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    if-nez p1, :cond_4

    .line 901
    const-string v0, "Notifying registrants: NETWORK_LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v0, v1, :cond_2

    .line 904
    const-string v0, "Notifying registrants: SP_LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mSPLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v0, v1, :cond_3

    .line 907
    const-string v0, "Notifying registrants: NETWORK_SUBSET_LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 910
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 914
    :cond_4
    const-string v0, "Notifying 1 registrant: NETWORK_LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-eq v0, v1, :cond_0

    .line 918
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private declared-synchronized notifyNetworkSubsetLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 4
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    .line 948
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 959
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 952
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v0, v1, :cond_0

    .line 954
    if-eqz p1, :cond_0

    .line 955
    const-string v0, "Notifying 1 registrant: PERSOSUBSTATE_SIM_NETWORK_SUBSET"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 956
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 948
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 866
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_4

    .line 868
    :cond_3
    const-string v0, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 872
    :cond_4
    if-nez p1, :cond_5

    .line 873
    const-string v0, "Notifying registrants: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 879
    :goto_1
    const-string v0, "CHN"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    goto :goto_0

    .line 876
    :cond_5
    const-string v0, "Notifying 1 registrant: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 877
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method

.method private notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    const/4 v2, 0x0

    .line 830
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_3

    .line 840
    :cond_2
    const-string v0, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_3
    if-nez p1, :cond_4

    .line 845
    const-string v0, "Notifying registrants: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 848
    :cond_4
    const-string v0, "Notifying 1 registrant: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 849
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private declared-synchronized notifySPLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 4
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    .line 930
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 941
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 934
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v0, v1, :cond_0

    .line 936
    if-eqz p1, :cond_0

    .line 937
    const-string v0, "Notifying 1 registrant: SP_LOCED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 938
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onChangeFacilityLock(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 446
    const/4 v0, -0x1

    .line 448
    .local v0, "attemptsRemaining":I
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 449
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccLockEnabled= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 464
    :goto_0
    monitor-exit v2

    .line 465
    return-void

    .line 453
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change facility lock with exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onChangeFdnDone(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 362
    const/4 v0, -0x1

    .line 364
    .local v0, "attemptsRemaining":I
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 365
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 380
    :goto_0
    monitor-exit v2

    .line 381
    return-void

    .line 369
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error change facility fdn with exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 396
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 398
    monitor-exit v4

    .line 441
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 402
    .local v1, "ints":[I
    array-length v2, v1

    if-eqz v2, :cond_5

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query facility lock : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 405
    const/4 v2, 0x0

    aget v2, v1, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    .line 407
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 417
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardStatus$PinState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 434
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring: pin1state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 440
    :cond_3
    :goto_3
    monitor-exit v4

    goto :goto_0

    .end local v1    # "ints":[I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "ints":[I
    :cond_4
    move v2, v3

    .line 405
    goto :goto_1

    .line 419
    :pswitch_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_3

    .line 420
    const-string v2, "QUERY_FACILITY_LOCK:enabled GET_SIM_STATUS.Pin1:disabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 428
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-nez v2, :cond_2

    .line 429
    const-string v2, "QUERY_FACILITY_LOCK:disabled GET_SIM_STATUS.Pin1:enabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 438
    :cond_5
    const-string v2, "Bogus facility lock response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 336
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 337
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 339
    monitor-exit v5

    .line 358
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 343
    .local v1, "result":[I
    array-length v2, v1

    if-eqz v2, :cond_3

    .line 345
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 346
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 347
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    .line 352
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility FDN : FDN service available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 357
    :goto_2
    monitor-exit v5

    goto :goto_0

    .end local v1    # "result":[I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 349
    .restart local v1    # "result":[I
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    aget v2, v1, v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 350
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    goto :goto_1

    :cond_2
    move v2, v4

    .line 349
    goto :goto_3

    .line 355
    :cond_3
    const-string v2, "Bogus facility lock response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 471
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 472
    .local v2, "result":[I
    if-nez v2, :cond_0

    .line 473
    const/4 v0, -0x1

    .line 481
    :goto_0
    return v0

    .line 475
    :cond_0
    array-length v1, v2

    .line 476
    .local v1, "length":I
    const/4 v0, -0x1

    .line 477
    .local v0, "attemptsRemaining":I
    if-lez v1, :cond_1

    .line 478
    const/4 v3, 0x0

    aget v0, v2, v3

    .line 480
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsePinPukErrorResult: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "PinType"    # I

    .prologue
    const/4 v4, 0x0

    .line 490
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 491
    .local v0, "intArray":[I
    array-length v1, v0

    .line 492
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsePinPukErrorResu lt intArray[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 493
    if-lez v1, :cond_0

    .line 494
    packed-switch p2, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 496
    :pswitch_0
    aget v2, v0, v4

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1RetryCount:I

    goto :goto_0

    .line 499
    :pswitch_1
    aget v2, v0, v4

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk1RetryCount:I

    goto :goto_0

    .line 502
    :pswitch_2
    aget v2, v0, v4

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2RetryCount:I

    goto :goto_0

    .line 505
    :pswitch_3
    aget v2, v0, v4

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk2RetryCount:I

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private queryFdn()V
    .locals 7

    .prologue
    .line 324
    const/4 v3, 0x7

    .line 327
    .local v3, "serviceClassX":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 330
    return-void
.end method

.method private queryPin1State()V
    .locals 7

    .prologue
    .line 385
    const/4 v3, 0x7

    .line 388
    .local v3, "serviceClassX":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 391
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1236
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1238
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change Pin2 old: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 1239
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1243
    monitor-exit v1

    .line 1244
    return-void

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1214
    :try_start_0
    const-string v0, "changeIccLockPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 1216
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I

    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1220
    monitor-exit v1

    .line 1221
    return-void

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dispose()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " being Disposed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 284
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccCardApplication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPersoSubState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPin1Replaced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPin1State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPin2State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccFdnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredFdnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccLockEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredPinLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccFh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDestroyed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReadyRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mReadyRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1296
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPinLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPinLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1301
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNetworkLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1306
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1307
    return-void
.end method

.method public getAid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 981
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 983
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    return-object v0
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    .prologue
    .line 1139
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    monitor-exit v1

    return v0

    .line 1130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2

    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    monitor-exit v1

    return-object v0

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 1109
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    return v0
.end method

.method public getIccPersoRetryCount()I
    .locals 1

    .prologue
    .line 1397
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mperso_unblock_retries:I

    return v0
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 1372
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1RetryCount:I

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 3

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1251
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccPin2RetryCount()I
    .locals 1

    .prologue
    .line 1379
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2RetryCount:I

    return v0
.end method

.method public getIccPinBlocked()Z
    .locals 3

    .prologue
    .line 1354
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1355
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccPuk1RetryCount()I
    .locals 1

    .prologue
    .line 1386
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk1RetryCount:I

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 3

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1260
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccPuk2RetryCount()I
    .locals 1

    .prologue
    .line 1393
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk2RetryCount:I

    return v0
.end method

.method public getIccPukBlocked()Z
    .locals 3

    .prologue
    .line 1363
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1364
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1003
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v1

    return-object v0

    .line 1004
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntType()I
    .locals 2

    .prologue
    .line 1311
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1319
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1313
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1315
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 2

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 976
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    monitor-exit v1

    return-object v0

    .line 977
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 987
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v0

    monitor-exit v1

    .line 991
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v1

    goto :goto_0

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPinRemainingStatus(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1423
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 1424
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinRemainingCount:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 2

    .prologue
    .line 963
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    monitor-exit v1

    return-object v0

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 2

    .prologue
    .line 969
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    monitor-exit v1

    return-object v0

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPersoLocked()Z
    .locals 2

    .prologue
    .line 1332
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1338
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1336
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 746
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 747
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 748
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 749
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 750
    monitor-exit v2

    .line 751
    return-void

    .line 750
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 763
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 764
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 765
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 766
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 767
    monitor-exit v2

    .line 768
    return-void

    .line 767
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 794
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 795
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 796
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 797
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkSubsetLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 798
    monitor-exit v2

    .line 799
    return-void

    .line 798
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 729
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 730
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 731
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 732
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 733
    monitor-exit v2

    .line 734
    return-void

    .line 733
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSPLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 781
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 782
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mSPLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 783
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifySPLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 784
    return-void
.end method

.method public registerForUpdateLockInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 811
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 812
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 813
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUpdateSimLockInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 814
    monitor-exit v2

    .line 815
    return-void

    .line 814
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestPinRemainingStatus()V
    .locals 3

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPinRemainingStatus(Landroid/os/Message;)V

    .line 1429
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1184
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1186
    const/16 v4, 0xf

    .line 1191
    .local v4, "serviceClassX":I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 1193
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1196
    monitor-exit v7

    .line 1197
    return-void

    .line 1196
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1155
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1157
    const/4 v4, 0x7

    .line 1161
    .local v4, "serviceClassX":I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    .line 1163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I

    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1168
    monitor-exit v7

    .line 1169
    return-void

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "lockState"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Despersonalization: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1099
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1091
    :try_start_0
    const-string v0, "supplyNetworkDepersonalization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 1093
    monitor-exit v1

    .line 1094
    return-void

    .line 1093
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1027
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1029
    :try_start_0
    const-string v0, "CHN"

    const-string v2, "CHN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 1035
    monitor-exit v1

    .line 1036
    return-void

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1075
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 1077
    monitor-exit v1

    .line 1078
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1063
    :try_start_0
    const-string v0, "CHN"

    const-string v2, "CHN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1069
    monitor-exit v1

    .line 1070
    return-void

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1083
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I

    .line 1084
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1086
    monitor-exit v1

    .line 1087
    return-void

    .line 1086
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 756
    monitor-exit v1

    .line 757
    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 771
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 773
    monitor-exit v1

    .line 774
    return-void

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkSubsetLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 804
    monitor-exit v1

    .line 805
    return-void

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 739
    monitor-exit v1

    .line 740
    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSPLocked(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mSPLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 788
    return-void
.end method

.method public unregisterForUpdateLockInfo(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUpdateSimLockInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 820
    monitor-exit v1

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 202
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 203
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v4, :cond_0

    .line 204
    const-string v4, "Application updated after destroyed! Fix me!"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 205
    monitor-exit v5

    .line 276
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " update. New "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 210
    const-string v4, "in update method "

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 212
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 213
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 215
    .local v1, "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 217
    .local v0, "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 219
    .local v3, "oldPin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 220
    .local v2, "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 221
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 222
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 223
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 224
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 225
    iget v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    .line 226
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 227
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 229
    iget v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_num_retries:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1RetryCount:I

    .line 230
    iget v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk1_num_retries:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk1RetryCount:I

    .line 231
    iget v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2_num_retries:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2RetryCount:I

    .line 232
    iget v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk2_num_retries:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPuk2RetryCount:I

    .line 235
    iget v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_unblock_retries:I

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mperso_unblock_retries:I

    .line 237
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v1, :cond_3

    .line 238
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 239
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 240
    :cond_2
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 241
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v4, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 244
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-eq v4, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 248
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 251
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v0, :cond_7

    .line 269
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v4, v3, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v6, :cond_5

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " changed PIN1 state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 273
    :cond_5
    :goto_2
    const/16 v4, 0x64

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I

    .line 275
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v1    # "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v2    # "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .end local v3    # "oldPin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 225
    .restart local v0    # "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .restart local v1    # "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .restart local v2    # "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .restart local v3    # "oldPin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 252
    :cond_7
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " changed state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v6, :cond_8

    .line 256
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 257
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 259
    :cond_8
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 260
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 261
    const-string v4, "CHN"

    const-string v6, "CHN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v6, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v6, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v6, :cond_5

    .line 266
    :cond_9
    const/16 v4, 0x270f

    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdatedPinPuk:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public updateSimLockInfo()V
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUpdateSimLockInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1348
    return-void
.end method
