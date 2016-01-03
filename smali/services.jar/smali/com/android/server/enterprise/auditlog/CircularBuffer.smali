.class public Lcom/android/server/enterprise/auditlog/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# static fields
.field private static final ADAYINMILLISEC:J = 0x5265c00L

.field private static final BUFFERLIMITSIZE:J = 0x20000000L

.field private static final EDM_AUDIT_LOG_FILENAME:Ljava/lang/String; = "/data/system/"

.field private static final TOTALNUMBEROFFILES:I = 0x3eb

.field private static mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdminCriticalSize:F

.field private mAdminDirectoryPath:Ljava/lang/String;

.field private mAdminMaximumSize:F

.field private volatile mCircularBufferSize:J

.field private mContext:Landroid/content/Context;

.field private mCriticalIntent:Z

.field private mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

.field private mDumpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFullBuffer:F

.field private mFullIntent:Z

.field private volatile mIsBootCompleted:Z

.field private volatile mIsDumping:Z

.field private mIsFirstNode:Z

.field private volatile mLastDumpedFile:Ljava/lang/String;

.field private mMaximumIntent:Z

.field private volatile mNumberOfDeprecatedFiles:I

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntentErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private mTailTimestamp:J

.field private mTotalDirectoryOccupation:J

.field private volatile mTypeOfDump:Z

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "CircularBuffer"

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->TAG:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsFirstNode:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 99
    sget-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 100
    iput p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    .line 101
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 102
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    .line 103
    const/high16 v0, 0x42c20000    # 97.0f

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    .line 104
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    .line 105
    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 106
    iput-wide v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 110
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getNumberOfDeprecatedFiles()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->populateCircularBuffer()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/CircularBuffer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$122(Lcom/android/server/enterprise/auditlog/CircularBuffer;J)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/CircularBuffer;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    return-wide v0
.end method

.method static synthetic access$208(Lcom/android/server/enterprise/auditlog/CircularBuffer;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/auditlog/CircularBuffer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/CircularBuffer;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    return-void
.end method

.method private addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;
    .locals 3

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->checkCriticalSizes()V

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->cleanBuffer()V

    .line 279
    :cond_1
    new-instance v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private checkCriticalSizes()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 463
    const/4 v0, 0x0

    .line 466
    .local v0, "intent":Landroid/content/Intent;
    const-wide/16 v4, 0x64

    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x20000000

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 467
    .local v1, "threshold":I
    int-to-float v4, v1

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 468
    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    if-nez v4, :cond_0

    .line 469
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v4, "mdm.intent.action.audit.log.critical.size"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 472
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 473
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 474
    iput-boolean v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 481
    .end local v2    # "token":J
    :cond_0
    :goto_0
    int-to-float v4, v1

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 482
    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    if-nez v4, :cond_1

    .line 483
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v4, "mdm.intent.action.audit.log.maximum.size"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 486
    .restart local v2    # "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 487
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    iput-boolean v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 495
    .end local v2    # "token":J
    :cond_1
    :goto_1
    int-to-float v4, v1

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullBuffer:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    .line 496
    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    if-nez v4, :cond_2

    .line 497
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v4, "mdm.intent.action.audit.log.full.size"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 500
    .restart local v2    # "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 501
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    iput-boolean v9, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    .line 503
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    const-string v5, "Full Size Reached!"

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v2    # "token":J
    :cond_2
    :goto_2
    return-void

    .line 477
    :cond_3
    iput-boolean v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    goto :goto_0

    .line 491
    :cond_4
    iput-boolean v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    goto :goto_1

    .line 506
    :cond_5
    iput-boolean v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mFullIntent:Z

    goto :goto_2
.end method

.method private cleanBuffer()V
    .locals 9

    .prologue
    .line 512
    const/4 v2, 0x0

    .line 514
    .local v2, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v4

    .line 515
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 517
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x3eb

    if-le v3, v5, :cond_1

    .line 518
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v2, v0

    .line 520
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    iget v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/lit8 v5, v3, -0x1

    iput v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    .line 525
    :goto_1
    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 526
    const-wide/32 v5, 0x20000000

    iget-wide v7, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 527
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 528
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 530
    .end local v1    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 523
    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    goto :goto_1

    .line 530
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    return-void
.end method

.method private dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;
    .locals 19
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 198
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const/4 v12, 0x0

    .line 263
    :goto_0
    return-object v12

    .line 201
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 202
    .local v12, "files":[Ljava/io/File;
    const/4 v14, 0x0

    .line 204
    .local v14, "lastFile":Ljava/io/File;
    if-nez v12, :cond_1

    .line 205
    const/4 v12, 0x0

    goto :goto_0

    .line 207
    :cond_1
    new-instance v1, Lcom/android/server/enterprise/auditlog/CircularBuffer$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/auditlog/CircularBuffer$2;-><init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V

    invoke-static {v12, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 214
    array-length v1, v12

    if-lez v1, :cond_5

    .line 215
    array-length v1, v12

    add-int/lit8 v1, v1, -0x1

    aget-object v14, v12, v1

    .line 220
    const/16 v17, 0x0

    .line 221
    .local v17, "raf":Ljava/io/RandomAccessFile;
    const/16 v16, 0x0

    .line 224
    .local v16, "out":Ljava/nio/MappedByteBuffer;
    :try_start_0
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v17    # "raf":Ljava/io/RandomAccessFile;
    .local v18, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v16

    .line 226
    const/4 v9, 0x0

    .line 228
    .local v9, "bytes":[B
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 229
    const/16 v1, 0x400

    new-array v9, v1, [B

    .line 230
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    sub-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x400

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 237
    :goto_1
    const/4 v8, 0x0

    .local v8, "byteCounter":I
    :goto_2
    array-length v1, v9

    if-ge v8, v1, :cond_2

    .line 238
    aget-byte v1, v9, v8

    if-nez v1, :cond_7

    .line 242
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    array-length v3, v9

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    int-to-long v3, v8

    add-long/2addr v1, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 243
    invoke-virtual/range {v16 .. v16}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    if-eqz v18, :cond_3

    .line 251
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_3
    move-object/from16 v17, v18

    .line 258
    .end local v8    # "byteCounter":I
    .end local v9    # "bytes":[B
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v17    # "raf":Ljava/io/RandomAccessFile;
    :cond_4
    :goto_4
    move-object v7, v12

    .local v7, "arr$":[Ljava/io/File;
    array-length v15, v7

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_5
    if-ge v13, v15, :cond_9

    aget-object v11, v7, v13

    .line 259
    .local v11, "f":Ljava/io/File;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 258
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 217
    .end local v7    # "arr$":[Ljava/io/File;
    .end local v11    # "f":Ljava/io/File;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "out":Ljava/nio/MappedByteBuffer;
    .end local v17    # "raf":Ljava/io/RandomAccessFile;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 232
    .restart local v9    # "bytes":[B
    .restart local v16    # "out":Ljava/nio/MappedByteBuffer;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    :cond_6
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v9, v1, [B

    .line 233
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 245
    .end local v9    # "bytes":[B
    :catch_0
    move-exception v10

    move-object/from16 v17, v18

    .line 246
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "e":Ljava/lang/Exception;
    .restart local v17    # "raf":Ljava/io/RandomAccessFile;
    :goto_6
    :try_start_4
    const-string v1, "CircularBuffer"

    const-string v2, "dirListByAscendingDate.Exception"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 249
    if-eqz v17, :cond_4

    .line 251
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 252
    :catch_1
    move-exception v10

    .line 253
    .local v10, "e":Ljava/io/IOException;
    const-string v1, "CircularBuffer"

    const-string v2, "dirListByAscendingDate.IOException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 237
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "byteCounter":I
    .restart local v9    # "bytes":[B
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 249
    .end local v8    # "byteCounter":I
    .end local v9    # "bytes":[B
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v17    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v1

    :goto_7
    if-eqz v17, :cond_8

    .line 251
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 249
    :cond_8
    :goto_8
    throw v1

    .line 262
    .restart local v7    # "arr$":[Ljava/io/File;
    .restart local v13    # "i$":I
    .restart local v15    # "len$":I
    :cond_9
    const-wide/32 v1, 0x20000000

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    goto/16 :goto_0

    .line 252
    .end local v7    # "arr$":[Ljava/io/File;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :catch_2
    move-exception v10

    .line 253
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v2, "CircularBuffer"

    const-string v3, "dirListByAscendingDate.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 252
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "byteCounter":I
    .restart local v9    # "bytes":[B
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v10

    .line 253
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "CircularBuffer"

    const-string v2, "dirListByAscendingDate.IOException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 249
    .end local v8    # "byteCounter":I
    .end local v9    # "bytes":[B
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    move-object/from16 v17, v18

    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v17    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 245
    :catch_4
    move-exception v10

    goto :goto_6
.end method

.method private getNumberOfDeprecatedFiles()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 152
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "auditNumberOfDepFiles"

    aput-object v3, v1, v6

    .line 153
    .local v1, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    .local v0, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 156
    .local v2, "depFiles":I
    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_0
    return v2
.end method

.method private markDeprecatedFiles()V
    .locals 10

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, "dumpDeprecated":Z
    const/4 v3, 0x0

    .line 427
    .local v3, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v5

    .line 429
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 430
    .local v2, "li":Ljava/util/ListIterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v3, v0

    .line 434
    if-eqz v1, :cond_3

    .line 435
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 454
    :cond_1
    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V

    .line 455
    monitor-exit v5

    .line 456
    return-void

    .line 439
    :cond_2
    iget-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 440
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    .line 441
    iget v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    goto :goto_0

    .line 455
    .end local v2    # "li":Ljava/util/ListIterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 445
    .restart local v2    # "li":Ljava/util/ListIterator;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 446
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    const/4 v1, 0x1

    .line 448
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 449
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private populateCircularBuffer()V
    .locals 12

    .prologue
    .line 122
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 125
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 126
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 149
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 129
    .local v0, "allFiles":[Ljava/io/File;
    const/4 v7, 0x0

    .line 130
    .local v7, "node":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    const/4 v2, 0x0

    .line 132
    .local v2, "counter":I
    if-eqz v0, :cond_3

    .line 133
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v4, v1, v5

    .line 134
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 135
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 144
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    :cond_1
    new-instance v7, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .end local v7    # "node":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-direct {v7, v4, v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .restart local v7    # "node":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I

    if-le v2, v8, :cond_2

    .line 140
    iget-wide v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    invoke-virtual {v7}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    goto :goto_2

    .line 142
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    goto :goto_2

    .line 147
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    goto :goto_0
.end method

.method private resizeBubbleFile(J)V
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 535
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_1

    .line 536
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_bubble/bubbleFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bubble"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 542
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 544
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_bubble/bubbleFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 545
    const/4 v2, 0x0

    .line 548
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_bubble/bubbleFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "rwd"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v3, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    if-eqz v3, :cond_3

    .line 557
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v2, v3

    .line 562
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v4, "CircularBuffer"

    const-string v5, "resizeBubbleFile.Exception"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 555
    if-eqz v2, :cond_0

    .line 557
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 558
    :catch_1
    move-exception v1

    .line 559
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CircularBuffer"

    const-string v5, "resizeBubbleFile.IOException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_4

    .line 557
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 555
    :cond_4
    :goto_4
    throw v4

    .line 558
    :catch_2
    move-exception v1

    .line 559
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "CircularBuffer"

    const-string v6, "resizeBubbleFile.IOException"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 558
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v1

    .line 559
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "CircularBuffer"

    const-string v5, "resizeBubbleFile.IOException"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 555
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 552
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private setNumberOfDeprecatedFiles(I)V
    .locals 4
    .param p1, "depFiles"    # I

    .prologue
    .line 165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "auditNumberOfDepFiles"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    const-string v3, "AUDITLOG"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 168
    return-void
.end method


# virtual methods
.method public closeFile()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 364
    return-void
.end method

.method public deleteAllFiles()V
    .locals 6

    .prologue
    .line 383
    const/4 v2, 0x0

    .line 385
    .local v2, "pfn":Lcom/android/server/enterprise/auditlog/PartialFileNode;
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 387
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 390
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v4

    .line 391
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 392
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-object v2, v0

    .line 394
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 397
    .end local v1    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminDirectoryPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 399
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bubble/bubbleFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 400
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_bubble"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 401
    return-void
.end method

.method public getCriticalLogSize()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentLogFileSize()I
    .locals 6

    .prologue
    const/16 v1, 0x64

    .line 354
    const-wide/16 v2, 0x64

    iget-wide v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x20000000

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 355
    .local v0, "res":I
    if-le v0, v1, :cond_0

    .line 356
    .local v1, "ret":I
    :goto_0
    return v1

    .end local v1    # "ret":I
    :cond_0
    move v1, v0

    .line 355
    goto :goto_0
.end method

.method public getDumpFilesList()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    monitor-enter v1

    .line 316
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaximumLogSize()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    float-to-int v0, v0

    return v0
.end method

.method public setBootCompleted(Z)V
    .locals 5
    .param p1, "boot"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    .line 372
    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsBootCompleted:Z

    if-eqz v1, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    monitor-enter v2

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPendingIntentErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 375
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Exception;>;"
    :cond_1
    return-void
.end method

.method public setCriticalLogSize(I)V
    .locals 1
    .param p1, "criticalSize"    # I

    .prologue
    .line 324
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 326
    return-void
.end method

.method public declared-synchronized setIsDumping(ZZ)V
    .locals 1
    .param p1, "dumping"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mIsDumping:Z

    .line 409
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 411
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->markDeprecatedFiles()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumLogSize(I)V
    .locals 1
    .param p1, "maximumSize"    # I

    .prologue
    .line 339
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 341
    return-void
.end method

.method public setTypeOfDump(Z)V
    .locals 0
    .param p1, "isFull"    # Z

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTypeOfDump:Z

    .line 417
    return-void
.end method

.method public tictacForDeprecation()V
    .locals 7

    .prologue
    const-wide/16 v2, 0xf

    .line 172
    new-instance v1, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;-><init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V

    .line 193
    .local v1, "tt":Ljava/util/TimerTask;
    sget-object v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mSte:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 194
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const-wide/32 v5, 0x20000000

    .line 284
    if-nez p1, :cond_1

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 286
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 287
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long v1, v5, v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 288
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 289
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mLastDumpedFile:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 292
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 296
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    .line 297
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mTotalDirectoryOccupation:J

    sub-long v1, v5, v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 298
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 299
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->closeFile()V

    .line 301
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->addNode()Lcom/android/server/enterprise/auditlog/PartialFileNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 302
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCurrentNode:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->write(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CircularBuffer"

    const-string/jumbo v2, "write.Exception"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
