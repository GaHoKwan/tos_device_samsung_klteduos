.class public Lcom/sec/tima_keychain/TimaKeychain;
.super Ljava/lang/Object;
.source "TimaKeychain.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TIMA_KeyChain"

.field private static final TIMA_SERVICE:Ljava/lang/String; = "tima"

.field private static mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAliasListFromTimaKeystore()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "aliases_enum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const-string v7, "TIMA_KeyChain"

    const-string v8, "getCertificateAdapterFromTimaKeystore"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_0
    const-string v7, "TimaKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 193
    .local v6, "key_store":Ljava/security/KeyStore;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 194
    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 204
    .end local v6    # "key_store":Ljava/security/KeyStore;
    :goto_0
    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "aliasList_ccm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v1

    .line 195
    .end local v1    # "aliasList_ccm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 196
    .local v4, "e":Ljava/security/KeyStoreException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "KeyStore Exception"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 197
    .end local v4    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v5

    .line 198
    .local v5, "ioe":Ljava/io/IOException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "IOException"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 200
    .local v0, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "NoSuchAlgorithmException"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    .end local v0    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v3

    .line 202
    .local v3, "ce":Ljava/security/cert/CertificateException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "CertificateException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 204
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1
.end method

.method public static getAliasListFromTimaKeystore(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    const/4 v3, 0x0

    .line 214
    .local v3, "aliases_enum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const-string v8, "TIMA_KeyChain"

    const-string v9, "getCertificateAdapterFromTimaKeystore"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :try_start_0
    const-string v8, "TimaKeyStore"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 218
    .local v7, "key_store":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 219
    invoke-virtual {v7}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 229
    .end local v7    # "key_store":Ljava/security/KeyStore;
    :goto_0
    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "aliasList_ccm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-static {p0, v1}, Lcom/sec/tima_keychain/TimaKeychain;->getValidAliasList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 236
    .local v2, "aliasList_valid_ccm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v2

    .line 220
    .end local v1    # "aliasList_ccm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "aliasList_valid_ccm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 221
    .local v5, "e":Ljava/security/KeyStoreException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "KeyStore Exception"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    .end local v5    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v6

    .line 223
    .local v6, "ioe":Ljava/io/IOException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "IOException"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 225
    .local v0, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "NoSuchAlgorithmException"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 226
    .end local v0    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v4

    .line 227
    .local v4, "ce":Ljava/security/cert/CertificateException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "CertificateException"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 229
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1
.end method

.method public static getCertificateChainFromTimaKeystore(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 10
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, "certchain":[Ljava/security/cert/Certificate;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "getCertificateChainFromTimaKeystore called"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    const-string v8, "TimaKeyStore"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 134
    .local v7, "key_store":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 135
    invoke-virtual {v7, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 145
    .end local v7    # "key_store":Ljava/security/KeyStore;
    :goto_0
    const/4 v2, 0x0

    .line 146
    .local v2, "cert_chain":[Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_0

    .line 147
    array-length v8, v3

    new-array v2, v8, [Ljava/security/cert/X509Certificate;

    .line 148
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v8, v3

    if-ge v5, v8, :cond_0

    .line 149
    aget-object v8, v3, v5

    check-cast v8, Ljava/security/cert/X509Certificate;

    aput-object v8, v2, v5

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    .end local v2    # "cert_chain":[Ljava/security/cert/X509Certificate;
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 137
    .local v4, "e":Ljava/security/KeyStoreException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "KeyStoreException"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
    .end local v4    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v6

    .line 139
    .local v6, "ioe":Ljava/io/IOException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "IOException"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 141
    .local v0, "ae":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "NoSuchAlgorithmException"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v0    # "ae":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v1

    .line 143
    .local v1, "ce":Ljava/security/cert/CertificateException;
    const-string v8, "TIMA_KeyChain"

    const-string v9, "CertificateException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 151
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .restart local v2    # "cert_chain":[Ljava/security/cert/X509Certificate;
    :cond_0
    return-object v2
.end method

.method public static getPrivateKeyFromOpenSSL(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v2, "TIMA_KeyChain"

    const-string v3, "getPrivateKeyFromOpenSSL called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    .line 157
    .local v0, "opensslhelper":Lcom/sec/smartcard/openssl/OpenSSLHelper;
    invoke-virtual {v0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->register_engine()Z

    move-result v1

    .line 158
    .local v1, "ret":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 159
    const-string v2, "TIMA_KeyChain"

    const-string v3, "Register engine success"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0, p0}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 163
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getValidAliasList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "package_nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 168
    .local p1, "alias_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 169
    .local v2, "i":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "aliasList_valid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v1

    .line 172
    .local v1, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v1, :cond_1

    .line 173
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 175
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, p0, v5}, Landroid/sec/enterprise/ClientCertificateManager;->getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 177
    .local v3, "ret":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 178
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "ret":J
    :cond_1
    return-object v0
.end method

.method public static isTimaKeystoreAndCCMEnabledForCaller()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "ccm_enabled":Z
    const/4 v4, 0x0

    .line 65
    .local v4, "tima_keystore_enabled":Z
    const-string v7, "TIMA_KeyChain"

    const-string v8, "isTimaKeystoreAndCCMEnabled called"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :try_start_0
    const-string/jumbo v7, "tima"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v7

    sput-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    .line 69
    sget-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v7, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v5

    .line 71
    :cond_1
    sget-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 72
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 73
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForCaller()Z

    move-result v1

    .line 77
    :cond_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v3

    .line 78
    .local v3, "tima_keystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v3, :cond_3

    .line 79
    invoke-virtual {v3}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 86
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "tima_keystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_3
    :goto_1
    if-ne v1, v6, :cond_0

    if-ne v4, v6, :cond_0

    move v5, v6

    .line 87
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "re":Landroid/os/RemoteException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static isTimaKeystoreAndCCMEnabledForPackage(Ljava/lang/String;)Z
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "ccm_enabled":Z
    const/4 v4, 0x0

    .line 96
    .local v4, "tima_keystore_enabled":Z
    const-string v7, "TIMA_KeyChain"

    const-string v8, "isTimaKeystoreAndCCMEnabled"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    const-string/jumbo v7, "tima"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v7

    sput-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    .line 102
    sget-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v7, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v5

    .line 104
    :cond_1
    sget-object v7, Lcom/sec/tima_keychain/TimaKeychain;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 106
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    .line 107
    .local v0, "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v1

    .line 111
    :cond_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;

    move-result-object v3

    .line 112
    .local v3, "tima_keystore":Landroid/sec/enterprise/TimaKeystore;
    if-eqz v3, :cond_3

    .line 113
    invoke-virtual {v3, p0}, Landroid/sec/enterprise/TimaKeystore;->isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 120
    .end local v0    # "ccm":Landroid/sec/enterprise/ClientCertificateManager;
    .end local v3    # "tima_keystore":Landroid/sec/enterprise/TimaKeystore;
    :cond_3
    :goto_1
    const-string v7, "TIMA_KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is ccm enabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v7, "TIMA_KeyChain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is tima keystore enabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-ne v1, v6, :cond_0

    if-ne v4, v6, :cond_0

    move v5, v6

    .line 123
    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "re":Landroid/os/RemoteException;
    const-string v7, "TIMA_KeyChain"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
