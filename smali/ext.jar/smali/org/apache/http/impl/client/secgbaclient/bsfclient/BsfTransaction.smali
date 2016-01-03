.class public Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;
.super Ljava/lang/Object;
.source "BsfTransaction.java"


# static fields
.field private static final BSF_AUTH_MAX_TRIES:I = 0x5

.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "BsfTransaction"


# instance fields
.field private authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

.field private bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

.field private bsfAuthHeaderParser:Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;

.field private bsfHost:Ljava/lang/String;

.field private bsfHttpRequest:Lorg/apache/http/HttpRequest;

.field private bsfTransCount:I

.field private bsfUri:Ljava/lang/String;

.field ccm:Lorg/apache/http/conn/ClientConnectionManager;

.field protected curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

.field private gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private httpPort:I

.field private httpsPort:I

.field private isProxyAuth:Z

.field protected nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

.field public parsedIsimRes:Lorg/apache/http/impl/client/secgbaclient/AkaResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "BsfTransaction"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;)V
    .locals 4
    .param p1, "nafRequestContxt"    # Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeaderParser:Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;

    .line 72
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    .line 74
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->parsedIsimRes:Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    .line 75
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHttpRequest:Lorg/apache/http/HttpRequest;

    .line 76
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    .line 77
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    .line 79
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .line 80
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    .line 81
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    .line 83
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->httpPort:I

    .line 84
    const/16 v0, 0x1bb

    iput v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->httpsPort:I

    .line 86
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfUri:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHost:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->isProxyAuth:Z

    .line 90
    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->createNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 97
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeaderParser:Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;

    .line 98
    iput v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfTransCount:I

    .line 99
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bsf."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHost:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://bsf."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfUri:Ljava/lang/String;

    .line 102
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "BsfTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BsfTransaction bsfUri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "BsfTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BsfTransaction bsfHost is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private handleBsf200Response(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;
    .locals 6
    .param p1, "bsfRes"    # Lorg/apache/http/HttpResponse;
    .param p2, "bsfFinalAuthResData"    # Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    .prologue
    .line 360
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;-><init>()V

    .line 362
    .local v0, "bsfResponseXmlParser":Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;

    invoke-direct {v1}, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;-><init>()V

    .line 365
    .local v1, "headerParser":Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;
    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->authInfoHeaderParse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;

    move-result-object v2

    .line 366
    .local v2, "parsedAuthInfoHeader":Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;
    invoke-virtual {p2, v2}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->setAuthInfoHeader(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;)V

    .line 369
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->parseFinalBsfRes(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V

    .line 372
    const-string v3, "Date"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    const-string v3, "Date"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->setStartTimeForKey(Ljava/lang/String;)V

    .line 376
    :cond_0
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 377
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->httpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v3, :cond_1

    .line 378
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "BsfTransaction"

    const-string v5, "bsftransaction close httpClient"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 382
    :cond_1
    return-object p2
.end method

.method private sendBsfRequest()Lorg/apache/http/HttpResponse;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 205
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "BsfTransaction"

    const-string v3, "sendBsfRequest"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v14, 0x0

    .line 210
    .local v14, "isQop":Z
    new-instance v12, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->getimei()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v1, v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v12, "bsfRequest":Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;
    :try_start_0
    invoke-virtual {v12}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->buildRequest()Lorg/apache/http/HttpRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHttpRequest:Lorg/apache/http/HttpRequest;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v14, 0x1

    .line 223
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    if-nez v1, :cond_8

    .line 225
    const/4 v15, 0x0

    .line 226
    .local v15, "parsedGbaKeyRes":Ljava/lang/String;
    const/16 v16, 0x0

    .line 228
    .local v16, "passwordArr":[C
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->parsedIsimRes:Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->parsedIsimRes:Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;->getRes()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 230
    new-instance v15, Ljava/lang/String;

    .end local v15    # "parsedGbaKeyRes":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->parsedIsimRes:Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;->getRes()[B

    move-result-object v1

    const-string v2, "CP1252"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 231
    .restart local v15    # "parsedGbaKeyRes":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    .line 234
    :cond_1
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->getImpi()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->getImpi()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v6

    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v7

    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHttpRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v8}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHttpRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v11}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->createAuthorizationHeader()Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    .line 256
    .end local v15    # "parsedGbaKeyRes":Ljava/lang/String;
    .end local v16    # "passwordArr":[C
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    invoke-virtual {v1, v14}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getAuthorizationHeaderVal(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->setBsfAuthorizationHeaderValue(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->isProxyAuth:Z

    if-nez v1, :cond_9

    .line 261
    invoke-virtual {v12}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->addAuthorizationHeader()V

    .line 265
    :goto_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->isProxyAuth:Z

    .line 268
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "BsfTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this.bsfHttpRequest.getRequestLine().getUri()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHttpRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v4}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHttpRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 271
    .local v17, "requestUri":Ljava/net/URI;
    new-instance v18, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bb

    const-string v3, "https"

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    .local v18, "target":Lorg/apache/http/HttpHost;
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "BsfTransaction"

    const-string v3, "bsfHttpRequest"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHttpRequest:Lorg/apache/http/HttpRequest;

    invoke-static {v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printRequest(Lorg/apache/http/HttpRequest;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfHttpRequest:Lorg/apache/http/HttpRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->nafReqCntxt:Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    iget-object v3, v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v18

    invoke-interface {v1, v0, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .end local v17    # "requestUri":Ljava/net/URI;
    .end local v18    # "target":Lorg/apache/http/HttpHost;
    :goto_8
    return-object v1

    .line 214
    :catch_0
    move-exception v13

    .line 216
    .local v13, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    const/4 v1, 0x0

    goto :goto_8

    .line 234
    .end local v13    # "e":Ljava/net/URISyntaxException;
    .restart local v15    # "parsedGbaKeyRes":Ljava/lang/String;
    .restart local v16    # "passwordArr":[C
    :cond_2
    const-string v2, "310260548400483@msg.lab.t-mobile.com"

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->getDomain()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 252
    .end local v15    # "parsedGbaKeyRes":Ljava/lang/String;
    .end local v16    # "passwordArr":[C
    :cond_8
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "BsfTransaction"

    const-string v3, "Isim response and Auth Header Info is available now"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->updateAuthorizationHeader()Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->curAuthorizationHeader:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    goto/16 :goto_6

    .line 263
    :cond_9
    invoke-virtual {v12}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfRequest;->addProxyAuthorizationHeader()V

    goto/16 :goto_7
.end method

.method private updateAuthorizationHeader()Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;
    .locals 6

    .prologue
    .line 327
    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setAlgorithm(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setNonce(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setOpaque(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setQop(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setRealm(Ljava/lang/String;)V

    .line 341
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->parsedIsimRes:Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->parsedIsimRes:Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;->getRes()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 343
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->parsedIsimRes:Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;->getRes()[B

    move-result-object v2

    const-string v3, "CP1252"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 344
    .local v0, "parsedGbaKeyRes":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 345
    .local v1, "passwordArr":[C
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "BsfTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++++The response creating is new String(passwordArr) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setGbaServiceKey(Ljava/lang/String;)V

    .line 352
    .end local v0    # "parsedGbaKeyRes":Ljava/lang/String;
    .end local v1    # "passwordArr":[C
    :goto_1
    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->authorizationHeaderCreator:Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->createAuthorizationHeader()Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    move-result-object v2

    return-object v2

    .line 337
    :cond_0
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "BsfTransaction"

    const-string v4, "wwwAuthenticate Header is null, something went wrong"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "BsfTransaction"

    const-string v4, "Isim response is null, digest cannot be calculated"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public createNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 9

    .prologue
    .line 283
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 286
    .local v2, "keyStore":Ljava/security/KeyStore;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 288
    new-instance v4, Lorg/apache/http/impl/client/secgbaclient/GbaSSLSocketFactory;

    invoke-direct {v4, v2}, Lorg/apache/http/impl/client/secgbaclient/GbaSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 289
    .local v4, "sslSockFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 291
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 292
    .local v3, "schRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    iget v8, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->httpPort:I

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 293
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    iget v7, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->httpsPort:I

    invoke-direct {v5, v6, v4, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 295
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 296
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 297
    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 300
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, v1, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    .line 302
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v5, v6, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5

    .line 319
    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "schRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sslSockFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v5

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 307
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 310
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v0

    .line 313
    .local v0, "e":Ljava/security/KeyManagementException;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/security/KeyManagementException;
    :catch_4
    move-exception v0

    .line 316
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    .line 318
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_5
    move-exception v0

    .line 319
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method public performBsfAuth([B)Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;
    .locals 12
    .param p1, "curNafId"    # [B

    .prologue
    const/4 v5, 0x0

    const/16 v11, 0x197

    const/16 v10, 0x191

    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, "lastBsfRes":Lorg/apache/http/HttpResponse;
    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;-><init>()V

    .line 111
    .local v0, "bsfFinalAuthResData":Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;
    const/4 v3, 0x0

    .line 112
    .local v3, "isimResponse":[B
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/Nonce;

    invoke-direct {v1}, Lorg/apache/http/impl/client/secgbaclient/Nonce;-><init>()V

    .line 118
    .local v1, "bsfNonce":Lorg/apache/http/impl/client/secgbaclient/Nonce;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->sendBsfRequest()Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 130
    :goto_0
    if-eqz v4, :cond_9

    .line 132
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "BsfTransaction"

    const-string v8, "bsfHttpResponse"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printResponse(Lorg/apache/http/HttpResponse;)V

    .line 134
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-eq v6, v10, :cond_1

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ne v6, v11, :cond_8

    .line 136
    :cond_1
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "BsfTransaction"

    const-string v8, "401 response received for BSF Request"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 139
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeaderParser:Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;

    invoke-virtual {v6, v4}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->WwwAuthHeaderParse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    .line 145
    :cond_2
    :goto_1
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->parseNonce(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->getServiceWrapper()Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    .line 148
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    if-eqz v6, :cond_6

    .line 150
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "BsfTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RandAutnValue is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->getAutnRand()[B

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->getAutnRand()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getIsimResponse(Ljava/lang/String;)[B

    move-result-object v3

    .line 152
    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/Nonce;->getRand()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->setRand([B)V

    .line 154
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "BsfTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Gba Service is  pass and resp is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_2
    if-eqz v3, :cond_7

    .line 164
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->parsedIsimRes:Lorg/apache/http/impl/client/secgbaclient/AkaResponse;

    invoke-virtual {v6, v3}, Lorg/apache/http/impl/client/secgbaclient/AkaResponse;->parseResKeyFromIsimResponse([B)V

    .line 195
    :cond_3
    :goto_3
    iget v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfTransCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfTransCount:I

    .line 196
    iget v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfTransCount:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_0

    .line 200
    :cond_4
    :goto_4
    return-object v5

    .line 119
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 122
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 128
    .local v2, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 140
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_5
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ne v6, v11, :cond_2

    .line 142
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeaderParser:Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;

    invoke-virtual {v6, v4}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->proxyAuthHeaderParse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->bsfAuthHeader:Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    .line 143
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->isProxyAuth:Z

    goto/16 :goto_1

    .line 158
    :cond_6
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "BsfTransaction"

    const-string v8, "Gba Service is not running or Binding failed"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 168
    :cond_7
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "BsfTransaction"

    const-string v8, "ISIM response came null from GBA service"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 173
    :cond_8
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "BsfTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Status code recieved from Bsf is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x193

    if-eq v6, v7, :cond_4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x194

    if-eq v6, v7, :cond_4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x19f

    if-eq v6, v7, :cond_4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x1f4

    if-eq v6, v7, :cond_4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x1f7

    if-eq v6, v7, :cond_4

    .line 185
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_3

    .line 187
    invoke-direct {p0, v4, v0}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->handleBsf200Response(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    move-result-object v5

    goto/16 :goto_4

    .line 193
    :cond_9
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfTransaction;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "BsfTransaction"

    const-string v8, "Null response recieved for BSF Request"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method
