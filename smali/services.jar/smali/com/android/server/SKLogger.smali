.class public Lcom/android/server/SKLogger;
.super Ljava/lang/Object;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SKLogger$1;,
        Lcom/android/server/SKLogger$SKHandler;,
        Lcom/android/server/SKLogger$SKFormatter;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field public static LOG_LEVEL_ALL:I

.field public static LOG_LEVEL_DENIALS:I

.field public static LOG_LEVEL_OFF:I

.field private static LOG_MAX_SIZE:I

.field private static LOG_NEW:Ljava/lang/String;

.field private static LOG_OLD:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static SK_VERBOSE_DEFAULT:I

.field private static SK_VERBOSE_PROP:Ljava/lang/String;

.field private static mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

.field private static mLogger:Ljava/util/logging/Logger;

.field private static final mSKLogger:Lcom/android/server/SKLogger;

.field private static mSKTxt:Lcom/android/server/SKLogger$SKHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/android/server/SKLogger;->LOG_LEVEL_OFF:I

    .line 33
    sput v1, Lcom/android/server/SKLogger;->LOG_LEVEL_DENIALS:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/android/server/SKLogger;->LOG_LEVEL_ALL:I

    .line 36
    const-string v0, "SKLogger"

    sput-object v0, Lcom/android/server/SKLogger;->LOG_TAG:Ljava/lang/String;

    .line 38
    const-string v0, "persist.security.ams.verbose"

    sput-object v0, Lcom/android/server/SKLogger;->SK_VERBOSE_PROP:Ljava/lang/String;

    .line 39
    sget v0, Lcom/android/server/SKLogger;->LOG_LEVEL_DENIALS:I

    sput v0, Lcom/android/server/SKLogger;->SK_VERBOSE_DEFAULT:I

    .line 42
    const-string v0, "/data/misc/audit/sk.log"

    sput-object v0, Lcom/android/server/SKLogger;->LOG_NEW:Ljava/lang/String;

    .line 43
    const-string v0, "/data/misc/audit/sk.old"

    sput-object v0, Lcom/android/server/SKLogger;->LOG_OLD:Ljava/lang/String;

    .line 44
    const v0, 0x19000

    sput v0, Lcom/android/server/SKLogger;->LOG_MAX_SIZE:I

    .line 45
    sput-boolean v1, Lcom/android/server/SKLogger;->DEBUG:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    .line 51
    new-instance v0, Lcom/android/server/SKLogger;

    invoke-direct {v0}, Lcom/android/server/SKLogger;-><init>()V

    sput-object v0, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static getCurrentLogLevel()I
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/android/server/SKLogger;->SK_VERBOSE_PROP:Ljava/lang/String;

    sget v1, Lcom/android/server/SKLogger;->SK_VERBOSE_DEFAULT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLogger()Lcom/android/server/SKLogger;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 62
    const-class v8, Lcom/android/server/SKLogger;

    monitor-enter v8

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    .line 64
    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 66
    :try_start_1
    const-string v0, "SKLogger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    new-instance v0, Lcom/android/server/SKLogger$SKHandler;

    new-instance v1, Lcom/android/server/SKLogger;

    invoke-direct {v1}, Lcom/android/server/SKLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/SKLogger;->LOG_NEW:Ljava/lang/String;

    sget-object v3, Lcom/android/server/SKLogger;->LOG_OLD:Ljava/lang/String;

    sget v4, Lcom/android/server/SKLogger;->LOG_MAX_SIZE:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SKLogger$SKHandler;-><init>(Lcom/android/server/SKLogger;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    new-instance v0, Lcom/android/server/SKLogger$SKFormatter;

    new-instance v1, Lcom/android/server/SKLogger;

    invoke-direct {v1}, Lcom/android/server/SKLogger;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/SKLogger$SKFormatter;-><init>(Lcom/android/server/SKLogger;Lcom/android/server/SKLogger$1;)V

    sput-object v0, Lcom/android/server/SKLogger;->mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

    .line 73
    sget-object v0, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    sget-object v1, Lcom/android/server/SKLogger;->mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

    invoke-virtual {v0, v1}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 74
    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Lcom/android/server/SKLogger;->mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 75
    sget-object v0, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :cond_0
    :try_start_4
    sget-object v0, Lcom/android/server/SKLogger;->mSKLogger:Lcom/android/server/SKLogger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v8

    return-object v0

    .line 69
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v7

    .line 70
    goto :goto_0

    .line 76
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/SecurityException;
    move-object v0, v7

    .line 77
    goto :goto_0

    .line 62
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    const-string v3, ""

    .line 196
    :goto_0
    return-object v3

    .line 185
    :cond_0
    move-object v2, p0

    .line 186
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_2

    .line 187
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 188
    const-string v3, ""

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 193
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 194
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 195
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 196
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;IIZZILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "isAllowed"    # I
    .param p2, "seinfo"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "agentType"    # I
    .param p5, "uid"    # I
    .param p6, "isSrcTrusted"    # Z
    .param p7, "isNoAudit"    # Z
    .param p8, "pid"    # I
    .param p9, "Service"    # Ljava/lang/String;
    .param p10, "method"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Lcom/android/server/SKLogger;->getCurrentLogLevel()I

    move-result v0

    .line 117
    .local v0, "currentLogLevel":I
    sget v3, Lcom/android/server/SKLogger;->LOG_LEVEL_OFF:I

    if-ne v0, v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget v3, Lcom/android/server/SKLogger;->LOG_LEVEL_DENIALS:I

    if-ne v0, v3, :cond_2

    if-gez p1, :cond_0

    .line 124
    :cond_2
    sget v3, Lcom/android/server/SKLogger;->LOG_LEVEL_ALL:I

    if-eq v0, v3, :cond_3

    const/4 v3, 0x1

    if-eq p7, v3, :cond_0

    .line 128
    :cond_3
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 129
    .local v2, "tObj":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 130
    const-string v3, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    if-ltz p1, :cond_4

    const-string v1, "SK-Allowed <"

    .line 133
    .local v1, "logText":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "srcInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "containerAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DestInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dest_service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dest_method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    sget-object v3, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .end local v1    # "logText":Ljava/lang/String;
    :cond_4
    const-string v1, "SK-Denied <"

    goto/16 :goto_1
.end method

.method public logAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 151
    .local v1, "tObj":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 152
    const-string v2, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    const-string v2, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "logText":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    sget-object v2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 165
    .local v1, "tObj":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 166
    const-string v2, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    const-string v2, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "logText":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/android/server/SKLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    sget-object v2, Lcom/android/server/SKLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 174
    return-void
.end method
