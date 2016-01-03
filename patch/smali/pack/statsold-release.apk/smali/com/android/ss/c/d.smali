.class public final Lcom/android/ss/c/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP POST: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP Request Body: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {v1}, Lcom/android/ss/c/d;->a(Lorg/apache/http/client/HttpClient;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "application/xml"

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "HTTP Response: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP POST: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {v1}, Lcom/android/ss/c/d;->a(Lorg/apache/http/client/HttpClient;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTTP Request Body: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "HTTP Response: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/client/HttpClient;)V
    .locals 5

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v1, Lcom/android/ss/c/e;

    invoke-direct {v1}, Lcom/android/ss/c/e;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v1, Lcom/android/ss/a;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/ss/a;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v0, Lcom/android/ss/a;->a:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lcom/android/ss/a;->a(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
