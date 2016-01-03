.class public Landroid/telephony/MultiSimTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "MultiSimTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSimTelephonyManager"

.field private static cnt:I

.field private static sInstance:[Landroid/telephony/MultiSimTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v1, 0x0

    sput v1, Landroid/telephony/MultiSimTelephonyManager;->cnt:I

    .line 48
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/MultiSimTelephonyManager;

    sput-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    .line 49
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_0
    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    new-instance v2, Landroid/telephony/MultiSimTelephonyManager;

    invoke-direct {v2, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(I)V

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 56
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "simSlot"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 65
    iput p1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 73
    iget-object v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 76
    iput-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    .line 82
    :goto_0
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 85
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    iput p2, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    .line 87
    return-void

    .line 79
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    iput-object p1, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/MultiSimTelephonyManager;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefault(I)Landroid/telephony/MultiSimTelephonyManager;
    .locals 1
    .param p0, "simSlot"    # I

    .prologue
    .line 101
    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MultiSimTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 178
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 171
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget v4, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v4}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 172
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 173
    goto :goto_0

    .line 175
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 176
    goto :goto_0

    .line 177
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 178
    goto :goto_0
.end method

.method protected getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "phone"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    const-string v0, "gsm.operator.iso-country"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    const-string v0, "gsm.operator.numeric"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    const-string v0, "gsm.operator.alpha"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTypeFromProperty()I
    .locals 2

    .prologue
    .line 148
    const-string v0, "gsm.current.phone-type"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    const-string v0, "gsm.sim.operator.iso-country"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    const-string v0, "gsm.sim.operator.numeric"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    const-string v0, "gsm.sim.operator.alpha"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 3

    .prologue
    .line 280
    const-string v1, "gsm.sim.state"

    iget v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v1, 0x1

    .line 292
    :goto_0
    return v1

    .line 283
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    const/4 v1, 0x2

    goto :goto_0

    .line 285
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    const/4 v1, 0x3

    goto :goto_0

    .line 287
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    const/4 v1, 0x4

    goto :goto_0

    .line 289
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    const/4 v1, 0x5

    goto :goto_0

    .line 292
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2

    .prologue
    .line 201
    const-string v0, "iphonesubinfo"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkRoaming()Z
    .locals 3

    .prologue
    .line 245
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    iget v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 381
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 132
    iget-object v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MultiSimTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 135
    .local v0, "notifyNow":Ljava/lang/Boolean;
    iget-object v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "notifyNow":Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 132
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 134
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v2

    goto :goto_2

    .line 136
    :catch_1
    move-exception v2

    goto :goto_2
.end method
