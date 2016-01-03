.class public Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.super Ljava/lang/Object;
.source "PDPContextStateBroadcaster.java"


# static fields
.field private static final ACTION_PDP_CONTEXT_STATE:Ljava/lang/String; = "diagandroid.data.PDPContextState"

.field private static final APN_TYPE_PRIMARY:Ljava/lang/String; = "default"

.field private static final CONTEXT_STATE_CONNECTED:Ljava/lang/String; = "CONNECTED"

.field private static final CONTEXT_STATE_DISCONNECTED:Ljava/lang/String; = "DISCONNECTED"

.field private static final CONTEXT_STATE_REQUESTED:Ljava/lang/String; = "REQUEST"

.field private static final CONTEXT_TYPE_PRIMARY:Ljava/lang/String; = "PRIMARY"

.field private static final CONTEXT_TYPE_SECONDARY:Ljava/lang/String; = "SECONDARY"

.field private static final DEBUG_LOG:Z = false

.field private static final DNS_EXTRA_COUNT:I = 0x2

.field private static final EXTRA_CONTEXT_APN:Ljava/lang/String; = "ContextAPN"

.field private static final EXTRA_CONTEXT_DNS:[Ljava/lang/String;

.field private static final EXTRA_CONTEXT_ERROR_CODE:Ljava/lang/String; = "ContextErrorCode"

.field private static final EXTRA_CONTEXT_ID:Ljava/lang/String; = "ContextID"

.field private static final EXTRA_CONTEXT_INITIATOR:Ljava/lang/String; = "ContextInitiator"

.field private static final EXTRA_CONTEXT_IPV4_ADDR:Ljava/lang/String; = "ContextIPV4Addr"

.field private static final EXTRA_CONTEXT_IPV6_ADDR:Ljava/lang/String; = "ContextIPV6Addr"

.field private static final EXTRA_CONTEXT_NSAPI:Ljava/lang/String; = "ContextNSAPI"

.field private static final EXTRA_CONTEXT_SAPI:Ljava/lang/String; = "ContextSAPI"

.field private static final EXTRA_CONTEXT_STATE:Ljava/lang/String; = "ContextState"

.field private static final EXTRA_CONTEXT_TERM_CODE:Ljava/lang/String; = "ContextTermCode"

.field private static final EXTRA_CONTEXT_TYPE:Ljava/lang/String; = "ContextType"

.field private static final EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

.field private static final INITIATOR_NETWORK:Ljava/lang/String; = "NETWORK"

.field private static final INITIATOR_UE:Ljava/lang/String; = "USER"

.field private static final IP_ADDRESS_TYPE_COUNT:I = 0x2

.field private static final IP_ADDRESS_V4_INDEX:I = 0x0

.field private static final IP_ADDRESS_V6_INDEX:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PDPContextStateBroadcaster"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.carrieriq.tmobile"

.field private static final PERMISSION_RECEIVE_PDP_CONTEXT_STATE:Ljava/lang/String; = "diagandroid.data.receivePDPContextState"

.field private static final sExcludeTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

.field private static final sTermCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApnIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNextContextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ContextDNS1"

    aput-object v1, v0, v2

    const-string v1, "ContextDNS2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_DNS:[Ljava/lang/String;

    .line 142
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ContextV6DNS1"

    aput-object v1, v0, v2

    const-string v1, "ContextV6DNS2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sExcludeTypes:Ljava/util/HashSet;

    .line 168
    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;

    invoke-direct {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    .line 260
    return-void
.end method

.method private static assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "targetArray"    # [Ljava/lang/String;
    .param p2, "targetIndex"    # I

    .prologue
    .line 417
    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 418
    .local v0, "empty":Z
    if-eqz v0, :cond_0

    aput-object p0, p1, p2

    .line 419
    :cond_0
    return v0
.end method

.method private static assignToEmptyElement(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "targetArray"    # [Ljava/lang/String;

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "index":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    array-length v2, p1

    if-ne v1, v2, :cond_1

    .line 411
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method private broadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    const-string v0, "com.carrieriq.tmobile"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "diagandroid.data.receivePDPContextState"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method private contextIdInUse(I)Z
    .locals 5
    .param p1, "contextId"    # I

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 241
    .local v3, "inUse":Z
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 242
    .local v1, "contextIdValue":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 243
    .local v0, "apnTypeIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    const/4 v3, 0x1

    .line 248
    .end local v0    # "apnTypeIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    return v3
.end method

.method private static createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 3
    .param p0, "contextState"    # Ljava/lang/String;
    .param p1, "contextId"    # Ljava/lang/Integer;

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "diagandroid.data.PDPContextState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ContextState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v1, "ContextID"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    return-object v0
.end method

.method public static declared-synchronized disable()V
    .locals 2

    .prologue
    .line 46
    const-class v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enable()V
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit v1

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)Ljava/lang/Integer;
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, "result":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 224
    .local v0, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v3, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 225
    .local v1, "apnTypeIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 226
    .restart local v2    # "result":Ljava/lang/Integer;
    :cond_0
    return-object v2
.end method

.method private static getContextType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PRIMARY"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SECONDARY"

    goto :goto_0
.end method

.method private getNextContextId()I
    .locals 3

    .prologue
    .line 267
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    .line 269
    .local v0, "nextId":I
    iget v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    const v2, 0xffff

    if-le v1, v2, :cond_1

    .line 270
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    .line 272
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->contextIdInUse(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    return v0
.end method

.method private static getTermCode(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 281
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 283
    .local v0, "termCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "termCode":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 284
    .restart local v0    # "termCode":Ljava/lang/Integer;
    :cond_0
    return-object v0
.end method

.method private static processDNSAddresses(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "ipv4DNSes"    # [Ljava/lang/String;
    .param p2, "ipv6DNSes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 394
    .local v0, "address":Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 395
    .local v2, "targetArray":[Ljava/lang/String;
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    .line 396
    move-object v2, p1

    .line 401
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToEmptyElement(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_2
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    .line 398
    move-object v2, p2

    goto :goto_1

    .line 403
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "targetArray":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static processIPAddresses(Ljava/util/Collection;[Ljava/lang/String;)V
    .locals 4
    .param p1, "sortedAddresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 376
    .local v0, "address":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 377
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 379
    :cond_1
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 384
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_2
    return-void
.end method

.method private removeContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    .line 231
    .local v1, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 232
    .local v0, "apnIdValue":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 233
    .local v2, "apnTypeIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    return-void
.end method

.method public static declared-synchronized sendConnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 63
    const-class v9, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v9

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v8

    .line 67
    .local v8, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v8, :cond_0

    .line 69
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, ""

    aput-object v1, v7, v0

    .line 70
    .local v7, "ipAddresses":[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, ""

    aput-object v1, v5, v0

    .line 71
    .local v5, "ipv4DNS":[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, ""

    aput-object v1, v6, v0

    .line 74
    .local v6, "ipv6DNS":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->processIPAddresses(Ljava/util/Collection;[Ljava/lang/String;)V

    .line 77
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->processDNSAddresses(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    const/4 v1, 0x0

    aget-object v3, v7, v1

    const/4 v1, 0x1

    aget-object v4, v7, v1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextConnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v5    # "ipv4DNS":[Ljava/lang/String;
    .end local v6    # "ipv6DNS":[Ljava/lang/String;
    .end local v7    # "ipAddresses":[Ljava/lang/String;
    .end local v8    # "linkProperties":Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    monitor-exit v9

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized sendDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 92
    const-class v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized sendDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendPDPContextConnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p3, "ipv4Address"    # Ljava/lang/String;
    .param p4, "ipv6Address"    # Ljava/lang/String;
    .param p5, "ipv4DNS"    # [Ljava/lang/String;
    .param p6, "ipv6DNS"    # [Ljava/lang/String;

    .prologue
    .line 320
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)Ljava/lang/Integer;

    move-result-object v0

    .line 321
    .local v0, "contextId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 323
    const-string v3, "CONNECTED"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 324
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "ContextIPV4Addr"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v3, "ContextIPV6Addr"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const/4 v1, 0x0

    .local v1, "dnsExtraIndex":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 327
    sget-object v3, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_DNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p5, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    sget-object v3, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p6, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 333
    .end local v1    # "dnsExtraIndex":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private sendPDPContextDisconnected(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)Ljava/lang/Integer;

    move-result-object v0

    .line 338
    .local v0, "contextId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->removeContextId(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 342
    const-string v3, "DISCONNECTED"

    invoke-static {v3, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v1

    .line 343
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "ContextInitiator"

    const-string v4, "USER"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-static {p3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getTermCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 345
    .local v2, "termCode":Ljava/lang/Integer;
    const-string v3, "ContextTermCode"

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v3, "ContextErrorCode"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 350
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "termCode":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private sendPDPContextRequested(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v11, 0x0

    .line 288
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    .line 289
    .local v2, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget v0, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 290
    .local v0, "apnId":I
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 291
    .local v5, "contextApn":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "apnType":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getContextType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "contextType":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 294
    .local v1, "apnIdObject":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 295
    .local v4, "apnTypeIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v4, :cond_0

    .line 297
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "apnTypeIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 298
    .restart local v4    # "apnTypeIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getNextContextId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 305
    .local v6, "contextId":Ljava/lang/Integer;
    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v9, "REQUEST"

    invoke-static {v9, v6}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v8

    .line 307
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "ContextInitiator"

    const-string v10, "USER"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v9, "ContextType"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v9, "ContextNSAPI"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v9, "ContextSAPI"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v9, "ContextAPN"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 315
    .end local v6    # "contextId":Ljava/lang/Integer;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static declared-synchronized sendRequested(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 51
    const-class v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextRequested(Landroid/content/Context;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static shouldReport(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p0, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 252
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sExcludeTypes:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
