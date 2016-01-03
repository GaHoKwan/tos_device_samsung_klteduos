.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private mServer2:Ljava/lang/String;

.field private mServer3:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    .line 50
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 52
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "server2"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    .line 56
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using server1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "server2"    # Ljava/lang/String;
    .param p3, "server3"    # Ljava/lang/String;
    .param p4, "timeout"    # J

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    .line 63
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using server1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    .line 67
    iput-wide p4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 68
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-class v12, Landroid/util/NtpTrustedTime;

    monitor-enter v12

    :try_start_0
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 73
    .local v9, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 75
    .local v10, "resolver":Landroid/content/ContentResolver;
    const v0, 0x104006f

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "defaultServer":Ljava/lang/String;
    const v0, 0x10e0042

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v7, v0

    .line 80
    .local v7, "defaultTimeout":J
    const-string/jumbo v0, "ntp_server"

    invoke-static {v10, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "secureServer":Ljava/lang/String;
    const-string/jumbo v0, "ntp_timeout"

    invoke-static {v10, v0, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 85
    .local v4, "timeout":J
    if-eqz v11, :cond_1

    move-object v1, v11

    .line 86
    .local v1, "server":Ljava/lang/String;
    :goto_0
    const v0, 0x1040070

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "server2":Ljava/lang/String;
    const v0, 0x1040071

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "server3":Ljava/lang/String;
    const-string v0, "CMCC"

    const-string v13, "CMCC"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Landroid/util/NtpTrustedTime;

    invoke-direct/range {v0 .. v5}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 100
    .end local v1    # "server":Ljava/lang/String;
    .end local v2    # "server2":Ljava/lang/String;
    .end local v3    # "server3":Ljava/lang/String;
    .end local v4    # "timeout":J
    .end local v6    # "defaultServer":Ljava/lang/String;
    .end local v7    # "defaultTimeout":J
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "secureServer":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    return-object v0

    .restart local v4    # "timeout":J
    .restart local v6    # "defaultServer":Ljava/lang/String;
    .restart local v7    # "defaultTimeout":J
    .restart local v9    # "res":Landroid/content/res/Resources;
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    .restart local v11    # "secureServer":Ljava/lang/String;
    :cond_1
    move-object v1, v6

    .line 85
    goto :goto_0

    .line 94
    .restart local v1    # "server":Ljava/lang/String;
    .restart local v2    # "server2":Ljava/lang/String;
    .restart local v3    # "server3":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/util/NtpTrustedTime;

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 71
    .end local v1    # "server":Ljava/lang/String;
    .end local v2    # "server2":Ljava/lang/String;
    .end local v3    # "server3":Ljava/lang/String;
    .end local v4    # "timeout":J
    .end local v6    # "defaultServer":Ljava/lang/String;
    .end local v7    # "defaultTimeout":J
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "secureServer":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .line 96
    .restart local v1    # "server":Ljava/lang/String;
    .restart local v2    # "server2":Ljava/lang/String;
    .restart local v3    # "server3":Ljava/lang/String;
    .restart local v4    # "timeout":J
    .restart local v6    # "defaultServer":Ljava/lang/String;
    .restart local v7    # "defaultTimeout":J
    .restart local v9    # "res":Landroid/content/res/Resources;
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    .restart local v11    # "secureServer":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v0, Landroid/util/NtpTrustedTime;

    invoke-direct {v0, v1, v4, v5}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x2

    const/4 v2, 0x1

    .line 105
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 143
    :goto_0
    return v1

    .line 110
    :cond_0
    const-string v3, "NtpTrustedTime"

    const-string v4, "forceRefresh() from cache miss"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 112
    .local v0, "client":Landroid/net/SntpClient;
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 114
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 115
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 116
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v3

    div-long/2addr v3, v6

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 117
    const-string v1, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestTime Success from server:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpCertainty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    const-string v3, "CMCC"

    const-string v4, "CMCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 124
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 125
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 126
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v3

    div-long/2addr v3, v6

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 127
    const-string v1, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestTime Success from server2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->mServer2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpCertainty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 130
    goto/16 :goto_0

    .line 131
    :cond_2
    const-string v3, "CMCC"

    const-string v4, "CMCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    iput-boolean v2, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 134
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 135
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 136
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v3

    div-long/2addr v3, v6

    iput-wide v3, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 137
    const-string v1, "NtpTrustedTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestTime Success from server3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/NtpTrustedTime;->mServer3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCachedNtpCertainty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 140
    goto/16 :goto_0

    .line 142
    :cond_3
    const-string v2, "NtpTrustedTime"

    const-string v3, "forceRefresh Fail."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 157
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 163
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 164
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 166
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 183
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
