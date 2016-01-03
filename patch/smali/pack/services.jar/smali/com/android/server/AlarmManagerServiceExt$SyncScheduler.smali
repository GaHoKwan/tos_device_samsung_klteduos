.class public Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    }
.end annotation


# static fields
.field private static final MAX_LIST_SIZE:J = 0x1388L

.field private static final SYNC_COPRIME_VALUE:J = 0xea60L

.field private static final SYNC_MAX_VALUE:J = 0x1b77400L

.field private static final SYNC_MIN_VALUE:J = 0x493e0L

.field private static final SYNC_WATCH_VALUE:J = 0x186a0L


# instance fields
.field private final DEFAULT_INTERVAL_IN_PSM:J

.field private ENABLE_FORCED_ADJUSTMENT:Z

.field private WHITELIST:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private fileGmsBundlingState:Ljava/io/File;

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;"
        }
    .end annotation
.end field

.field private final mAms:Lcom/android/server/AlarmManagerService;

.field private final mAmsLock:Ljava/lang/Object;

.field private final mBlacklistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPid:I

.field private mEmailUid:I

.field private mLockExt:Ljava/lang/Object;

.field private mLockFgAct:Ljava/lang/Object;

.field private mNextAlarmWhen:J

.field private mNextSlotInPSM:J

.field private final mPermanentWhitelistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statOpCount:J

.field private statOpTime:D

.field private statOpTimeMax:D

.field private statOpTimeMaxUid:J

.field private ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    .line 265
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 271
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    .line 301
    const-wide/32 v10, 0x1b77400

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 305
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    .line 309
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    .line 319
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 323
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    .line 327
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    .line 331
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    .line 335
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    .line 339
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    .line 343
    const-wide/32 v10, 0xa4cb80

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->DEFAULT_INTERVAL_IN_PSM:J

    .line 344
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    .line 345
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    .line 346
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/gms_bundling.data"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;

    .line 354
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    .line 358
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    .line 361
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    .line 362
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    .line 363
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    .line 364
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    .line 367
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    .line 368
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;

    .line 369
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, "cscAppSyncList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ParamAppSync"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "listApps":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v11

    .line 375
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 377
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 381
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v12, "whitelist"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 385
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v10, v6

    if-ge v4, v10, :cond_2

    .line 386
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v12, v6, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 393
    .end local v4    # "i":I
    :cond_0
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string v12, "blacklist"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 394
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    .line 395
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 400
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    array-length v10, v6

    if-ge v4, v10, :cond_2

    .line 401
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v12, v6, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    aget-object v12, v6, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 409
    .end local v4    # "i":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.sec.spp.push"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.sec.chaton"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.facebook.katana"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.twitter.android"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.facebook.orca"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.kakao.talk"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.google.android.apps.plus"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.mobilesrepublic.appygeek"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "mnn.Android"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.google.android.apps.maps"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_2
    iget-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-eqz v10, :cond_3

    .line 425
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    const-string v12, ".*alarm.*"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    const-string v12, ".*clock.*"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    const-string v12, ".*ims.*"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_3
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    const-string v12, "com.samsung.location"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 439
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 440
    .local v8, "pC":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 448
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "pC":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 442
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 443
    .local v9, "pP":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 445
    .end local v9    # "pP":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    .local v7, "nm":I
    :goto_4
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 446
    const-string v12, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<TargetPackages> "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ": "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 448
    :cond_6
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    const-string v10, "account"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 454
    .local v1, "am":Landroid/accounts/AccountManager;
    if-eqz v1, :cond_7

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v1, p0, v10, v11}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 460
    :cond_7
    :try_start_2
    new-instance v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {v10, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 470
    :goto_5
    return-void

    .line 461
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Ljava/net/SocketException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 463
    .end local v3    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v3

    .line 464
    .local v3, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 465
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v3

    .line 466
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 467
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 468
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 253
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    .locals 7
    .param p1, "alarmExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .prologue
    .line 1293
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1294
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1295
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1302
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1307
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1309
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V
    .locals 34
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "inputDistance"    # J
    .param p4, "includeItself"    # Z

    .prologue
    .line 971
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_7

    const/16 v18, 0x1

    .line 972
    .local v18, "isRtc":Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 973
    .local v25, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 974
    .local v23, "nowElapsed":J
    sub-long v5, v25, v23

    .line 975
    .local v5, "TIME_SKEW":J
    if-eqz v18, :cond_8

    move-wide/from16 v27, v5

    .line 976
    .local v27, "skewToRtc":J
    :goto_1
    const-wide v19, 0x7fffffffffffffffL

    .line 977
    .local v19, "nextAlarmWhen":J
    const-wide v21, 0x7fffffffffffffffL

    .line 978
    .local v21, "nextAlarmWhenElapsed":J
    move-wide/from16 v15, p2

    .line 979
    .local v15, "distance":J
    const/16 v17, 0x0

    .line 980
    .local v17, "isFlexibleRepeatingAlarm":Z
    const-wide/16 v9, 0x0

    .line 981
    .local v9, "count":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    add-long v11, v30, v32

    .line 982
    .local v11, "curAlarmWhen":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v32, v0

    sub-long v13, v30, v32

    .line 983
    .local v13, "curAlarmWindow":J
    const/16 v29, 0x0

    .line 988
    .local v29, "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v30, v30, v32

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_1

    .line 990
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v31

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-result-object v29

    .line 991
    if-eqz v29, :cond_1

    .line 995
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_9

    .end local v5    # "TIME_SKEW":J
    :goto_2
    sub-long v19, v30, v5

    .line 996
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    .line 998
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 999
    .local v8, "bigTemp":Ljava/math/BigInteger;
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 1000
    .local v7, "bigGcd":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    const-wide/32 v32, 0x493e0

    rem-long v30, v30, v32

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_1

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    .line 1007
    .end local v7    # "bigGcd":Ljava/math/BigInteger;
    .end local v8    # "bigTemp":Ljava/math/BigInteger;
    :cond_1
    const-wide/16 v30, 0x0

    cmp-long v30, v15, v30

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    rem-long v30, v15, v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_2

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 1012
    :cond_2
    const-wide v30, 0x7fffffffffffffffL

    cmp-long v30, v19, v30

    if-eqz v30, :cond_11

    .line 1016
    add-long v19, v19, v27

    .line 1022
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-lez v30, :cond_3

    add-long v30, v23, v27

    sub-long v30, v11, v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-lez v30, :cond_3

    .line 1024
    const/16 v17, 0x1

    .line 1030
    :cond_3
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v30

    if-eqz v30, :cond_5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-nez v30, :cond_4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-lez v30, :cond_5

    .line 1032
    :cond_4
    const/16 v17, 0x1

    .line 1039
    :cond_5
    cmp-long v30, v19, v11

    if-gtz v30, :cond_c

    .line 1043
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    rem-long v30, p2, v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_6

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    .line 1045
    :cond_6
    sub-long v30, v11, v19

    div-long v9, v30, v15

    .line 1046
    if-eqz v17, :cond_a

    .line 1050
    :goto_3
    const-wide/16 v30, 0x1

    add-long v30, v30, v9

    mul-long v30, v30, v15

    add-long v30, v30, v19

    add-long v32, v11, v13

    cmp-long v30, v30, v32

    if-gtz v30, :cond_a

    const-wide/16 v30, 0x1

    add-long v9, v9, v30

    goto :goto_3

    .line 971
    .end local v9    # "count":J
    .end local v11    # "curAlarmWhen":J
    .end local v13    # "curAlarmWindow":J
    .end local v15    # "distance":J
    .end local v17    # "isFlexibleRepeatingAlarm":Z
    .end local v18    # "isRtc":Z
    .end local v19    # "nextAlarmWhen":J
    .end local v21    # "nextAlarmWhenElapsed":J
    .end local v23    # "nowElapsed":J
    .end local v25    # "nowRtc":J
    .end local v27    # "skewToRtc":J
    .end local v29    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 975
    .restart local v5    # "TIME_SKEW":J
    .restart local v18    # "isRtc":Z
    .restart local v23    # "nowElapsed":J
    .restart local v25    # "nowRtc":J
    :cond_8
    const-wide/16 v27, 0x0

    goto/16 :goto_1

    .line 995
    .restart local v9    # "count":J
    .restart local v11    # "curAlarmWhen":J
    .restart local v13    # "curAlarmWindow":J
    .restart local v15    # "distance":J
    .restart local v17    # "isFlexibleRepeatingAlarm":Z
    .restart local v19    # "nextAlarmWhen":J
    .restart local v21    # "nextAlarmWhenElapsed":J
    .restart local v27    # "skewToRtc":J
    .restart local v29    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_9
    const-wide/16 v5, 0x0

    goto/16 :goto_2

    .line 1052
    .end local v5    # "TIME_SKEW":J
    :cond_a
    mul-long v30, v15, v9

    add-long v30, v30, v19

    move-wide/from16 v0, v30

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1097
    :goto_4
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v30

    if-eqz v30, :cond_b

    const-string v30, "AlarmManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " next: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", unit: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", C: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", WL:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_b
    :goto_5
    return-void

    .line 1059
    :cond_c
    sub-long v30, v19, v11

    div-long v9, v30, v15

    .line 1063
    sub-long v30, v11, v15

    add-long v32, v23, v27

    cmp-long v30, v30, v32

    if-gez v30, :cond_d

    const-wide/16 v30, 0x1

    add-long v30, v30, v9

    mul-long v30, v30, v15

    sub-long v30, v19, v30

    add-long v32, v23, v27

    cmp-long v30, v30, v32

    if-gez v30, :cond_d

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-gtz v30, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    const-wide/16 v30, 0x2

    div-long v30, v15, v30

    sub-long v30, v11, v30

    add-long v32, v23, v27

    cmp-long v30, v30, v32

    if-gtz v30, :cond_e

    .line 1074
    :cond_d
    const-wide/16 v30, 0x1

    add-long v9, v9, v30

    .line 1075
    mul-long v30, v15, v9

    sub-long v30, v19, v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto/16 :goto_4

    .line 1085
    :cond_e
    if-eqz v17, :cond_10

    .line 1089
    :goto_6
    mul-long v30, v15, v9

    sub-long v30, v19, v30

    add-long v32, v11, v13

    cmp-long v30, v30, v32

    if-ltz v30, :cond_f

    const-wide/16 v30, 0x1

    add-long v9, v9, v30

    goto :goto_6

    .line 1090
    :cond_f
    mul-long v30, v15, v9

    sub-long v30, v19, v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto/16 :goto_4

    .line 1093
    :cond_10
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto/16 :goto_4

    .line 1100
    :cond_11
    const-string v30, "AlarmManager"

    const-string v31, " next == MAX_VALUE"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-lez v30, :cond_b

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v30, v30, v32

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_b

    .line 1107
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto/16 :goto_5
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .locals 8
    .param p1, "interval_old"    # J
    .param p3, "interval_new"    # J

    .prologue
    .line 924
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 925
    .local v1, "newRepeatInterval":Ljava/math/BigInteger;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 926
    .local v2, "oldIntervalGcd":Ljava/math/BigInteger;
    move-object v0, v2

    .line 930
    .local v0, "newIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 935
    .local v3, "tempIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 940
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 941
    move-object v0, v3

    .line 944
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .locals 2
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1283
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1284
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1286
    :goto_1
    return v1

    .line 1283
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1286
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1273
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1274
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1276
    :goto_1
    return v1

    .line 1273
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1276
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1262
    .local p1, "targetPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1266
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private queryAccounts()V
    .locals 14

    .prologue
    .line 1429
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    const-string v11, "account"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 1430
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 1432
    .local v0, "ads":[Landroid/accounts/AuthenticatorDescription;
    iget-object v11, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v11

    .line 1433
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1434
    move-object v2, v0

    .local v2, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v2, v4

    .line 1435
    .local v3, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_0

    .line 1436
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1443
    .end local v3    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    iget-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v10, :cond_6

    .line 1444
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1445
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1446
    .local v8, "pC":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1468
    .end local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "len$":I
    .end local v8    # "pC":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1451
    .restart local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "len$":I
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1452
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1453
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1454
    .local v7, "pA":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1456
    .end local v7    # "pA":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1457
    .restart local v7    # "pA":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1459
    .end local v7    # "pA":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1460
    .local v9, "pT":Ljava/lang/String;
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<TargetPackages> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1464
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "pT":Ljava/lang/String;
    .local v4, "i$":I
    :cond_6
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1465
    .restart local v7    # "pA":Ljava/lang/String;
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<AccPackages> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1468
    .end local v7    # "pA":Ljava/lang/String;
    :cond_7
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1469
    return-void
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .locals 17

    .prologue
    .line 951
    const-wide/32 v7, 0x1b77400

    .line 952
    .local v7, "newIntervalGcd":J
    const/4 v4, 0x0

    .line 953
    .local v4, "i":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 954
    .local v9, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v1, v9, v13

    .line 955
    .local v1, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 956
    .local v3, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v13, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v14, 0x1

    if-gt v13, v14, :cond_1

    const/4 v6, 0x1

    .line 957
    .local v6, "isRtc":Z
    :goto_1
    iget-wide v15, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    if-eqz v6, :cond_2

    const-wide/16 v13, 0x0

    :goto_2
    add-long v11, v15, v13

    .line 958
    .local v11, "when":J
    cmp-long v13, v9, v11

    if-gez v13, :cond_0

    iget-wide v13, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_0

    .line 959
    iget-wide v13, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v13, v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v7

    .line 960
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 956
    .end local v6    # "isRtc":Z
    .end local v11    # "when":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .restart local v6    # "isRtc":Z
    :cond_2
    move-wide v13, v1

    .line 957
    goto :goto_2

    .line 963
    .end local v3    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v6    # "isRtc":Z
    :cond_3
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 964
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " GCD_NEW("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_4
    return-void
.end method

.method private removeLocked(Ljava/util/ArrayList;I)Z
    .locals 5
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1408
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1409
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    move v2, v1

    .line 1422
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_0
    return v2

    .line 1414
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1415
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1416
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1417
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 1418
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1419
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2
    move v2, v1

    .line 1422
    .restart local v2    # "bRet":I
    goto :goto_0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .locals 5
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1372
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1373
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    move v2, v1

    .line 1386
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_0
    return v2

    .line 1378
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1379
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1380
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1381
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1382
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1383
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2
    move v2, v1

    .line 1386
    .restart local v2    # "bRet":I
    goto :goto_0
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 5
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1390
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1391
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    move v2, v1

    .line 1404
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_0
    return v2

    .line 1396
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1397
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1398
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1399
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1400
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1401
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2
    move v2, v1

    .line 1404
    .restart local v2    # "bRet":I
    goto :goto_0
.end method

.method private timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .locals 33
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "interval"    # J
    .param p4, "includeItself"    # Z

    .prologue
    .line 1117
    const-wide v17, 0x7fffffffffffffffL

    .line 1118
    .local v17, "nextAlarm":J
    const-wide v23, 0x7fffffffffffffffL

    .line 1119
    .local v23, "nextAlarmWithSameInterval":J
    const-wide v21, 0x7fffffffffffffffL

    .line 1120
    .local v21, "nextAlarmWithMultipleInterval":J
    const-wide v19, 0x7fffffffffffffffL

    .line 1121
    .local v19, "nextAlarmWithDividedInterval":J
    const/4 v5, 0x0

    .line 1122
    .local v5, "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v8, 0x0

    .line 1123
    .local v8, "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v7, 0x0

    .line 1124
    .local v7, "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v6, 0x0

    .line 1125
    .local v6, "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 1126
    .local v25, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v2, v25, v29

    .line 1127
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v29

    cmp-long v29, p2, v29

    if-nez v29, :cond_2

    const/4 v13, 0x1

    .line 1128
    .local v13, "isIntSameAsGcd":Z
    :goto_0
    const-wide/16 v10, 0x0

    .line 1130
    .local v10, "biggestGcd":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1135
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    const-wide/32 v31, 0x1b77400

    cmp-long v29, v29, v31

    if-gtz v29, :cond_0

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    const-wide/32 v31, 0x493e0

    cmp-long v29, v29, v31

    if-ltz v29, :cond_0

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v31

    rem-long v29, v29, v31

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-nez v29, :cond_0

    iget-boolean v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 1138
    if-nez p4, :cond_1

    iget-object v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 1140
    :cond_1
    iget v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_3

    const/4 v14, 0x1

    .line 1141
    .local v14, "isRtc":Z
    :goto_2
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v31, v0

    if-eqz v14, :cond_4

    const-wide/16 v29, 0x0

    :goto_3
    add-long v27, v31, v29

    .line 1145
    .local v27, "when":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v29

    add-long v29, v29, v27

    cmp-long v29, v25, v29

    if-gez v29, :cond_0

    .line 1149
    if-eqz v13, :cond_5

    .line 1150
    cmp-long v29, v27, v17

    if-gez v29, :cond_0

    .line 1151
    move-wide/from16 v17, v27

    .line 1152
    move-object v5, v4

    goto :goto_1

    .line 1127
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "biggestGcd":J
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isIntSameAsGcd":Z
    .end local v14    # "isRtc":Z
    .end local v27    # "when":J
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1140
    .restart local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v10    # "biggestGcd":J
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "isIntSameAsGcd":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .restart local v14    # "isRtc":Z
    :cond_4
    move-wide/from16 v29, v2

    .line 1141
    goto :goto_3

    .line 1156
    .restart local v27    # "when":J
    :cond_5
    invoke-static/range {p2 .. p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 1157
    .local v9, "bigTemp":Ljava/math/BigInteger;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    .line 1161
    .local v15, "longGcd":J
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    cmp-long v29, v29, p2

    if-nez v29, :cond_6

    .line 1162
    cmp-long v29, v27, v23

    if-gez v29, :cond_0

    .line 1163
    move-wide/from16 v23, v27

    .line 1164
    move-object v8, v4

    goto/16 :goto_1

    .line 1170
    :cond_6
    cmp-long v29, v15, p2

    if-nez v29, :cond_7

    .line 1171
    cmp-long v29, v27, v21

    if-gez v29, :cond_0

    .line 1172
    move-wide/from16 v21, v27

    .line 1173
    move-object v7, v4

    goto/16 :goto_1

    .line 1179
    :cond_7
    const-wide/16 v29, 0x0

    cmp-long v29, v15, v29

    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v29

    rem-long v29, v15, v29

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-nez v29, :cond_a

    cmp-long v29, v15, v10

    if-ltz v29, :cond_a

    .line 1182
    cmp-long v29, v15, v10

    if-nez v29, :cond_8

    cmp-long v29, v27, v19

    if-gez v29, :cond_9

    .line 1183
    :cond_8
    move-wide/from16 v19, v27

    .line 1184
    move-object v6, v4

    .line 1186
    :cond_9
    move-wide v10, v15

    goto/16 :goto_1

    .line 1192
    :cond_a
    cmp-long v29, v27, v17

    if-gez v29, :cond_0

    .line 1193
    move-wide/from16 v17, v27

    .line 1194
    move-object v5, v4

    goto/16 :goto_1

    .line 1205
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v9    # "bigTemp":Ljava/math/BigInteger;
    .end local v14    # "isRtc":Z
    .end local v15    # "longGcd":J
    .end local v27    # "when":J
    :cond_b
    if-eqz v6, :cond_c

    move-object v5, v6

    .line 1209
    :cond_c
    if-eqz v7, :cond_d

    move-object v5, v7

    .line 1213
    :cond_d
    if-eqz v8, :cond_e

    move-object v5, v8

    .line 1217
    :cond_e
    return-object v5
.end method

.method private updateRepeatingAlarmLocked(IJ)V
    .locals 19
    .param p1, "hashCode"    # I
    .param p2, "interval"    # J

    .prologue
    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1318
    .local v17, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_0

    .line 1320
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 1321
    move-wide/from16 v0, p2

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1322
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :goto_0
    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1324
    new-instance v3, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, v17

    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v17

    iget-wide v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-object/from16 v0, v17

    iget-wide v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 1326
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TA] Updating the alarm... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1331
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v17    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2
    return-void

    .line 1322
    .restart local v17    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_3
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v4

    goto :goto_0
.end method


# virtual methods
.method public doGarbageCollection(J)V
    .locals 21
    .param p1, "nowRtc"    # J

    .prologue
    .line 1507
    const/4 v8, 0x0

    .line 1508
    .local v8, "newAddedCount":I
    const-string v14, "AlarmManager"

    const-string v15, "<AppSync3 Whitelist>"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1510
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v15

    .line 1511
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1512
    .local v9, "pC":Ljava/lang/String;
    const-string v14, "AlarmManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "(AppSync) "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1515
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "pC":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1514
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v14, "AlarmManager"

    const-string v16, "(AppSync) ---------"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1517
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v14, :cond_2

    .line 1518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist()V

    .line 1519
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v14

    add-int/2addr v8, v14

    .line 1521
    :cond_2
    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(AppSync) ### "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " added ###"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1523
    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(SyncScheduler) Processing time (avg/max) : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%.2f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "(UID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") [ms]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1528
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v2, v14, v17

    .line 1532
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1533
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1534
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1538
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v14, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_7

    .line 1539
    iget v14, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_5

    const/4 v6, 0x1

    .line 1540
    .local v6, "isRtc":Z
    :goto_2
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    if-eqz v6, :cond_6

    const-wide/16 v14, 0x0

    :goto_3
    add-long v12, v17, v14

    .line 1544
    .local v12, "when":J
    iget-wide v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v17, 0x3

    mul-long v14, v14, v17

    add-long/2addr v14, v12

    cmp-long v14, v14, p1

    if-gez v14, :cond_7

    .line 1545
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1559
    .end local v2    # "TIME_SKEW":J
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v6    # "isRtc":Z
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v12    # "when":J
    :catchall_1
    move-exception v14

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .line 1539
    .restart local v2    # "TIME_SKEW":J
    .restart local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .restart local v6    # "isRtc":Z
    :cond_6
    move-wide v14, v2

    .line 1540
    goto :goto_3

    .line 1549
    .end local v6    # "isRtc":Z
    :cond_7
    :try_start_3
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1551
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1552
    .local v10, "time":Landroid/text/format/Time;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    iget v14, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_8

    const-wide/16 v14, 0x0

    :goto_4
    add-long v14, v14, v17

    invoke-virtual {v10, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 1553
    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    .line 1554
    .local v11, "timeStr":Ljava/lang/String;
    const-string v15, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[AppSync] T:"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ", INT:"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, "("

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-boolean v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v11    # "timeStr":Ljava/lang/String;
    :cond_8
    move-wide v14, v2

    .line 1552
    goto/16 :goto_4

    .line 1554
    .restart local v11    # "timeStr":Ljava/lang/String;
    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .line 1558
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "time":Landroid/text/format/Time;
    .end local v11    # "timeStr":Ljava/lang/String;
    :cond_a
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " GCD:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_b
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(J)V

    .line 1561
    :cond_c
    return-void
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;J)Z
    .locals 10
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "triggerAtTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 1224
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v3

    .line 1225
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1229
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v2, v4, v8

    if-lez v2, :cond_0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v2, v4, p2

    if-eqz v2, :cond_1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    sub-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    :cond_1
    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    iget v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-eq v2, v4, :cond_0

    .line 1246
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OOI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/4 v2, 0x1

    monitor-exit v3

    .line 1251
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :goto_0
    return v2

    .line 1250
    :cond_2
    monitor-exit v3

    .line 1251
    const/4 v2, 0x0

    goto :goto_0

    .line 1250
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->queryAccounts()V

    .line 1473
    return-void
.end method

.method public removeRepeatingAlarm(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1367
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;I)V

    .line 1369
    :cond_1
    return-void

    .line 1367
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1334
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1339
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1342
    :cond_0
    monitor-exit v1

    .line 1343
    return-void

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1354
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;I)V

    .line 1356
    :cond_1
    return-void

    .line 1354
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .locals 57
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 483
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 484
    .local v39, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v43, v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 823
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v39    # "pkg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v43

    .line 486
    :catch_0
    move-exception v25

    .line 487
    .local v25, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->printStackTrace()V

    .line 496
    .end local v25    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v0, v6

    move-wide/from16 v45, v0

    .line 497
    .local v45, "sTime":D
    new-instance v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 498
    .local v15, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v43, v0

    .line 499
    .local v43, "returnValue":J
    const-wide/16 v30, -0x1

    .line 500
    .local v30, "intervalValue":J
    const-wide/16 v19, 0x0

    .line 501
    .local v19, "distRounded":J
    const-wide/16 v21, 0x0

    .line 502
    .local v21, "distanceToAlarm":J
    const-wide/16 v23, 0x0

    .line 503
    .local v23, "distanceToAlarmOriginal":J
    const-wide/16 v11, 0x0

    .line 504
    .local v11, "SYNC_TOLERANCE_VALUE":J
    iget v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v3, v6, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 505
    .local v33, "now":J
    :goto_2
    const/16 v16, 0x0

    .line 509
    .local v16, "alarmInfoStr":Ljava/lang/String;
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v52, 0x0

    cmp-long v3, v6, v52

    if-nez v3, :cond_c

    .line 510
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v21, v6, v33

    .line 511
    const-wide/16 v6, 0x0

    cmp-long v3, v21, v6

    if-gez v3, :cond_3

    .line 512
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 513
    const-wide/16 v6, -0x1

    mul-long v21, v21, v6

    .line 515
    :cond_3
    move-wide/from16 v23, v21

    .line 528
    :goto_3
    const-wide/32 v6, 0x325aa0

    cmp-long v3, v21, v6

    if-ltz v3, :cond_e

    const-wide/32 v11, 0xea60

    .line 530
    :goto_4
    move-wide/from16 v0, v21

    long-to-double v6, v0

    long-to-double v0, v11

    move-wide/from16 v52, v0

    div-double v6, v6, v52

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    mul-long v19, v6, v11

    .line 532
    move-wide/from16 v0, v23

    long-to-double v6, v0

    long-to-double v0, v11

    move-wide/from16 v52, v0

    div-double v6, v6, v52

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    mul-long v23, v6, v11

    .line 537
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v52, 0x0

    cmp-long v3, v6, v52

    if-eqz v3, :cond_4

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    .line 539
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    move-object/from16 v52, v0

    monitor-enter v52

    .line 540
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v53

    sub-long v13, v6, v53

    .line 541
    .local v13, "TIME_SKEW":J
    iget-object v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v40

    .line 545
    .local v40, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->mGmsLocationBundling:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_14

    .line 546
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 547
    const-string v3, "AlarmManager"

    const-string v6, "XXX:: bundling on"

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    .line 551
    .local v35, "nowElapsed":J
    const/16 v32, 0x0

    .line 552
    .local v32, "isExtendingEnabled":Z
    const/16 v47, 0x0

    .line 554
    .local v47, "strAction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-nez v3, :cond_f

    .line 555
    const-wide/32 v6, 0xa4cb80

    add-long v6, v6, v35

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v16

    .line 581
    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .local v17, "alarmInfoStr":Ljava/lang/String;
    :goto_5
    :try_start_2
    const-string v3, "com.google.android.gms"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 582
    if-nez v47, :cond_6

    iget-object v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v47

    .line 583
    :cond_6
    if-eqz v47, :cond_12

    const-string v3, "com.google.android.gms.nlp.*"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 584
    const/16 v32, 0x1

    .line 593
    :cond_7
    :goto_6
    if-eqz v32, :cond_15

    .line 594
    const-wide/16 v26, 0x0

    .line 595
    .local v26, "extraDistance":J
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-wide/from16 v53, v0

    cmp-long v3, v6, v53

    if-lez v3, :cond_8

    .line 596
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-wide/from16 v53, v0

    sub-long v6, v6, v53

    const-wide/32 v53, 0xa4cb80

    div-long v6, v6, v53

    const-wide/16 v53, 0x1

    add-long v6, v6, v53

    const-wide/32 v53, 0xa4cb80

    mul-long v26, v6, v53

    .line 599
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-wide/from16 v53, v0

    iget v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v3, v6, :cond_13

    move-wide v6, v13

    :goto_7
    add-long v6, v6, v53

    add-long v6, v6, v26

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 601
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    add-long v6, v6, v26

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 602
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-lez v3, :cond_9

    .line 603
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/32 v53, 0xa4cb80

    div-long v6, v6, v53

    const-wide/16 v53, 0x1

    add-long v6, v6, v53

    const-wide/32 v53, 0xa4cb80

    mul-long v6, v6, v53

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iput-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 606
    :cond_9
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v53, v0

    add-long v6, v6, v53

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 607
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 608
    new-instance v50, Landroid/text/format/Time;

    invoke-direct/range {v50 .. v50}, Landroid/text/format/Time;-><init>()V

    .line 609
    .local v50, "time":Landroid/text/format/Time;
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/16 v53, 0x1

    move/from16 v0, v53

    if-gt v3, v0, :cond_a

    const-wide/16 v13, 0x0

    .end local v13    # "TIME_SKEW":J
    :cond_a
    add-long/2addr v6, v13

    move-object/from16 v0, v50

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 610
    invoke-virtual/range {v50 .. v50}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v51

    .line 611
    .local v51, "timeStr":Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> T:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", INT:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 613
    .end local v17    # "alarmInfoStr":Ljava/lang/String;
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    :try_start_3
    const-string v3, "AlarmManager"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v50    # "time":Landroid/text/format/Time;
    .end local v51    # "timeStr":Ljava/lang/String;
    :goto_8
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    monitor-exit v52
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v43, v6

    goto/16 :goto_0

    .line 488
    .end local v11    # "SYNC_TOLERANCE_VALUE":J
    .end local v15    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .end local v19    # "distRounded":J
    .end local v21    # "distanceToAlarm":J
    .end local v23    # "distanceToAlarmOriginal":J
    .end local v26    # "extraDistance":J
    .end local v30    # "intervalValue":J
    .end local v32    # "isExtendingEnabled":Z
    .end local v33    # "now":J
    .end local v35    # "nowElapsed":J
    .end local v40    # "pkgName":Ljava/lang/String;
    .end local v43    # "returnValue":J
    .end local v45    # "sTime":D
    .end local v47    # "strAction":Ljava/lang/String;
    :catch_1
    move-exception v25

    .line 489
    .local v25, "e":Ljava/lang/NullPointerException;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 504
    .end local v25    # "e":Ljava/lang/NullPointerException;
    .restart local v11    # "SYNC_TOLERANCE_VALUE":J
    .restart local v15    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v19    # "distRounded":J
    .restart local v21    # "distanceToAlarm":J
    .restart local v23    # "distanceToAlarmOriginal":J
    .restart local v30    # "intervalValue":J
    .restart local v43    # "returnValue":J
    .restart local v45    # "sTime":D
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v33

    goto/16 :goto_2

    .line 521
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    .restart local v33    # "now":J
    :cond_c
    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v21, v0

    .line 522
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v3, v6, v33

    if-gez v3, :cond_d

    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v23, v0

    :goto_9
    goto/16 :goto_3

    :cond_d
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v23, v6, v33

    goto :goto_9

    .line 528
    :cond_e
    const-wide/16 v11, 0x2710

    goto/16 :goto_4

    .line 558
    .restart local v13    # "TIME_SKEW":J
    .restart local v32    # "isExtendingEnabled":Z
    .restart local v35    # "nowElapsed":J
    .restart local v40    # "pkgName":Ljava/lang/String;
    .restart local v47    # "strAction":Ljava/lang/String;
    :cond_f
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-wide/from16 v41, v0

    .line 559
    .local v41, "prevNextSlotInPSM":J
    :goto_a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    cmp-long v3, v6, v35

    if-gez v3, :cond_10

    .line 560
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    const-wide/32 v53, 0xa4cb80

    add-long v6, v6, v53

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    goto :goto_a

    .line 804
    .end local v13    # "TIME_SKEW":J
    .end local v32    # "isExtendingEnabled":Z
    .end local v35    # "nowElapsed":J
    .end local v40    # "pkgName":Ljava/lang/String;
    .end local v41    # "prevNextSlotInPSM":J
    .end local v47    # "strAction":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :goto_b
    monitor-exit v52
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 562
    .restart local v13    # "TIME_SKEW":J
    .restart local v32    # "isExtendingEnabled":Z
    .restart local v35    # "nowElapsed":J
    .restart local v40    # "pkgName":Ljava/lang/String;
    .restart local v41    # "prevNextSlotInPSM":J
    .restart local v47    # "strAction":Ljava/lang/String;
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    cmp-long v3, v41, v6

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-eqz v3, :cond_31

    .line 563
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-wide/from16 v53, v0

    cmp-long v3, v6, v53

    if-gtz v3, :cond_11

    .line 564
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-wide/from16 v53, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-wide/from16 v55, v0

    sub-long v53, v53, v55

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v55

    div-long v53, v53, v55

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v55

    mul-long v53, v53, v55

    add-long v6, v6, v53

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    .line 571
    :goto_c
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 572
    new-instance v50, Landroid/text/format/Time;

    invoke-direct/range {v50 .. v50}, Landroid/text/format/Time;-><init>()V

    .line 573
    .restart local v50    # "time":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    add-long/2addr v6, v13

    move-object/from16 v0, v50

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 574
    invoke-virtual/range {v50 .. v50}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v51

    .line 575
    .restart local v51    # "timeStr":Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> mNextSlotInPSM: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 576
    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .restart local v17    # "alarmInfoStr":Ljava/lang/String;
    :try_start_6
    const-string v3, "AlarmManager"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    .line 804
    .end local v13    # "TIME_SKEW":J
    .end local v32    # "isExtendingEnabled":Z
    .end local v35    # "nowElapsed":J
    .end local v41    # "prevNextSlotInPSM":J
    .end local v47    # "strAction":Ljava/lang/String;
    .end local v50    # "time":Landroid/text/format/Time;
    .end local v51    # "timeStr":Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "alarmInfoStr":Ljava/lang/String;
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_b

    .line 568
    .restart local v13    # "TIME_SKEW":J
    .restart local v32    # "isExtendingEnabled":Z
    .restart local v35    # "nowElapsed":J
    .restart local v41    # "prevNextSlotInPSM":J
    .restart local v47    # "strAction":Ljava/lang/String;
    :cond_11
    :try_start_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextAlarmWhen:J

    move-wide/from16 v53, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J

    move-wide/from16 v55, v0

    sub-long v53, v53, v55

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v55

    div-long v53, v53, v55

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v55

    mul-long v53, v53, v55

    sub-long v6, v6, v53

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mNextSlotInPSM:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_c

    .line 587
    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .end local v41    # "prevNextSlotInPSM":J
    .restart local v17    # "alarmInfoStr":Ljava/lang/String;
    :cond_12
    :try_start_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 588
    .local v18, "comp":Landroid/content/ComponentName;
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "uploader"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 589
    const/16 v32, 0x1

    goto/16 :goto_6

    .line 599
    .end local v18    # "comp":Landroid/content/ComponentName;
    .restart local v26    # "extraDistance":J
    :cond_13
    const-wide/16 v6, 0x0

    goto/16 :goto_7

    .end local v17    # "alarmInfoStr":Ljava/lang/String;
    .end local v26    # "extraDistance":J
    .end local v32    # "isExtendingEnabled":Z
    .end local v35    # "nowElapsed":J
    .end local v47    # "strAction":Ljava/lang/String;
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    :cond_14
    move-object/from16 v17, v16

    .line 619
    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .restart local v17    # "alarmInfoStr":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v3, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-ne v3, v6, :cond_24

    .line 620
    const-wide/16 v48, 0x0

    .line 624
    .local v48, "tempPeriodicity":J
    const-string v3, "com.android.email"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 625
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-nez v3, :cond_16

    iget-object v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    .line 626
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    if-nez v3, :cond_17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    .line 627
    :cond_17
    iget-object v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v29

    .line 628
    .local v29, "intent":Landroid/content/Intent;
    if-eqz v29, :cond_19

    .line 629
    const-string v3, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v6, -0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 630
    .local v4, "accountId":J
    const-string v3, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    .line 634
    .local v8, "mailAccountInfos":[J
    const-wide/16 v9, 0x2

    .line 635
    .local v9, "ACCOUNT_INFO_UNIT_LENGTH":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Email) ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_18
    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_1d

    const-string v3, "com.android.email.intent.action.ACTION_RESET_IDLE"

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 642
    move-wide/from16 v0, v19

    long-to-double v6, v0

    const-wide v53, 0x41124f8000000000L    # 300000.0

    div-double v6, v6, v53

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v53, 0x493e0

    mul-long v48, v6, v53

    move-wide/from16 v0, v48

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 701
    .end local v4    # "accountId":J
    .end local v8    # "mailAccountInfos":[J
    .end local v9    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v29    # "intent":Landroid/content/Intent;
    :cond_19
    :goto_d
    const-wide/16 v6, 0x0

    cmp-long v3, v48, v6

    if-ltz v3, :cond_1a

    .line 702
    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    .line 717
    .end local v48    # "tempPeriodicity":J
    :cond_1a
    :goto_e
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TA] Periodicity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v30

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v53, v0

    move-wide/from16 v0, v53

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_1b
    const-wide/16 v6, 0x0

    cmp-long v3, v30, v6

    if-nez v3, :cond_28

    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v53, 0x493e0

    cmp-long v3, v6, v53

    if-ltz v3, :cond_28

    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v53, 0x1b77400

    cmp-long v3, v6, v53

    if-gtz v3, :cond_28

    .line 729
    const-wide/16 v6, 0x0

    iput-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 733
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v16, v17

    .line 803
    .end local v13    # "TIME_SKEW":J
    .end local v17    # "alarmInfoStr":Ljava/lang/String;
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    :goto_f
    :try_start_9
    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v43, v0

    .line 804
    monitor-exit v52
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    sub-double v37, v6, v45

    .line 809
    .local v37, "op_period":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    move-wide/from16 v52, v0

    move-wide/from16 v0, v52

    long-to-double v0, v0

    move-wide/from16 v52, v0

    mul-double v6, v6, v52

    add-double v6, v6, v37

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x1

    add-long v54, v54, v52

    move-wide/from16 v0, v54

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    const-wide/16 v54, 0x1

    add-long v52, v52, v54

    move-wide/from16 v0, v52

    long-to-double v0, v0

    move-wide/from16 v52, v0

    div-double v6, v6, v52

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    .line 810
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    cmpl-double v3, v37, v6

    if-lez v3, :cond_1c

    .line 811
    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    .line 812
    iget-object v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    int-to-long v6, v3

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    .line 814
    :cond_1c
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 815
    const-string v3, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " (SyncScheduler) Processed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v37

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (avg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%.2f"

    const/16 v52, 0x1

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, v52

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") [ms]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    if-eqz v16, :cond_1

    const-string v3, "AlarmManager"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 648
    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .end local v37    # "op_period":D
    .restart local v4    # "accountId":J
    .restart local v8    # "mailAccountInfos":[J
    .restart local v9    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .restart local v13    # "TIME_SKEW":J
    .restart local v17    # "alarmInfoStr":Ljava/lang/String;
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v48    # "tempPeriodicity":J
    :cond_1d
    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_19

    if-eqz v8, :cond_19

    :try_start_a
    array-length v3, v8

    int-to-long v6, v3

    const-wide/16 v53, 0x2

    rem-long v6, v6, v53

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-nez v3, :cond_19

    .line 650
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v6

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 651
    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v48, v0

    .end local v48    # "tempPeriodicity":J
    move-wide/from16 v0, v48

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .restart local v48    # "tempPeriodicity":J
    goto/16 :goto_d

    .line 658
    .end local v4    # "accountId":J
    .end local v8    # "mailAccountInfos":[J
    .end local v9    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v29    # "intent":Landroid/content/Intent;
    :cond_1e
    const-wide/32 v6, 0x1b77400

    cmp-long v3, v19, v6

    if-gtz v3, :cond_19

    const-wide/32 v6, 0x493e0

    cmp-long v3, v19, v6

    if-ltz v3, :cond_19

    const-wide/32 v6, 0x186a0

    rem-long v6, v19, v6

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-eqz v3, :cond_1f

    const-wide/32 v6, 0xea60

    rem-long v6, v19, v6

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-nez v3, :cond_19

    .line 663
    :cond_1f
    const-wide/32 v6, 0x493e0

    rem-long v6, v19, v6

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-nez v3, :cond_20

    .line 664
    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 665
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-lez v3, :cond_23

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :goto_10
    iput-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 671
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v3, :cond_21

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, v19

    invoke-virtual {v3, v15, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v48

    .line 677
    :cond_21
    const-wide/16 v6, 0x0

    cmp-long v3, v48, v6

    if-ltz v3, :cond_22

    .line 682
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-eqz v3, :cond_22

    .line 683
    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 691
    :cond_22
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v3, v23, v6

    if-gez v3, :cond_19

    .line 692
    const-wide/16 v48, 0x0

    .line 693
    const-wide/16 v6, 0x0

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 694
    const-wide/16 v6, 0x0

    iput-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 695
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    goto/16 :goto_d

    .line 665
    :cond_23
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-wide/from16 v53, v0

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v55, v0

    sub-long v53, v53, v55

    move-wide/from16 v0, v53

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v6

    goto :goto_10

    .line 706
    .end local v48    # "tempPeriodicity":J
    :cond_24
    const-wide/32 v6, 0x1b77400

    cmp-long v3, v19, v6

    if-gtz v3, :cond_1a

    const-wide/32 v6, 0x493e0

    cmp-long v3, v19, v6

    if-ltz v3, :cond_1a

    const-wide/32 v6, 0x186a0

    rem-long v6, v19, v6

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-eqz v3, :cond_25

    const-wide/32 v6, 0xea60

    rem-long v6, v19, v6

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-nez v3, :cond_1a

    .line 709
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, v19

    invoke-virtual {v3, v15, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v30

    .line 710
    :cond_26
    const-wide/16 v6, 0x0

    cmp-long v3, v30, v6

    if-lez v3, :cond_1a

    .line 711
    move-wide/from16 v0, v19

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 712
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-lez v3, :cond_27

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :goto_11
    iput-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    goto/16 :goto_e

    :cond_27
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-wide/from16 v53, v0

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v55, v0

    sub-long v53, v53, v55

    move-wide/from16 v0, v53

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v6

    goto :goto_11

    .line 738
    :cond_28
    const-wide/16 v6, 0x0

    cmp-long v3, v30, v6

    if-lez v3, :cond_2f

    .line 740
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v53, 0x493e0

    cmp-long v3, v6, v53

    if-ltz v3, :cond_2d

    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v53, 0x1b77400

    cmp-long v3, v6, v53

    if-gtz v3, :cond_2d

    .line 742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v53, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v53

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 751
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v53

    rem-long v6, v6, v53

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-nez v3, :cond_2c

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v7, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 753
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    .line 779
    :cond_29
    :goto_12
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-boolean v3, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v3, :cond_2a

    .line 783
    iget v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v3, v6, :cond_2e

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v6, v13

    :goto_13
    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 788
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v53, v0

    add-long v6, v6, v53

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 792
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 795
    :cond_2a
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 796
    new-instance v50, Landroid/text/format/Time;

    invoke-direct/range {v50 .. v50}, Landroid/text/format/Time;-><init>()V

    .line 797
    .restart local v50    # "time":Landroid/text/format/Time;
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/16 v53, 0x1

    move/from16 v0, v53

    if-gt v3, v0, :cond_2b

    const-wide/16 v13, 0x0

    .end local v13    # "TIME_SKEW":J
    :cond_2b
    add-long/2addr v6, v13

    move-object/from16 v0, v50

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 798
    invoke-virtual/range {v50 .. v50}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v51

    .line 799
    .restart local v51    # "timeStr":Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---> T:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", INT:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v17    # "alarmInfoStr":Ljava/lang/String;
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_f

    .line 761
    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .end local v50    # "time":Landroid/text/format/Time;
    .end local v51    # "timeStr":Ljava/lang/String;
    .restart local v13    # "TIME_SKEW":J
    .restart local v17    # "alarmInfoStr":Ljava/lang/String;
    :cond_2c
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v7, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto/16 :goto_12

    .line 767
    :cond_2d
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v53, 0x0

    cmp-long v3, v6, v53

    if-nez v3, :cond_29

    .line 772
    const-wide/32 v6, 0x1b77400

    cmp-long v3, v30, v6

    if-gtz v3, :cond_29

    const-wide/32 v6, 0x493e0

    cmp-long v3, v30, v6

    if-ltz v3, :cond_29

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v7, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 776
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    goto/16 :goto_12

    .line 783
    :cond_2e
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_13

    :cond_2f
    move-object/from16 v16, v17

    .end local v17    # "alarmInfoStr":Ljava/lang/String;
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_f

    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .restart local v17    # "alarmInfoStr":Ljava/lang/String;
    .restart local v26    # "extraDistance":J
    .restart local v32    # "isExtendingEnabled":Z
    .restart local v35    # "nowElapsed":J
    .restart local v47    # "strAction":Ljava/lang/String;
    :cond_30
    move-object/from16 v16, v17

    .end local v17    # "alarmInfoStr":Ljava/lang/String;
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_8

    .end local v26    # "extraDistance":J
    .restart local v41    # "prevNextSlotInPSM":J
    :cond_31
    move-object/from16 v17, v16

    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .restart local v17    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_5
.end method

.method public updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .prologue
    .line 1481
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v3

    .line 1485
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1486
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1487
    iput p2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1488
    iput-wide p3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 1492
    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    if-eqz v2, :cond_2

    .line 1493
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 1494
    monitor-exit v3

    .line 1504
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_1
    :goto_0
    return-void

    .line 1499
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V

    goto :goto_0

    .line 1499
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .locals 6
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v0

    .line 1477
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 3
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 833
    const/4 v0, 0x0

    .line 834
    .local v0, "bRet":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    .line 835
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    .line 836
    monitor-exit v2

    .line 837
    return v0

    .line 836
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 26
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 847
    const/4 v8, 0x0

    .line 848
    .local v8, "bRet":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 849
    .local v14, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 850
    .local v12, "nowElapsed":J
    sub-long v5, v14, v12

    .line 851
    .local v5, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 855
    .local v7, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_0

    .line 857
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v16, v0

    .line 859
    .local v16, "tempRepeatInterval":J
    :goto_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 860
    const-wide/16 v20, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    add-long v9, v20, v22

    .line 861
    .local v9, "count":J
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    mul-long v22, v9, v16

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 866
    iget-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_2

    :cond_1
    iget-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 867
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v20

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 869
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    rem-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_4

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v20

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 884
    :goto_1
    iget-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 885
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 886
    const/4 v8, 0x1

    .line 891
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 892
    :goto_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    move-wide/from16 v20, v14

    :goto_3
    cmp-long v20, v22, v20

    if-lez v20, :cond_6

    .line 893
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v16

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_2

    .line 857
    .end local v9    # "count":J
    .end local v16    # "tempRepeatInterval":J
    :cond_3
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    goto/16 :goto_0

    .line 878
    .restart local v9    # "count":J
    .restart local v16    # "tempRepeatInterval":J
    :cond_4
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto :goto_1

    :cond_5
    move-wide/from16 v20, v12

    .line 892
    goto :goto_3

    .line 899
    :cond_6
    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v5

    :goto_4
    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 901
    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v5

    :goto_5
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 906
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v20, v0

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 907
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 908
    const-wide/16 v20, 0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 910
    :cond_7
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 911
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 912
    .local v18, "time":Landroid/text/format/Time;
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_8

    const-wide/16 v5, 0x0

    .end local v5    # "TIME_SKEW":J
    :cond_8
    add-long v20, v20, v5

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 913
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v19

    .line 914
    .local v19, "timeStr":Ljava/lang/String;
    const-string v20, "AlarmManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "--->> T:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", INT:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") count:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    .end local v7    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v9    # "count":J
    .end local v16    # "tempRepeatInterval":J
    .end local v18    # "time":Landroid/text/format/Time;
    .end local v19    # "timeStr":Ljava/lang/String;
    :cond_9
    return v8

    .line 899
    .restart local v5    # "TIME_SKEW":J
    .restart local v7    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v9    # "count":J
    .restart local v16    # "tempRepeatInterval":J
    :cond_a
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    goto/16 :goto_4

    .line 901
    :cond_b
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    goto/16 :goto_5
.end method
