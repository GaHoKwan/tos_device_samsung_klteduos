.class public final Landroid/security/KeyChain;
.super Ljava/lang/Object;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyChain$KeyChainConnection;,
        Landroid/security/KeyChain$AliasResponse;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.keychain"

.field private static final ACTION_CHOOSER:Ljava/lang/String; = "com.android.keychain.CHOOSER"

.field private static final ACTION_INSTALL:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final ACTION_STORAGE_CHANGED:Ljava/lang/String; = "android.security.STORAGE_CHANGED"

.field public static final EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final EXTRA_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final EXTRA_HOST:Ljava/lang/String; = "host"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final EXTRA_PORT:Ljava/lang/String; = "port"

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field private static final TAG:Ljava/lang/String; = "KeyChain"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    return-void
.end method

.method public static bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 444
    if-nez p0, :cond_0

    .line 445
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "context == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 447
    :cond_0
    invoke-static {p0}, Landroid/security/KeyChain;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 448
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 449
    .local v4, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v3, Landroid/security/KeyChain$1;

    invoke-direct {v3, v4}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 463
    .local v3, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Landroid/security/IKeyChainService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 465
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0, v1, v3, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 469
    .local v2, "isBound":Z
    if-nez v2, :cond_1

    .line 470
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "could not bind to KeyChainService"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 472
    :cond_1
    new-instance v6, Landroid/security/KeyChain$KeyChainConnection;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/IKeyChainService;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v3, v5, v7}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Landroid/security/KeyChain$1;)V

    return-object v6
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "response"    # Landroid/security/KeyChainAliasCallback;
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "issuers"    # [Ljava/security/Principal;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 266
    if-nez p0, :cond_0

    .line 267
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_0
    if-nez p1, :cond_1

    .line 270
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "response == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keychain.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "response"

    new-instance v2, Landroid/security/KeyChain$AliasResponse;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 274
    const-string v1, "host"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v1, "alias"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v1, "sender"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method public static createInstallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.certinstaller"

    const-string v2, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 476
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 477
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 478
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_0
    return-void
.end method

.method public static getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "alias == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 347
    :cond_0
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 348
    invoke-static {p1}, Lcom/sec/tima_keychain/TimaKeychain;->getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 363
    :goto_0
    return-object v6

    .line 351
    :cond_1
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v3

    .line 353
    .local v3, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    .line 355
    .local v4, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v4, p1}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 356
    .local v0, "certificateBytes":[B
    if-nez v0, :cond_2

    .line 357
    const/4 v6, 0x0

    .line 372
    :goto_1
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_0

    .line 360
    :cond_2
    :try_start_1
    new-instance v5, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 361
    .local v5, "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v0}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    .line 363
    .local v1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 364
    .end local v0    # "certificateBytes":[B
    .end local v1    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v4    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v5    # "store":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/security/cert/CertificateException;
    :try_start_2
    new-instance v6, Landroid/security/KeyChainException;

    invoke-direct {v6, v2}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v6

    .line 366
    :catch_1
    move-exception v2

    .line 367
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v6, Landroid/security/KeyChainException;

    invoke-direct {v6, v2}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 368
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v6, Landroid/security/KeyChainException;

    invoke-direct {v6, v2}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "alias == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 306
    :cond_0
    invoke-static {}, Lcom/sec/tima_keychain/TimaKeychain;->isTimaKeystoreAndCCMEnabledForCaller()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 307
    invoke-static {p1}, Lcom/sec/tima_keychain/TimaKeychain;->getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 319
    :goto_0
    return-object v5

    .line 310
    :cond_1
    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2

    .line 312
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 313
    .local v3, "keyChainService":Landroid/security/IKeyChainService;
    invoke-interface {v3, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "keyId":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 315
    new-instance v5, Landroid/security/KeyChainException;

    const-string v6, "keystore had a problem"

    invoke-direct {v5, v6}, Landroid/security/KeyChainException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v4    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v5, Landroid/security/KeyChainException;

    invoke-direct {v5, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v5

    .line 318
    .restart local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v4    # "keyId":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v5, "keystore"

    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v1

    .line 319
    .local v1, "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    invoke-virtual {v1, v4}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 328
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    goto :goto_0

    .line 322
    .end local v1    # "engine":Lcom/android/org/conscrypt/OpenSSLEngine;
    .end local v3    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v4    # "keyId":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v5, Landroid/security/KeyChainException;

    invoke-direct {v5, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 325
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 326
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v5, Landroid/security/KeyChainException;

    invoke-direct {v5, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static isBoundKeyAlgorithm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-static {p0}, Landroid/security/KeyChain;->isKeyAlgorithmSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isKeyAlgorithmSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 383
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "algUpper":Ljava/lang/String;
    const-string v1, "DSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bytes == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 407
    :cond_0
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 408
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 409
    .local v0, "cert":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cert":Ljava/security/cert/Certificate;
    return-object v0

    .line 410
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 411
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
