.class public Lcom/android/server/LockSettingsService$KeyStoreMdpp;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoreMdpp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;
    }
.end annotation


# static fields
.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field private static final NO_ERROR:I = 0x1

.field public static final UNINITIALIZED:I = 0x3


# instance fields
.field private final mBinder:Landroid/security/IKeystoreService;

.field private mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 0
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    .line 120
    return-void
.end method

.method private getCertificateService()Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "certificate_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;
    .locals 2

    .prologue
    .line 133
    const-string v1, "android.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 136
    .local v0, "keystore":Landroid/security/IKeystoreService;
    new-instance v1, Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    invoke-direct {v1, v0}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method private refreshRollbackUserKeystore(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getCertificateService()Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyUserKeystoreUnlocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed talking with Certificate Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 152
    const/4 v2, 0x0

    .line 154
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->check_password(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 160
    :goto_0
    return v2

    .line 154
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 157
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEmpty(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 255
    const/4 v2, 0x0

    .line 257
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->zero(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 263
    :goto_0
    return v2

    .line 257
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 260
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isUnlocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->state(I)Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    move-result-object v0

    sget-object v1, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNLOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 181
    const/4 v2, 0x0

    .line 183
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->lock(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 189
    :goto_0
    return v2

    .line 183
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public password(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 164
    const/4 v2, 0x0

    .line 166
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->password(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 168
    :goto_0
    if-eqz v2, :cond_0

    .line 169
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->refreshRollbackUserKeystore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :cond_0
    :goto_1
    return v2

    .line 166
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 174
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->reset(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 239
    :goto_0
    return v2

    .line 233
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 237
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetHard(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 243
    const/4 v2, 0x0

    .line 245
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->reset_hard(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 251
    :goto_0
    return v2

    .line 245
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 248
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaxRetryCount(I)Z
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 140
    const/4 v2, 0x0

    .line 142
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->set_max_retry_count(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 148
    :goto_0
    return v2

    .line 142
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public state(I)Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->test(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 218
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_0

    .line 222
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 213
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MDPP"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_0
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNLOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    .line 221
    :goto_0
    return-object v2

    .line 220
    :pswitch_1
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->LOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    goto :goto_0

    .line 221
    :pswitch_2
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNINITIALIZED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unlock(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 193
    const/4 v2, 0x0

    .line 195
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->unlock(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 197
    :goto_0
    if-eqz v2, :cond_0

    .line 198
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->refreshRollbackUserKeystore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :cond_0
    :goto_1
    return v2

    .line 195
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 203
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 204
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
