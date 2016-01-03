.class public final Lcom/android/ss/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field public static final a:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final c:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static final d:Lcom/android/ss/a;


# instance fields
.field private final e:Ljavax/net/ssl/SSLContext;

.field private final f:Ljavax/net/ssl/SSLSocketFactory;

.field private final g:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private h:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lcom/android/ss/a;->a:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcom/android/ss/a;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcom/android/ss/a;->c:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    new-instance v0, Lcom/android/ss/a;

    invoke-direct {v0}, Lcom/android/ss/a;-><init>()V

    sput-object v0, Lcom/android/ss/a;->d:Lcom/android/ss/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/ss/a;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/android/ss/a;->h:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v1, p0, Lcom/android/ss/a;->e:Ljavax/net/ssl/SSLContext;

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ss/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lcom/android/ss/a;->g:Lorg/apache/http/conn/scheme/HostNameResolver;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/ss/a;->b:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/android/ss/a;->h:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v1, p0, Lcom/android/ss/a;->e:Ljavax/net/ssl/SSLContext;

    iput-object p1, p0, Lcom/android/ss/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lcom/android/ss/a;->g:Lorg/apache/http/conn/scheme/HostNameResolver;

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hostname verifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/ss/a;->h:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-void
.end method

.method public final connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 5

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p6, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_5

    move-object v0, p1

    :goto_0
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    if-nez p4, :cond_2

    if-lez p5, :cond_4

    :cond_2
    if-gez p5, :cond_3

    const/4 p5, 0x0

    :cond_3
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    :cond_4
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v3

    iget-object v1, p0, Lcom/android/ss/a;->g:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/android/ss/a;->g:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v4, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v4, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/ss/a;->h:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/ss/a;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    throw v1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/android/ss/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2

    iget-object v0, p0, Lcom/android/ss/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p0, Lcom/android/ss/a;->h:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
