.class public Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;
.super Lorg/apache/http/impl/client/secgbaclient/GbaRequest;
.source "NafRequest.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "NafRequest"

.field public static gbaType:Ljava/lang/String;


# instance fields
.field private ccm:Lorg/apache/http/conn/ClientConnectionManager;

.field private gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

.field private nafAuthorizationHeaderVal:Ljava/lang/String;

.field private nafHost:Lorg/apache/http/HttpHost;

.field public nafHttpContext:Lorg/apache/http/protocol/HttpContext;

.field private nafRequest:Lorg/apache/http/HttpRequest;

.field private requestDirector:Lorg/apache/http/client/RequestDirector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;-><init>(Ljava/lang/String;)V

    .line 121
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    .line 123
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    .line 131
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->requestDirector:Lorg/apache/http/client/RequestDirector;

    .line 151
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NafRequest constructor new with synchronisation ===useragent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private addGBASupport()V
    .locals 7

    .prologue
    .line 567
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "User-Agent"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 569
    .local v2, "preDefinedHeader":Lorg/apache/http/Header;
    const/4 v0, 0x0

    .line 571
    .local v0, "headerValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 577
    .local v1, "newHeaderValue":Ljava/lang/String;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Predefined Header :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    if-eqz v2, :cond_1

    .line 583
    new-instance v0, Ljava/lang/String;

    .end local v0    # "headerValue":Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 586
    .restart local v0    # "headerValue":Ljava/lang/String;
    const-string v3, "3gpp-gba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 589
    const-string v3, " 3gpp-gba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    :goto_0
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "User-Agent"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserAgent Header :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void

    .line 595
    :cond_0
    move-object v1, v0

    goto :goto_0

    .line 603
    :cond_1
    new-instance v0, Ljava/lang/String;

    .end local v0    # "headerValue":Ljava/lang/String;
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->userAgentPredefined:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v0    # "headerValue":Ljava/lang/String;
    const-string v3, " 3gpp-gba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentCipherSuite(Lorg/apache/http/client/RequestDirector;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 2
    .param p1, "director"    # Lorg/apache/http/client/RequestDirector;
    .param p2, "reqContext"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 351
    .local v0, "cipherSuite":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getCurrentCipherSuiteFromRequestDirector(Lorg/apache/http/client/RequestDirector;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 381
    :goto_0
    if-nez v0, :cond_0

    .line 385
    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getCurrentCipherSuiteFromRequestContext(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_0
    return-object v0

    .line 353
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 359
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentCipherSuiteFromRequestContext(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 7
    .param p1, "reqContext"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 401
    const/4 v2, 0x0

    .line 403
    .local v2, "usedCipherSuiteName":Ljava/lang/String;
    const-string v3, "http.connection"

    invoke-interface {p1, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedClientConnection;

    .line 405
    .local v0, "clientConn":Lorg/apache/http/conn/ManagedClientConnection;
    if-eqz v0, :cond_1

    .line 409
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    const-string v5, "Got the connection from the httpContext"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 413
    .local v1, "sslSession":Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_0

    .line 417
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    .line 419
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CipherSuite negotiated is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .end local v1    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_0
    :goto_0
    return-object v2

    .line 431
    :cond_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    const-string v5, "Client coonection is null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentCipherSuiteFromRequestDirector(Lorg/apache/http/client/RequestDirector;)Ljava/lang/String;
    .locals 10
    .param p1, "director"    # Lorg/apache/http/client/RequestDirector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 447
    const/4 v6, 0x0

    .line 449
    .local v6, "usedCipherSuiteName":Ljava/lang/String;
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "Getting CipherSuite from request Director"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    if-eqz p1, :cond_3

    instance-of v7, p1, Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v7, :cond_3

    move-object v0, p1

    .line 457
    check-cast v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    .line 461
    .local v0, "defaultRequestDirector":Lorg/apache/http/impl/client/DefaultRequestDirector;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 467
    .local v4, "requestDirectorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    const-string v7, "managedConn"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 469
    .local v2, "mangdConnField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_2

    .line 473
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 475
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 479
    .local v3, "mangdConnFieldValue":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v7, v3, Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v7, :cond_1

    move-object v1, v3

    .line 485
    check-cast v1, Lorg/apache/http/conn/ManagedClientConnection;

    .line 489
    .local v1, "mangdClientConnection":Lorg/apache/http/conn/ManagedClientConnection;
    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    .line 493
    .local v5, "sslSession":Ljavax/net/ssl/SSLSession;
    if-eqz v5, :cond_0

    .line 497
    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v6

    .line 545
    .end local v0    # "defaultRequestDirector":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local v1    # "mangdClientConnection":Lorg/apache/http/conn/ManagedClientConnection;
    .end local v2    # "mangdConnField":Ljava/lang/reflect/Field;
    .end local v3    # "mangdConnFieldValue":Ljava/lang/Object;
    .end local v4    # "requestDirectorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    .end local v5    # "sslSession":Ljavax/net/ssl/SSLSession;
    :goto_0
    return-object v6

    .line 505
    .restart local v0    # "defaultRequestDirector":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .restart local v1    # "mangdClientConnection":Lorg/apache/http/conn/ManagedClientConnection;
    .restart local v2    # "mangdConnField":Ljava/lang/reflect/Field;
    .restart local v3    # "mangdConnFieldValue":Ljava/lang/Object;
    .restart local v4    # "requestDirectorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    .restart local v5    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_0
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "SSL Session is Null"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    .end local v1    # "mangdClientConnection":Lorg/apache/http/conn/ManagedClientConnection;
    .end local v5    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_1
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "Mangd Connection Field Value is Null"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    .end local v3    # "mangdConnFieldValue":Ljava/lang/Object;
    :cond_2
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "MangdConnField is Null"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    .end local v0    # "defaultRequestDirector":Lorg/apache/http/impl/client/DefaultRequestDirector;
    .end local v2    # "mangdConnField":Ljava/lang/reflect/Field;
    .end local v4    # "requestDirectorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/http/impl/client/DefaultRequestDirector;>;"
    :cond_3
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "Director is null or not instance of DefaultRequestDirector"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static registerClientConnection(Lorg/apache/http/client/HttpClient;)V
    .locals 5
    .param p0, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 829
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest$1;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest$1;-><init>()V

    .line 889
    .local v0, "socketFactory":Lorg/apache/http/conn/scheme/SocketFactory;
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 893
    return-void
.end method


# virtual methods
.method public addAuthorizationHeader()V
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    const-string v1, "Authorization"

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :goto_0
    return-void

    .line 637
    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    const-string v2, "Authorization header is Null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized create(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V
    .locals 3
    .param p1, "Request"    # Lorg/apache/http/HttpRequest;
    .param p2, "host"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    .line 173
    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    .line 183
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->getServiceWrapper()Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    .line 187
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getImei()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->imeiVal:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getImpi()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->impiVal:Ljava/lang/String;

    .line 195
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->impiVal:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->setDomain(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->isGbaUiccSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 198
    const-string v0, "gba-u"

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;

    .line 218
    :goto_0
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->addGBASupport()V

    .line 220
    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->addAuthorizationHeader()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    :try_start_1
    const-string v0, "gba-me"

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_1
    :try_start_2
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    const-string v2, "GBA Service is not running or binding failed"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized createAndSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/RequestDirector;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "execContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "director"    # Lorg/apache/http/client/RequestDirector;
    .param p5, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 899
    monitor-enter p0

    :try_start_0
    const-class v1, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 901
    :try_start_1
    sput-object p5, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->userAgentPredefined:Ljava/lang/String;

    .line 903
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "NafRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NafRequest createAndSendReuest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->userAgentPredefined:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->create(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V

    .line 906
    invoke-virtual {p0, p3, p4}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->sendRequest(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/RequestDirector;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 907
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 899
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentNafreq()Lorg/apache/http/HttpRequest;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method public getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 745
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 747
    .local v5, "trustStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 751
    new-instance v3, Lorg/apache/http/impl/client/secgbaclient/GbaSSLSocketFactory;

    invoke-direct {v3, v5}, Lorg/apache/http/impl/client/secgbaclient/GbaSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 753
    .local v3, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 757
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 759
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 761
    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 763
    const v4, 0xea60

    .line 764
    .local v4, "soTimeout":I
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 765
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    .line 766
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 767
    const v6, 0xea60

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 769
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 771
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 773
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v3, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 777
    new-instance v6, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v6, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    .line 781
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v7, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v6, v7, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_5

    .line 815
    .end local v1    # "params":Lorg/apache/http/params/HttpParams;
    .end local v2    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v4    # "soTimeout":I
    .end local v5    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    return-object v6

    .line 783
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 789
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 791
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 795
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 797
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 801
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v0

    .line 803
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 807
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v0

    .line 809
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 813
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_5
    move-exception v0

    .line 815
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method public declared-synchronized sendRequest(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/RequestDirector;)Lorg/apache/http/HttpResponse;
    .locals 10
    .param p1, "reqContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "director"    # Lorg/apache/http/client/RequestDirector;

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "sendRequest"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v5, 0x0

    .line 237
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 239
    .local v3, "finalResponse":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 241
    .local v1, "cipherSuiteName":Ljava/lang/String;
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 243
    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->requestDirector:Lorg/apache/http/client/RequestDirector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-static {v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printRequest(Lorg/apache/http/HttpRequest;)V

    .line 253
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "secondRequest"

    invoke-interface {v6, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "checkForSecondRequest":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    iget-object v7, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {p2, v6, v7, p1}, Lorg/apache/http/client/RequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 256
    if-eqz v5, :cond_3

    .line 260
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "after response for naf request==="

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x191

    if-eq v6, v7, :cond_0

    .line 266
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "401 not received from NAF, authorization complete"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    .line 333
    .end local v0    # "checkForSecondRequest":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v6

    .line 276
    .restart local v0    # "checkForSecondRequest":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    const-string v6, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 278
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "returning here==secondRequest response="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "secondRequest"

    const-string v8, "false"

    invoke-interface {v6, v7, v8}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v5

    .line 280
    goto :goto_0

    .line 284
    :cond_1
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "response for first naf request==="

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 289
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "Https is used Extracting the Ciphersuite"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p2, p1}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getCurrentCipherSuite(Lorg/apache/http/client/RequestDirector;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object v1

    .line 295
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CipherSuite negotiated is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {v1}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->setCipherSuite(Ljava/lang/String;)V

    .line 303
    :cond_2
    new-instance v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-direct {v4, p0, v6}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;-><init>(Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;Lorg/apache/http/HttpRequest;)V

    .line 305
    .local v4, "nafTransaction":Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;
    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->handleUnauthorizedRes(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    move-object v6, v3

    .line 308
    goto :goto_0

    .line 315
    .end local v4    # "nafTransaction":Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;
    :cond_3
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "Response is NULL"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "checkForSecondRequest":Ljava/lang/String;
    :goto_1
    move-object v6, v5

    .line 333
    goto/16 :goto_0

    .line 319
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Lorg/apache/http/HttpException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 233
    .end local v1    # "cipherSuiteName":Ljava/lang/String;
    .end local v2    # "e":Lorg/apache/http/HttpException;
    .end local v3    # "finalResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 325
    .restart local v1    # "cipherSuiteName":Ljava/lang/String;
    .restart local v3    # "finalResponse":Lorg/apache/http/HttpResponse;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 329
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendSecondNafRequest()Lorg/apache/http/HttpResponse;
    .locals 8

    .prologue
    .line 649
    const/4 v2, 0x0

    .line 651
    .local v2, "response":Lorg/apache/http/HttpResponse;
    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-static {v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printRequest(Lorg/apache/http/HttpRequest;)V

    .line 655
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 657
    .local v1, "nafHttpClient":Lorg/apache/http/client/HttpClient;
    invoke-static {v1}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->registerClientConnection(Lorg/apache/http/client/HttpClient;)V

    .line 659
    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v5, "secondRequest"

    const-string v6, "true"

    invoke-interface {v4, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v4, v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 665
    if-eqz v2, :cond_1

    .line 669
    invoke-static {v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printResponse(Lorg/apache/http/HttpResponse;)V

    .line 671
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 675
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Something went Wrong in Second NAF Request"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v3, v2

    .line 725
    .end local v1    # "nafHttpClient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .local v3, "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v3

    .line 683
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v1    # "nafHttpClient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafRequest"

    const-string v6, "second naf response is 200"

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    .end local v1    # "nafHttpClient":Lorg/apache/http/client/HttpClient;
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    move-object v3, v2

    .line 725
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    goto :goto_1
.end method

.method public setNafAuthorizationHeaderVal(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerVal"    # Ljava/lang/String;

    .prologue
    .line 735
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    .line 737
    return-void
.end method
