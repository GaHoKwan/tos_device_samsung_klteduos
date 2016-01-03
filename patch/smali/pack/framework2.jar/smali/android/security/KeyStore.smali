.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private lMdmService:Landroid/sec/enterprise/IEDMProxy;

.field private final mBinder:Landroid/security/IKeystoreService;

.field private mError:I


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 1
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    .line 80
    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    .line 82
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    .line 84
    return-void
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2

    .prologue
    .line 87
    const-string v1, "android.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 89
    .local v0, "keystore":Landroid/security/IKeystoreService;
    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method static getKeyTypeForAlgorithm(Ljava/lang/String;)I
    .locals 3
    .param p0, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x6

    .line 98
    :goto_0
    return v0

    .line 95
    :cond_0
    const-string v0, "DSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/16 v0, 0x74

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/16 v0, 0x198

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemUidAsUser(I)I
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 524
    const v0, 0x186a0

    mul-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private refreshRollbackUserKeystore(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 514
    iget-object v1, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_0

    .line 516
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->notifyUserKeystoreUnlocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Failed talking with Certificate Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public clearUid(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 493
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Landroid/security/IKeystoreService;->clear_uid(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    move v2, v1

    .line 499
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 493
    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 497
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 248
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 245
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 248
    goto :goto_0
.end method

.method public delKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 408
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delKey(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->del_key(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 403
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 400
    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 403
    goto :goto_0
.end method

.method public delKeyAsUser(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "targetUid"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p3}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v4

    invoke-interface {v3, p1, p2, v4}, Landroid/security/IKeystoreService;->del_key_as_user(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 225
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 222
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 225
    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 235
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 232
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 235
    goto :goto_0
.end method

.method public deleteAsUser(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "targetUid"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p3}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v4

    invoke-interface {v3, p1, p2, v4}, Landroid/security/IKeystoreService;->del_as_user(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 190
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 187
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 190
    goto :goto_0
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 4
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 470
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 467
    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 470
    goto :goto_0
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # [[B

    .prologue
    .line 373
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIII[[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v7

    .line 375
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getByUid(Ljava/lang/String;I)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get_by_uid(Ljava/lang/String;I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getPubkey(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 391
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get_pubkey(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 394
    :goto_0
    return-object v1

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, -0x1

    .line 453
    :try_start_0
    iget-object v5, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v5, p1}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 454
    .local v1, "millis":J
    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 461
    .end local v1    # "millis":J
    :goto_0
    return-wide v3

    .line 458
    .restart local v1    # "millis":J
    :cond_0
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    goto :goto_0

    .line 459
    .end local v1    # "millis":J
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "KeyStore"

    const-string v6, "Cannot connect to keystore"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public grant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 431
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 434
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 431
    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 434
    goto :goto_0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 4
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 385
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 382
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 385
    goto :goto_0
.end method

.method public importKeyAsUser(Ljava/lang/String;[BIII)Z
    .locals 9
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "targetUid"    # I
    .param p4, "flags"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p5}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->import_key_as_user(Ljava/lang/String;[BIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    .line 181
    :goto_0
    return v0

    :cond_0
    move v0, v8

    .line 178
    goto :goto_0

    .line 179
    :catch_0
    move-exception v6

    .line 180
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    .line 181
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, "count":I
    :try_start_0
    const-string v8, "USRPKEY_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "pPrKey":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 333
    array-length v8, v3

    add-int/2addr v0, v8

    .line 336
    :cond_0
    const-string v8, "USRCERT_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "pUserCert":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 339
    array-length v8, v4

    add-int/2addr v0, v8

    .line 342
    :cond_1
    const-string v8, "CACERT_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "pCaCert":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 345
    array-length v8, v2

    add-int/2addr v0, v8

    .line 348
    :cond_2
    const-string v8, "WAPIAS_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "pWapiAsCert":[Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 351
    array-length v8, v5

    add-int/2addr v0, v8

    .line 354
    :cond_3
    const-string v8, "WAPIUSR_"

    const/16 v9, 0x3f2

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "pWapiUserCert":[Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 357
    array-length v8, v6

    add-int/2addr v0, v8

    .line 360
    :cond_4
    iget-object v8, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v8}, Landroid/security/IKeystoreService;->zero()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_5

    if-nez v0, :cond_5

    const/4 v7, 0x1

    .line 366
    .end local v2    # "pCaCert":[Ljava/lang/String;
    .end local v3    # "pPrKey":[Ljava/lang/String;
    .end local v4    # "pUserCert":[Ljava/lang/String;
    .end local v5    # "pWapiAsCert":[Ljava/lang/String;
    .end local v6    # "pWapiUserCert":[Ljava/lang/String;
    :cond_5
    :goto_0
    return v7

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "KeyStore"

    const-string v9, "Cannot connect to keystore"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 364
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 365
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "KeyStore"

    const-string v9, "Cannot connect to keystore"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isHardwareBacked()Z
    .locals 1

    .prologue
    .line 476
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    move v2, v1

    .line 487
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 481
    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 485
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isUnlocked()Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->lock()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 305
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 302
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 305
    goto :goto_0
.end method

.method public password(Ljava/lang/String;)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->password(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 289
    .local v1, "ret":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 290
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "ret":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 288
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 296
    goto :goto_1
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted([BZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    const-string v1, "KeyStore"

    const-string v3, "Put not allowed. Untrusted certificate."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return v2

    .line 143
    :cond_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public putAsUser(Ljava/lang/String;[BIII)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "targetUid"    # I
    .param p4, "flags"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 163
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted([BZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const-string v0, "KeyStore"

    const-string v1, "Put not allowed. Untrusted certificate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return v8

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {p5}, Landroid/security/KeyStore;->getSystemUidAsUser(I)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->insert_as_user(Ljava/lang/String;[BIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v7

    :goto_1
    move v8, v0

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1

    .line 170
    :catch_0
    move-exception v6

    .line 171
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->reset()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 281
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 278
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 281
    goto :goto_0
.end method

.method public resetAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->reset(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 216
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 213
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 216
    goto :goto_0
.end method

.method public saw(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saw(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 258
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/IKeystoreService;->saw(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    :cond_0
    :goto_0
    return-object v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 416
    :goto_0
    return-object v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 4

    .prologue
    .line 107
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2}, Landroid/security/IKeystoreService;->test()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_0

    .line 117
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 108
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_0
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 116
    :goto_0
    return-object v2

    .line 115
    :pswitch_1
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_0

    .line 116
    :pswitch_2
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stateAsUser(I)Landroid/security/KeyStore$State;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 197
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->test(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 203
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_0

    .line 207
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 198
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_0
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 206
    :goto_0
    return-object v2

    .line 205
    :pswitch_1
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_0

    .line 206
    :pswitch_2
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 440
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 443
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 440
    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 443
    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->unlock(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/security/KeyStore;->mError:I

    .line 313
    iget v3, p0, Landroid/security/KeyStore;->mError:I

    if-ne v3, v1, :cond_1

    .line 314
    .local v1, "ret":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v1    # "ret":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    .line 313
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 321
    goto :goto_1
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 422
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 425
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 422
    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 425
    goto :goto_0
.end method
