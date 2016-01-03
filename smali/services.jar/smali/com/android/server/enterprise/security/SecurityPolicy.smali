.class public Lcom/android/server/enterprise/security/SecurityPolicy;
.super Landroid/app/enterprise/ISecurityPolicy$Stub;
.source "SecurityPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;,
        Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    }
.end annotation


# static fields
.field private static final DEVICE_LAST_BOOT_SAFE_MODE_ACTION:Ljava/lang/String; = "edm.intent.action.LAST_BOOT_SAFE_MODE"

.field private static final DOD_BANNER_PATH:Ljava/lang/String; = "com.samsung.android.mdm.DodBanner"

.field private static final DOD_BANNER_PKG:Ljava/lang/String; = "com.samsung.android.mdm"

.field private static final KEYCHAIN_RESET_TIMEOUT:I = 0xbb8

.field private static final MAX_DEPTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SecurityPolicy"

.field private static final USER_DATA_DIR:Ljava/lang/String; = "/data/user/"

.field private static mBannerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMediaFormatRet:Z

.field private mPendingGetCerificates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPersona:Landroid/os/PersonaManager;

.field mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-direct {p0}, Landroid/app/enterprise/ISecurityPolicy$Stub;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 160
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    .line 179
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 196
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 1747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 168
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 169
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 173
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v3, "filterBoot":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/security/SecurityPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isLastBootInSafeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private static convertPemToX509([B)Ljava/security/cert/X509Certificate;
    .locals 8
    .param p0, "certBytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 869
    const/4 v3, 0x0

    .line 872
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 884
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 885
    :cond_0
    const-string v5, "SecurityPolicy"

    const-string v6, "Could not convert one certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :goto_0
    return-object v4

    .line 873
    :catch_0
    move-exception v1

    .line 874
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SecurityPolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 876
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 877
    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string v5, "SecurityPolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 879
    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v2

    .line 880
    .local v2, "ile":Ljava/lang/IllegalArgumentException;
    const-string v5, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not a certificate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 888
    .end local v2    # "ile":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method private deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "certType"    # Ljava/lang/String;
    .param p3, "keystore"    # I

    .prologue
    .line 1826
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z
    .locals 11
    .param p1, "removeCert"    # Ljava/security/cert/Certificate;
    .param p2, "certType"    # Ljava/lang/String;
    .param p3, "keystore"    # I
    .param p4, "userId"    # I

    .prologue
    .line 1832
    const/4 v5, 0x1

    .line 1834
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1835
    .local v6, "token":J
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1836
    const/4 v5, 0x0

    .line 1859
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1860
    return v5

    .line 1838
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1840
    .local v0, "CACertificateNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1841
    .local v3, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p3, p4}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1843
    .local v4, "pemCert":[B
    if-eqz v4, :cond_2

    .line 1844
    invoke-static {v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 1845
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1846
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v10

    invoke-virtual {v8, v9, v10, p4}, Landroid/security/KeyStore;->deleteAsUser(Ljava/lang/String;II)Z

    move-result v8

    and-int/2addr v5, v8

    .line 1849
    const-string v8, "USRCERT_"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1852
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRPKEY_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v10

    invoke-virtual {v8, v9, v10, p4}, Landroid/security/KeyStore;->delKeyAsUser(Ljava/lang/String;II)Z

    move-result v8

    and-int/2addr v5, v8

    goto :goto_0
.end method

.method private enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    .line 1553
    const/4 v2, 0x1

    .line 1554
    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1556
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1558
    .local v0, "callingUid":I
    if-nez p2, :cond_0

    .line 1559
    const/4 p3, 0x0

    .line 1561
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SECURITY"

    const-string v5, "deviceEnrolled"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1565
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SECURITY"

    const-string v5, "bannerText"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :goto_0
    return v2

    .line 1569
    :catch_0
    move-exception v1

    .line 1570
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private executeCommand(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1406
    .local p1, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1407
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1410
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 1412
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 1413
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1415
    .local v4, "resultLine":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1416
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1418
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1419
    .end local v1    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "resultLine":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v6, "SecurityPolicy"

    const-string v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1424
    if-eqz v2, :cond_0

    .line 1425
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1431
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v5

    .line 1424
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "process":Ljava/lang/Process;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "resultLine":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 1425
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_2
    :goto_3
    move-object v2, v3

    .line 1430
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1420
    .end local v1    # "process":Ljava/lang/Process;
    .end local v4    # "resultLine":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1421
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_4
    :try_start_5
    const-string v6, "SecurityPolicy"

    const-string v7, "executeCommand failed "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1424
    if-eqz v2, :cond_0

    .line 1425
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 1427
    :catch_2
    move-exception v0

    .line 1428
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    :goto_5
    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1423
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1424
    :goto_6
    if-eqz v2, :cond_3

    .line 1425
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1423
    :cond_3
    :goto_7
    throw v6

    .line 1427
    :catch_3
    move-exception v0

    .line 1428
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SecurityPolicy"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1427
    :catch_4
    move-exception v0

    .line 1428
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    goto :goto_5

    .line 1427
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "process":Ljava/lang/Process;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "resultLine":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 1428
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1423
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 1420
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1418
    .end local v1    # "process":Ljava/lang/Process;
    .end local v4    # "resultLine":Ljava/lang/String;
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private formatExternalStorageCard()Z
    .locals 13

    .prologue
    .line 488
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v8

    .line 490
    .local v8, "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    invoke-virtual {v8}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v9

    .line 492
    .local v9, "storageVolumes":[Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    .line 493
    .local v3, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v11, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .restart local v3    # "intent":Landroid/content/Intent;
    if-eqz v9, :cond_0

    array-length v11, v9

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    .line 495
    move-object v0, v9

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v10, v0, v2

    .line 496
    .local v10, "sv":Landroid/os/storage/StorageVolume;
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "extSdCard"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 497
    const-string/jumbo v11, "storage_volume"

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 502
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v10    # "sv":Landroid/os/storage/StorageVolume;
    :cond_0
    const-string v11, "edm"

    const-string/jumbo v12, "true"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    sget-object v11, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 504
    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 506
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 507
    .local v6, "lock":Ljava/lang/Object;
    new-instance v7, Lcom/android/server/enterprise/security/SecurityPolicy$2;

    invoke-direct {v7, p0, v9, v6}, Lcom/android/server/enterprise/security/SecurityPolicy$2;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;[Landroid/os/storage/StorageVolume;Ljava/lang/Object;)V

    .line 525
    .local v7, "mediaReceiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 526
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v11, "file"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 528
    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 530
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    const-wide/16 v11, 0x1b58

    :try_start_1
    invoke-virtual {v6, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    :try_start_3
    iget-object v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 544
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v6    # "lock":Ljava/lang/Object;
    .end local v7    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v9    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_2
    iget-boolean v11, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v11

    .line 495
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v2    # "i$":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "len$":I
    .restart local v8    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .restart local v9    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    .restart local v10    # "sv":Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v10    # "sv":Landroid/os/storage/StorageVolume;
    .restart local v4    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v6    # "lock":Ljava/lang/Object;
    .restart local v7    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v11, "SecurityPolicy"

    const-string v12, "formatStorageCard - InterruptedException"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 536
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v11

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 539
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v6    # "lock":Ljava/lang/Object;
    .end local v7    # "mediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "storageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .end local v9    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "SecurityPolicy"

    const-string v12, "formatStorageCard fail"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getAndroidInstalledCertificates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 830
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v5

    .line 832
    .local v5, "truststoreAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 833
    .local v0, "alias":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v6, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 834
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 835
    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 836
    .local v2, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v2, v1}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 837
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 838
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/enterprise/CertificateInfo;->setSystemPreloaded(Z)V

    .line 839
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 842
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_1
    return-object v4
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .locals 7
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;

    .prologue
    .line 904
    const/4 v1, 0x0

    .line 905
    .local v1, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 907
    .local v3, "token":J
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 908
    new-instance v1, Landroid/app/enterprise/CertificateInfo;

    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-direct {v1}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 909
    .restart local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 910
    .local v2, "pemCert":[B
    if-eqz v2, :cond_0

    .line 911
    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 912
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {v1, v0}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 917
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "pemCert":[B
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 918
    return-object v1
.end method

.method private getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificateNamesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 5
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, "names":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 937
    .local v1, "token":J
    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 938
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {p2, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 940
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;
    .locals 17
    .param p1, "certType"    # Ljava/lang/String;
    .param p2, "storeType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v11, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 795
    .local v12, "token":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 796
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 798
    .local v9, "names":[Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 799
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v8, v2, v6

    .line 800
    .local v8, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v10

    .line 802
    .local v10, "pemCert":[B
    if-eqz v10, :cond_1

    .line 803
    invoke-static {v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 804
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    .line 805
    new-instance v5, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v5}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 806
    .local v5, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v5, v4}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 807
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 808
    invoke-virtual {v5, v8}, Landroid/app/enterprise/CertificateInfo;->setAlias(Ljava/lang/String;)V

    .line 809
    const-string v14, "USRCERT_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 810
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "USRPKEY_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p2 .. p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, "arrayPKeys":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v14, v3

    if-eqz v14, :cond_0

    .line 813
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/app/enterprise/CertificateInfo;->setHasPrivateKey(Z)V

    .line 816
    .end local v3    # "arrayPKeys":[Ljava/lang/String;
    :cond_0
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 822
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "names":[Ljava/lang/String;
    .end local v10    # "pemCert":[B
    :cond_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    return-object v11
.end method

.method private getService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersona:Landroid/os/PersonaManager;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSystemCertificates(Z)Ljava/util/List;
    .locals 8
    .param p1, "includeDisabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 848
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 849
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v1

    .line 852
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 853
    .local v0, "alias":Ljava/lang/String;
    new-instance v3, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v3}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 854
    .local v3, "certInfo":Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v6, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 856
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 857
    invoke-virtual {v3, v2}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 858
    invoke-virtual {v3, v7}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 859
    invoke-virtual {v3, v7}, Landroid/app/enterprise/CertificateInfo;->setSystemPreloaded(Z)V

    .line 860
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v6, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/app/enterprise/CertificateInfo;->setEnabled(Z)V

    .line 861
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 864
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_1
    return-object v5
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 351
    if-nez p1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-object v1

    .line 351
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecurityPolicy"

    const-string v3, "is string valid?"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBannerApp(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .prologue
    .line 1638
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1639
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.samsung.android.mdm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1640
    const/4 v1, 0x1

    .line 1642
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isCa(Ljava/security/cert/Certificate;)Z
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v7, 0x0

    .line 1877
    const/4 v6, 0x0

    .line 1878
    .local v6, "x509cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    instance-of v8, p0, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_0

    .line 1879
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    .line 1883
    const-string v8, "2.5.29.19"

    invoke-virtual {v6, v8}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 1884
    .local v1, "asn1EncodedBytes":[B
    if-nez v1, :cond_1

    .line 1893
    .end local v1    # "asn1EncodedBytes":[B
    :cond_0
    :goto_0
    return v7

    .line 1887
    .restart local v1    # "asn1EncodedBytes":[B
    :cond_1
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 1889
    .local v2, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    .line 1890
    .local v4, "octets":[B
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 1891
    .local v5, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 1892
    .end local v1    # "asn1EncodedBytes":[B
    .end local v2    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v4    # "octets":[B
    .end local v5    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v3

    .line 1893
    .local v3, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private isLastBootInSafeMode()Z
    .locals 3

    .prologue
    .line 1712
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "deviceBootMode"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1714
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1715
    const/4 v1, 0x1

    .line 1717
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNativeKeyStoreUnlocked()Z
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 1013
    const/4 v1, 0x0

    .line 1015
    .local v1, "isUnlocked":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->stateAsUser(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 1016
    const/4 v1, 0x1

    .line 1024
    :cond_0
    :goto_0
    return v1

    .line 1018
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/AssertionError;
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUserRestrictedFolder(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1384
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1386
    .local v1, "userId":I
    const/4 v0, 0x0

    .line 1388
    .local v0, "ret":Z
    const-string v2, "/proc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/sys"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1390
    :cond_0
    const/4 v0, 0x1

    .line 1401
    :cond_1
    :goto_0
    return v0

    .line 1392
    :cond_2
    const-string v2, "/data/user/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 1396
    :cond_3
    const-string v2, "/data/data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1397
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    .locals 9
    .param p1, "fdir"    # Ljava/io/File;
    .param p2, "depth"    # I
    .param p3, "outFile"    # Ljava/io/PrintWriter;

    .prologue
    .line 1358
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1359
    const/16 v6, 0x14

    if-ge p2, v6, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1362
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1363
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->getFileNamesWithAttributes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1368
    .local v5, "listFiles":[Ljava/io/File;
    if-eqz v5, :cond_0

    .line 1369
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 1370
    .local v2, "f":Ljava/io/File;
    add-int/lit8 v6, p2, 0x1

    invoke-direct {p0, v2, v6, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1375
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "listFiles":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1376
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1380
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private removeAndroidCertificate(Ljava/lang/String;)V
    .locals 6
    .param p1, "certAlias"    # Ljava/lang/String;

    .prologue
    .line 984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 986
    .local v1, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->deleteCertificateEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 992
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    return-void

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAndroidCertificate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 989
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 990
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAndroidCertificate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeDuplicatedCertificates(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 770
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 771
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/CertificateInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 773
    add-int/lit8 v1, v1, -0x1

    .line 770
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 769
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "certName"    # Ljava/lang/String;
    .param p2, "certType"    # Ljava/lang/String;
    .param p3, "storeType"    # I

    .prologue
    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 968
    .local v1, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 969
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    .line 972
    const-string v3, "USRCERT_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 975
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    move-result v3

    and-int/2addr v0, v3

    .line 979
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    return v0
.end method

.method private saveDeviceBootMode(Z)Z
    .locals 7
    .param p1, "isSafe"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1698
    const/4 v1, 0x1

    .line 1701
    .local v1, "result":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "deviceBootMode"

    if-eqz p1, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1702
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device safe mode saved in generic table : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    :goto_2
    return v1

    :cond_0
    move v4, v3

    .line 1701
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1702
    goto :goto_1

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private validateKeystoreParam(II)Z
    .locals 2
    .param p1, "keystore"    # I
    .param p2, "all"    # I

    .prologue
    .line 1864
    const/4 v0, 0x1

    .line 1865
    .local v0, "ret":Z
    and-int v1, p1, p2

    if-nez v1, :cond_1

    .line 1867
    const/4 v0, 0x0

    .line 1872
    :cond_0
    :goto_0
    return v0

    .line 1868
    :cond_1
    or-int v1, p1, p2

    if-eq v1, p2, :cond_0

    .line 1870
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeCredentialStoragePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "oldpassword"    # Ljava/lang/String;
    .param p3, "newpassword"    # Ljava/lang/String;

    .prologue
    .line 1052
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method public clearInstalledCertificates(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1187
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1188
    const/4 v1, 0x0

    .line 1189
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1191
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1192
    new-instance v6, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    .line 1193
    .local v2, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const-wide/16 v6, 0xbb8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1194
    .local v3, "taskRet":Z
    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v6

    sget-object v7, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1195
    move v1, v3

    .line 1204
    .end local v2    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    .end local v3    # "taskRet":Z
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    return v1

    .line 1198
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearInstalledCertificates: EX"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteCertificateFromKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certInfo"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    const/4 v9, 0x2

    .line 1788
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1789
    const/4 v3, 0x1

    .line 1790
    .local v3, "ret":Z
    const/4 v6, 0x3

    invoke-direct {p0, p3, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(II)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p2, :cond_2

    .line 1791
    :cond_0
    const/4 v3, 0x0

    .line 1821
    .end local v3    # "ret":Z
    :cond_1
    :goto_0
    return v3

    .line 1793
    .restart local v3    # "ret":Z
    :cond_2
    invoke-virtual {p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    .line 1794
    .local v2, "removeCert":Ljava/security/cert/Certificate;
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_3

    .line 1795
    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isCa(Ljava/security/cert/Certificate;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1796
    and-int/lit8 v3, v3, 0x0

    .line 1814
    .end local v3    # "ret":Z
    :cond_3
    :goto_1
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_1

    .line 1815
    const-string v6, "CACERT_"

    invoke-direct {p0, v2, v6, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;I)Z

    move-result v6

    and-int/2addr v3, v6

    .line 1817
    .restart local v3    # "ret":Z
    const-string v6, "USRCERT_"

    invoke-direct {p0, v2, v6, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystore(Ljava/security/cert/Certificate;Ljava/lang/String;I)Z

    move-result v6

    and-int/2addr v3, v6

    goto :goto_0

    .line 1798
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1800
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v6, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "certificateAlias":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->deleteCertificateEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1803
    and-int/lit8 v3, v3, 0x1

    .line 1811
    .end local v0    # "certificateAlias":Ljava/lang/String;
    .local v3, "ret":I
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1804
    .local v3, "ret":Z
    :catch_0
    move-exception v1

    .line 1805
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteCertificateFromKeystore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    and-int/lit8 v3, v3, 0x0

    .line 1810
    .local v3, "ret":I
    goto :goto_2

    .line 1807
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .local v3, "ret":Z
    :catch_1
    move-exception v1

    .line 1808
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteCertificateFromKeystore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    and-int/lit8 v3, v3, 0x0

    .local v3, "ret":I
    goto :goto_2
.end method

.method public deleteCertificateFromUserKeystore(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;I)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certInfo"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "keystore"    # I

    .prologue
    const/4 v4, 0x4

    .line 1943
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1944
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1946
    .local v2, "userId":I
    const/4 v1, 0x1

    .line 1947
    .local v1, "ret":Z
    invoke-direct {p0, p3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_2

    .line 1948
    :cond_0
    const/4 v1, 0x0

    .line 1958
    :cond_1
    :goto_0
    return v1

    .line 1950
    :cond_2
    invoke-virtual {p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    .line 1951
    .local v0, "removeCert":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_1

    .line 1952
    const-string v3, "CACERT_"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z

    move-result v3

    and-int/2addr v1, v3

    .line 1954
    const-string v3, "USRCERT_"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->deleteCertificateFromNativeKeystoreAsUser(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_0
.end method

.method public enableRebootBanner(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z

    .prologue
    .line 1544
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableRebootBannerWithText(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEnrolled"    # Z
    .param p3, "bannerText"    # Ljava/lang/String;

    .prologue
    .line 1549
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public formatInternalStorage(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "includeSystemDirectory"    # Z
    .param p3, "includeDataDirectory"    # Z

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 454
    const/4 v0, 0x1

    return v0
.end method

.method public formatSelective(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fileList"    # [Ljava/lang/String;
    .param p3, "filters"    # [Ljava/lang/String;

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public formatStorageCard(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isExternal"    # Z

    .prologue
    const/4 v4, 0x1

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 467
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 471
    .local v1, "ident":J
    if-ne p2, v4, :cond_0

    .line 472
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    iget-boolean v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    return v3

    .line 474
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 475
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SecurityPolicy"

    const-string v4, "formatStorageCard fail"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCertificatesFromKeystore(Landroid/app/enterprise/ContextInfo;II)Ljava/util/List;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "keystore"    # I
    .param p3, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 1750
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1754
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1755
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1775
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    if-lt v1, v2, :cond_3

    .line 1776
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    sget v1, Landroid/app/enterprise/SecurityPolicy;->MAXIMUM_CERTIFICATE_NUMBERS:I

    invoke-interface {v0, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 1784
    :goto_1
    return-object v0

    .line 1758
    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 1760
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1761
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificates(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1763
    :cond_2
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 1764
    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1766
    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1781
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getCertificatesFromUserKeystore(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "keystore"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1926
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1927
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1929
    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1931
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_0

    .line 1932
    const-string v2, "USRCERT_"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1934
    const-string v2, "CACERT_"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1938
    :cond_0
    return-object v0
.end method

.method public getCredentialStorageStatus(Landroid/app/enterprise/ContextInfo;)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1069
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1070
    .local v5, "userId":I
    const/4 v0, 0x4

    .line 1071
    .local v0, "credentialStorageStatus":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1073
    .local v3, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v5}, Landroid/security/KeyStore;->stateAsUser(I)Landroid/security/KeyStore$State;

    move-result-object v2

    .line 1074
    .local v2, "state":Landroid/security/KeyStore$State;
    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1075
    const/4 v0, 0x1

    .line 1089
    .end local v2    # "state":Landroid/security/KeyStore$State;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1091
    return v0

    .line 1077
    .restart local v2    # "state":Landroid/security/KeyStore$State;
    :cond_0
    :try_start_1
    sget-object v6, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1078
    const/4 v0, 0x2

    goto :goto_0

    .line 1080
    :cond_1
    sget-object v6, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v2, v6}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 1081
    const/4 v0, 0x3

    goto :goto_0

    .line 1083
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1085
    .end local v2    # "state":Landroid/security/KeyStore$State;
    :catch_0
    move-exception v1

    .line 1086
    .local v1, "e":Ljava/lang/AssertionError;
    :try_start_2
    const-string v6, "SecurityPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystore State Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1087
    const/4 v0, 0x4

    goto :goto_0

    .line 1089
    .end local v1    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getDeviceLastAccessDate(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1690
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1691
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "deviceLastAccessDate"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileNamesOnDevice(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1255
    if-eqz p2, :cond_2

    .line 1256
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1257
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1259
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1269
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    .line 1262
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1266
    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1267
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileNamesWithAttributes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1276
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1278
    if-eqz p2, :cond_2

    .line 1279
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1280
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1281
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1282
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    .line 1285
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v0, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "/system/bin/ls"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    const-string v2, "-l"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    const-string v2, "-a"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1289
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1291
    const-string v2, "@"

    const-string v3, "\\@"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1292
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->executeCommand(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileNamesWithAttributesRecursive(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1304
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1307
    if-eqz p3, :cond_1

    .line 1308
    const-string v11, "/"

    invoke-virtual {p3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 1309
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v8, "tempfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1311
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1316
    .end local v8    # "tempfile":Ljava/io/File;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1354
    :cond_2
    :goto_0
    return v9

    .line 1320
    :cond_3
    if-eqz p2, :cond_4

    .line 1321
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1328
    .end local v3    # "f":Ljava/io/File;
    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1329
    .local v7, "root":Ljava/io/File;
    const/4 v5, 0x0

    .line 1330
    .local v5, "outFile":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 1332
    .local v0, "allFiles":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .local v1, "allFiles":Ljava/io/FileWriter;
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1335
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .local v6, "outFile":Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1336
    if-eqz v7, :cond_5

    .line 1337
    const/4 v11, 0x0

    invoke-direct {p0, v7, v11, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->listRecursively(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1344
    :cond_5
    if-eqz v6, :cond_6

    .line 1345
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 1348
    :cond_6
    if-eqz v1, :cond_7

    .line 1349
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_1
    move v9, v10

    .line 1354
    goto :goto_0

    .line 1340
    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    :catch_0
    move-exception v4

    .line 1344
    .local v4, "ioex":Ljava/io/IOException;
    :goto_2
    if-eqz v5, :cond_8

    .line 1345
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1348
    :cond_8
    if-eqz v0, :cond_2

    .line 1349
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1350
    :catch_1
    move-exception v2

    .line 1351
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v5, :cond_9

    .line 1345
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1348
    :cond_9
    if-eqz v0, :cond_a

    .line 1349
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1344
    :cond_a
    :goto_4
    throw v9

    .line 1350
    :catch_2
    move-exception v2

    .line 1351
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1350
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catch_3
    move-exception v2

    .line 1351
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v11, "Error closing cursor"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1344
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    goto :goto_3

    .line 1340
    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "allFiles":Ljava/io/FileWriter;
    .end local v5    # "outFile":Ljava/io/PrintWriter;
    .restart local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/PrintWriter;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "allFiles":Ljava/io/FileWriter;
    .restart local v0    # "allFiles":Ljava/io/FileWriter;
    move-object v5, v6

    .end local v6    # "outFile":Ljava/io/PrintWriter;
    .restart local v5    # "outFile":Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method public getInstalledCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certificateName"    # Ljava/lang/String;

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 894
    const-string v1, "USRCERT_"

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .line 896
    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    if-nez v1, :cond_0

    .line 897
    const-string v1, "CACERT_"

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v0

    .line 899
    :cond_0
    return-object v0
.end method

.method public getInstalledCertificateNames(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x4

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 925
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificateNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 926
    return-object v0
.end method

.method public getInstalledCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 757
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 760
    const-string v1, "USRCERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 761
    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 762
    const-string v1, "CACERT_"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificates(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 763
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getAndroidInstalledCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 764
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeDuplicatedCertificates(Ljava/util/List;)V

    .line 765
    return-object v0
.end method

.method public getRebootBannerText(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1599
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1600
    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SECURITY"

    const-string v6, "bannerText"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 1603
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 1604
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1605
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1610
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 686
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 689
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 691
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 696
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return v4

    .line 692
    :catch_0
    move-exception v1

    .line 693
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRequireDeviceEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    const/4 v4, 0x0

    goto :goto_0

    .line 696
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 720
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 723
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 725
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 730
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return v4

    .line 726
    :catch_0
    move-exception v1

    .line 727
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRequireStorageCardEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    const/4 v4, 0x0

    goto :goto_0

    .line 730
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getSystemCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 738
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 739
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v1

    .line 742
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    .local v0, "alias":Ljava/lang/String;
    new-instance v3, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v3}, Landroid/app/enterprise/CertificateInfo;-><init>()V

    .line 744
    .local v3, "certInfo":Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v6, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 745
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 746
    invoke-virtual {v3, v2}, Landroid/app/enterprise/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 747
    invoke-virtual {v3, v7}, Landroid/app/enterprise/CertificateInfo;->setKeystore(I)V

    .line 748
    invoke-virtual {v3, v7}, Landroid/app/enterprise/CertificateInfo;->setSystemPreloaded(Z)V

    .line 749
    invoke-virtual {v3, v7}, Landroid/app/enterprise/CertificateInfo;->setEnabled(Z)V

    .line 750
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 753
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_1
    return-object v5
.end method

.method public installCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;

    .prologue
    .line 1158
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1159
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1160
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1161
    if-eqz p5, :cond_0

    .line 1162
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 1164
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    array-length v5, p3

    if-eqz v5, :cond_1

    if-nez p4, :cond_2

    .line 1165
    :cond_1
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : Invalid parameter(s)"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const/4 v1, 0x0

    .line 1182
    :goto_0
    return v1

    .line 1168
    :cond_2
    const/4 v1, 0x0

    .line 1169
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1171
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1172
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v4}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>()V

    .line 1173
    .local v4, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1181
    .end local v4    # "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1175
    :cond_3
    :try_start_1
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate : KS not UNLOCKED"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1176
    const/4 v1, 0x0

    goto :goto_1

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SecurityPolicy"

    const-string v6, "installCertificate EX: "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public installCertificateToKeystore(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    .line 1725
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1726
    const/4 v8, 0x0

    .line 1727
    .local v8, "ret":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1728
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1729
    if-eqz p5, :cond_0

    .line 1730
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 1732
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1733
    .local v9, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1734
    const-string v2, "SecurityPolicy"

    const-string v3, "installCertificateToKeystore: Keystore is not unlocked"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1744
    return v8

    .line 1735
    :cond_1
    const/4 v2, 0x3

    move/from16 v0, p6

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(II)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v2, p3

    if-eqz v2, :cond_2

    if-nez p4, :cond_3

    .line 1737
    :cond_2
    const-string v2, "SecurityPolicy"

    const-string v3, "installCertificateToKeystore: Invalid parameter(s)"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1739
    :cond_3
    new-instance v1, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>()V

    .line 1740
    .local v1, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z

    move-result v8

    goto :goto_0
.end method

.method public installCertificateToUserKeystore(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I

    .prologue
    .line 1899
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1900
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1902
    .local v7, "userId":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1903
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1905
    if-eqz p5, :cond_0

    .line 1906
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 1909
    :cond_0
    const/4 v8, 0x0

    .line 1910
    .local v8, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1911
    .local v9, "token":J
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1912
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installCertificateToUserKeystore: Keystore is not unlocked for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1922
    return v8

    .line 1913
    :cond_1
    const/4 v2, 0x4

    move/from16 v0, p6

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(II)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v2, p3

    if-eqz v2, :cond_2

    if-nez p4, :cond_3

    .line 1916
    :cond_2
    const-string v2, "SecurityPolicy"

    const-string v3, "installCertificateToUserKeystore: Invalid parameter(s)"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1918
    :cond_3
    new-instance v1, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>()V

    .local v1, "util":Lcom/android/server/enterprise/utils/CertificateUtil;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 1919
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z

    move-result v8

    goto :goto_0
.end method

.method public installCertificateWithType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[B)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 384
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 385
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v4, p3

    if-lez v4, :cond_0

    .line 386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 388
    .local v2, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 390
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 391
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 398
    .end local v2    # "token":J
    :cond_0
    return-void

    .line 392
    .restart local v2    # "token":J
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificateWithType() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installCertificatesFromSdCard(Landroid/app/enterprise/ContextInfo;)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 406
    .local v2, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::installCertificatesFromSdCard() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public installKeyPair(Ljava/security/KeyPair;)V
    .locals 0
    .param p1, "pair"    # Ljava/security/KeyPair;

    .prologue
    .line 376
    return-void
.end method

.method public isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1650
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1651
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "dodBannerVisible"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1653
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1654
    const/4 v2, 0x1

    .line 1656
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isExternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 657
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v1

    .line 658
    .local v1, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isStorageCardEncrypted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 662
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    .end local v1    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :goto_0
    return v4

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    const-string v5, "is External Storage Encrypted ?"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    const/4 v4, 0x0

    goto :goto_0

    .line 662
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 631
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 635
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 637
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    .line 641
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 644
    return v4

    .line 638
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "SecurityPolicy"

    const-string v6, "is Internal Storage Encrypted ?"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 641
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isRebootBannerEnabled(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 1585
    const/4 v1, 0x0

    .line 1586
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SECURITY"

    const-string v6, "deviceEnrolled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1589
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1590
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1591
    move v1, v2

    .line 1595
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public isRebootBannerEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1580
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1581
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v1

    return v1
.end method

.method public lockoutDevice(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1488
    .local p4, "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1491
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1495
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1496
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1498
    .local v5, "token":J
    :try_start_0
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 1499
    .local v4, "sha1":[B
    const/4 v8, 0x2

    invoke-static {v4, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1500
    .local v0, "base64":Ljava/lang/String;
    const-string v8, "lock_pcw_password"

    invoke-static {v1, v8, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1502
    if-eqz p3, :cond_2

    .line 1503
    const-string v8, "lock_pcw_Message"

    invoke-static {v1, v8, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1505
    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1506
    const-string v9, "lock_pcw_phone"

    const/4 v8, 0x0

    invoke-interface {p4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1509
    :cond_3
    const-string v8, "lock_pcw_enabled"

    const-string v9, "20"

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1512
    iget-object v8, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1513
    .local v3, "manager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1515
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .line 1517
    .local v7, "winMgr":Landroid/view/IWindowManager;
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    .end local v0    # "base64":Ljava/lang/String;
    .end local v3    # "manager":Landroid/os/PowerManager;
    .end local v4    # "sha1":[B
    .end local v7    # "winMgr":Landroid/view/IWindowManager;
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1518
    :catch_0
    move-exception v2

    .line 1519
    .local v2, "ex":Ljava/lang/Exception;
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception is thrown when trying to lock out the device"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1965
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1970
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1978
    return-void
.end method

.method public powerOffDevice(Landroid/app/enterprise/ContextInfo;)V
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1214
    .local v0, "token":J
    const-string v2, "SecurityPolicy"

    const-string v3, "powerOffDevice():EDM power off device start..."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1216
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;)V

    .line 1217
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1219
    return-void
.end method

.method public readFile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pathOrig"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v8, 0x0

    .line 1440
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1442
    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isUserRestrictedFolder(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return v8

    .line 1445
    :cond_1
    const/4 v2, 0x0

    .line 1446
    .local v2, "fileStreamInp":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1449
    .local v4, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1451
    .local v7, "mFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .local v3, "fileStreamInp":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1454
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .local v5, "fileStreamOut":Ljava/io/OutputStream;
    const/16 v9, 0x800

    :try_start_2
    new-array v0, v9, [B

    .line 1456
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "length":I
    if-lez v6, :cond_3

    .line 1457
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 1462
    .end local v0    # "buffer":[B
    .end local v6    # "length":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .line 1463
    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v7    # "mFile":Ljava/io/File;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    const-string v9, "SecurityPolicy"

    const-string v10, "readFile IOException "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1467
    if-eqz v2, :cond_2

    .line 1468
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1473
    :cond_2
    :goto_3
    if-eqz v4, :cond_0

    .line 1474
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1475
    :catch_1
    move-exception v1

    .line 1476
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    :goto_4
    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v6    # "length":I
    .restart local v7    # "mFile":Ljava/io/File;
    :cond_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1460
    const/4 v8, 0x1

    .line 1467
    if-eqz v3, :cond_4

    .line 1468
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1473
    :cond_4
    :goto_5
    if-eqz v5, :cond_0

    .line 1474
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 1475
    :catch_2
    move-exception v1

    .line 1476
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    goto :goto_4

    .line 1466
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v6    # "length":I
    .end local v7    # "mFile":Ljava/io/File;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_0
    move-exception v8

    .line 1467
    :goto_6
    if-eqz v2, :cond_5

    .line 1468
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1473
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 1474
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1466
    :cond_6
    :goto_8
    throw v8

    .line 1469
    :catch_3
    move-exception v1

    .line 1470
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1475
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 1476
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1469
    :catch_5
    move-exception v1

    .line 1470
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1469
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v6    # "length":I
    .restart local v7    # "mFile":Ljava/io/File;
    :catch_6
    move-exception v1

    .line 1470
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SecurityPolicy"

    const-string v10, "Error closing cursor"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1466
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v6    # "length":I
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_6

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .end local v4    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v5    # "fileStreamOut":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v4    # "fileStreamOut":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_6

    .line 1462
    .end local v7    # "mFile":Ljava/io/File;
    :catch_7
    move-exception v1

    goto :goto_2

    .end local v2    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v7    # "mFile":Ljava/io/File;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileStreamInp":Ljava/io/InputStream;
    .restart local v2    # "fileStreamInp":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public removeAccountsByType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1222
    if-nez p2, :cond_0

    .line 1223
    const/4 v8, 0x0

    .line 1247
    :goto_0
    return v8

    .line 1225
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1226
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1228
    .local v11, "userId":I
    const/4 v8, 0x1

    .line 1229
    .local v8, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1231
    .local v9, "token":J
    :try_start_0
    iget-object v12, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1232
    .local v2, "am":Landroid/accounts/AccountManager;
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v11}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1233
    .local v1, "accs":[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    array-length v12, v1

    if-lez v12, :cond_1

    .line 1234
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v6, v3, v5

    .line 1235
    .local v6, "item":Landroid/accounts/Account;
    const-string v12, "SecurityPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removeAccountsByType : account = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v6, v12, v13}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1234
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1240
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v5    # "i$":I
    .end local v6    # "item":Landroid/accounts/Account;
    .end local v7    # "len$":I
    :cond_1
    const-string v12, "SecurityPolicy"

    const-string v13, "removeAccountsByType : return null"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    .end local v1    # "accs":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    :cond_2
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1242
    :catch_0
    move-exception v4

    .line 1243
    .local v4, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 1244
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public removeCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 997
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 998
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/CertificateInfo;

    move-result-object v1

    .line 999
    .local v1, "cert":Landroid/app/enterprise/CertificateInfo;
    const/4 v3, 0x4

    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 1000
    .local v2, "result":Z
    const/4 v3, 0x2

    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeNativeCertificate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1001
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1002
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->removeAndroidCertificate(Ljava/lang/String;)V

    .line 1005
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public removeDeviceLockout(Landroid/app/enterprise/ContextInfo;)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 1529
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1530
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1531
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1532
    .local v1, "token":J
    const-string v3, "lock_pcw_password"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1533
    const-string v3, "lock_pcw_Message"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1534
    const-string v3, "lock_pcw_phone"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1535
    const-string v3, "lock_pcw_enabled"

    const-string v4, "0"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1536
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1537
    return-void
.end method

.method public resetCredentialStorage(Landroid/app/enterprise/ContextInfo;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1098
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1099
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1100
    .local v6, "userId":I
    const/4 v1, 0x0

    .line 1101
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1108
    .local v4, "token":J
    if-eqz v6, :cond_1

    .line 1109
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v6}, Landroid/security/KeyStore;->resetAsUser(I)Z

    move-result v1

    .line 1123
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1124
    return v1

    .line 1112
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7}, Landroid/security/KeyStore;->reset()Z

    move-result v1

    .line 1114
    new-instance v7, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    .line 1115
    .local v2, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const-wide/16 v7, 0xbb8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1116
    .local v3, "taskRet":Z
    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v7

    sget-object v8, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v7, v8}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 1117
    and-int/2addr v1, v3

    goto :goto_0

    .line 1119
    .end local v2    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    .end local v3    # "taskRet":Z
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "SecurityPolicy"

    const-string v8, "resetCredentialStorage EX: "

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCredentialStoragePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1035
    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceLastAccessDate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 1666
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1667
    const/4 v1, 0x0

    .line 1682
    :goto_0
    return v1

    .line 1670
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1671
    .local v2, "userId":I
    const/4 v1, 0x1

    .line 1675
    .local v1, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "deviceLastAccessDate"

    invoke-virtual {v3, v4, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDodBannerVisibleStatus(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isVisible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1619
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->isBannerApp(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    .line 1634
    :goto_0
    return v1

    .line 1622
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1623
    .local v2, "userId":I
    const/4 v1, 0x1

    .line 1627
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dodBannerVisible"

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Landroid/app/enterprise/ContextInfo;Z)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 594
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 596
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    move-result-object v1

    .line 597
    .local v1, "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    if-nez p2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getRequireStorageCardEncryption()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    const-string v4, "SecurityPolicy"

    const-string v5, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    .end local v1    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    return-void

    .line 602
    .restart local v1    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 603
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->enableStorageCardEncryptionPolicy()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 618
    .end local v1    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "SecurityPolicy"

    const-string v5, "is External Storage Encrypted?"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 605
    .restart local v1    # "ema":Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->disableStorageCardEncryptionPolicy()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setInternalStorageEncryption(Landroid/app/enterprise/ContextInfo;Z)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "isEncrypt"    # Z

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 558
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 560
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 561
    const-string v5, "SecurityPolicy"

    const-string v6, "SD Encryption enabled by some other admin cannot decrypt"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    return-void

    .line 564
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 565
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Not encrypted"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 579
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SecurityPolicy"

    const-string v6, "is Internal Storage Encrypted?"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 582
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 568
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_2
    if-eqz p2, :cond_3

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 569
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : device is already encrypted"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_3
    const-string v5, "SecurityPolicy"

    const-string v6, "setInternalStorageEncryption : Launching Encrption activity"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    if-eqz p2, :cond_0

    .line 575
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setRequireDeviceEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 673
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 675
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 682
    return-void

    .line 676
    :catch_0
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRequireDeviceEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 680
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setRequireStorageCardEncryption(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 707
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 709
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    return-void

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SecurityPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRequireStorageCardEncryption Ex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 714
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public startBannerService(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 332
    sget-object v2, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v0, "intentBanner":Landroid/content/Intent;
    const-string v2, "com.samsung.android.mdm"

    const-string v3, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 337
    sget-object v2, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    .line 341
    .local v1, "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    if-eqz v1, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/PersonaManager;->unregisterObserver(Landroid/content/pm/IPersonaObserver;)V

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v0    # "intentBanner":Landroid/content/Intent;
    .end local v1    # "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    :cond_1
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1974
    return-void
.end method

.method public unlockCredentialStorage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 950
    const/4 v2, 0x0

    .line 951
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 953
    .local v3, "token":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 954
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 955
    const/high16 v5, 0x800000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 956
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    const/4 v2, 0x1

    .line 961
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    return v2

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SecurityPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockCredentialStorage EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
