.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
.super Ljava/lang/Object;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartBondingUsageStatus"
.end annotation


# instance fields
.field public mFileSize:J

.field public mHost:Ljava/lang/String;

.field public mInetAddresses:[Ljava/net/InetAddress;

.field public mPid:I

.field public mStartRange:J

.field public mStartWithPopup:Z

.field public mStatistics:[J

.field public mStatus:I

.field public mThreadID:J

.field public mUid:I

.field public mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method public constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;IIJJLjava/lang/String;J)V
    .locals 5
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "threadID"    # J
    .param p6, "fileSize"    # J
    .param p8, "url"    # Ljava/lang/String;
    .param p9, "startRange"    # J

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 3261
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3249
    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    .line 3250
    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUid:I

    .line 3251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    .line 3252
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    .line 3253
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mFileSize:J

    .line 3254
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    .line 3255
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartRange:J

    .line 3256
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    .line 3257
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mHost:Ljava/lang/String;

    .line 3258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    .line 3259
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatistics:[J

    .line 3262
    iput p2, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    .line 3263
    iput p3, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUid:I

    .line 3264
    iput-wide p4, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    .line 3265
    iput-wide p6, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mFileSize:J

    .line 3266
    iput-object p8, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    .line 3267
    iput-wide p9, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartRange:J

    .line 3268
    return-void

    .line 3259
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 3272
    instance-of v2, p1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    if-nez v2, :cond_1

    .line 3275
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 3273
    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 3274
    .local v0, "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUid:I

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUid:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    iget-wide v4, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
