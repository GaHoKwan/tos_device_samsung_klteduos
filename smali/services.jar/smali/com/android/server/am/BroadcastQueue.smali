.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$AppNotResponding;
    }
.end annotation


# static fields
.field static final BROADCAST_INTENT_MSG:I = 0xc8

.field static final BROADCAST_TIMEOUT_MSG:I = 0xc9

.field static final DEBUG_BROADCAST:Z = false

.field static final DEBUG_BROADCAST_LIGHT:Z = false

.field static final DEBUG_MU:Z = false

.field static final MAX_ABORTED_BROADCAST_HISTORY:I

.field static final MAX_BROADCAST_HISTORY:I

.field static final MAX_BROADCAST_SUMMARY_HISTORY:I

.field static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field static final TAG_MU:Ljava/lang/String; = "ActivityManagerServiceMU"


# instance fields
.field final mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field final mBroadcastSummaryHistoryToString:[Ljava/lang/String;

.field mBroadcastsScheduled:Z

.field final mDelayBehindServices:Z

.field final mHandler:Landroid/os/Handler;

.field final mOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mParallelBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

.field mPendingBroadcastRecvIndex:I

.field mPendingBroadcastTimeoutMessage:Z

.field final mQueueName:Ljava/lang/String;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mTimeoutPeriod:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    .line 73
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    :goto_1
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 155
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    return-void

    .line 72
    :cond_0
    const/16 v0, 0x32

    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x12c

    goto :goto_1
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeoutPeriod"    # J
    .param p5, "allowDelayBehindServices"    # Z

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 117
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 127
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 160
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 166
    new-instance v0, Lcom/android/server/am/BroadcastQueue$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueue$1;-><init>(Lcom/android/server/am/BroadcastQueue;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    .line 200
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 201
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 202
    iput-wide p3, p0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    .line 203
    iput-boolean p5, p0, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    .line 204
    return-void
.end method

.method private final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1258
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-gez v0, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    sget v2, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 1265
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aput-object p1, v0, v3

    .line 1272
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    sget v2, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/server/am/BroadcastQueue;->makeBroadcastSummaryToStringLocked(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private final deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V
    .locals 18
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "ordered"    # Z

    .prologue
    .line 473
    const/16 v17, 0x0

    .line 476
    .local v17, "skip":Z
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 477
    .local v15, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 478
    .local v11, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v2, v15, v11}, Lcom/sec/android/emergencymode/EmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    const/16 v17, 0x1

    .line 481
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping deliverToRegisteredReceiverLocked ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": broadcast skipped"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v14

    .line 493
    .local v14, "perm":I
    if-eqz v14, :cond_1

    .line 494
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to registered receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v17, 0x1

    .line 503
    .end local v14    # "perm":I
    :cond_1
    if-nez v17, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v6, Lcom/android/server/am/ReceiverList;->uid:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v14

    .line 506
    .restart local v14    # "perm":I
    if-eqz v14, :cond_2

    .line 507
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: receiving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to sender "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/16 v17, 0x1

    .line 518
    .end local v14    # "perm":I
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v13

    .line 521
    .local v13, "mode":I
    if-eqz v13, :cond_3

    .line 525
    const/16 v17, 0x1

    .line 528
    .end local v13    # "mode":I
    :cond_3
    if-nez v17, :cond_4

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v17, 0x1

    .line 533
    :cond_4
    :goto_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v2, :cond_6

    .line 535
    :cond_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v2, :cond_a

    const-string v16, "killed by am"

    .line 537
    .local v16, "reason":Ljava/lang/String;
    :goto_1
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping deliver ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v17, 0x1

    .line 542
    .end local v16    # "reason":Ljava/lang/String;
    :cond_6
    if-nez v17, :cond_8

    .line 546
    if-eqz p3, :cond_7

    .line 547
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 548
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 549
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 550
    const/4 v2, 0x2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 551
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    .line 557
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 558
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 568
    :cond_7
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v2 .. v10}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 571
    if-eqz p3, :cond_8

    .line 572
    const/4 v2, 0x3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_8
    :goto_2
    return-void

    .line 529
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 535
    :cond_a
    const-string v16, "crashing"

    goto/16 :goto_1

    .line 574
    :catch_0
    move-exception v12

    .line 575
    .local v12, "e":Landroid/os/RemoteException;
    const-string v2, "BroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure sending broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    if-eqz p3, :cond_8

    .line 577
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 578
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 579
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 580
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_8

    .line 581
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    goto :goto_2
.end method

.method private final makeBroadcastSummaryToStringLocked(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1307
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1308
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v2, v3, v3, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    if-eqz v0, :cond_0

    .line 1310
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1311
    const-string v2, "    extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 10
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 460
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 469
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    goto :goto_0
.end method

.method private final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 248
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 251
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 252
    iput-object p2, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 253
    iput-object p1, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 254
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 255
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 259
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    const/4 v10, 0x0

    .line 266
    .local v10, "started":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 267
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v7, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v8, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v9, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    const/4 v10, 0x1

    .line 275
    if-nez v10, :cond_1

    .line 278
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 279
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 280
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 283
    :cond_1
    return-void

    .line 275
    :catchall_0
    move-exception v0

    if-nez v10, :cond_2

    .line 278
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 279
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 280
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    :cond_2
    throw v0
.end method


# virtual methods
.method public backgroundServicesFinishedLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 445
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 447
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 448
    const-string v1, "ActivityManager"

    const-string v2, "Resuming delayed broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 450
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 451
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 454
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    return-void
.end method

.method final broadcastTimeoutLocked(Z)V
    .locals 19
    .param p1, "fromMsg"    # Z

    .prologue
    .line 1153
    if-eqz p1, :cond_0

    .line 1154
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1157
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1255
    :cond_1
    :goto_0
    return-void

    .line 1161
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 1162
    .local v15, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    .line 1163
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_4

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v3, :cond_3

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    add-long v17, v5, v7

    .line 1168
    .local v17, "timeoutTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    goto :goto_0

    .line 1171
    .end local v17    # "timeoutTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v3, :cond_1

    .line 1178
    iget-wide v5, v4, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    add-long v17, v5, v7

    .line 1179
    .restart local v17    # "timeoutTime":J
    cmp-long v3, v17, v15

    if-lez v3, :cond_4

    .line 1188
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    goto :goto_0

    .line 1193
    .end local v17    # "timeoutTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/BroadcastRecord;

    .line 1194
    .local v13, "br":Lcom/android/server/am/BroadcastRecord;
    iget v3, v13, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    .line 1199
    const-string v5, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waited long enough for: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v13, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object v3, v13, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v3, 0x0

    iput-object v3, v13, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1202
    const/4 v3, 0x0

    iput v3, v13, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1203
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    goto/16 :goto_0

    .line 1199
    :cond_5
    const-string v3, "(null)"

    goto :goto_1

    .line 1207
    :cond_6
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout of broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - receiver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", started "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v6, v15, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms ago"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iput-wide v15, v4, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1210
    iget v3, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 1213
    iget v3, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-gtz v3, :cond_7

    .line 1214
    const-string v3, "BroadcastQueue"

    const-string v5, "Timeout on receiver with nextReceiver <= 0"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1218
    :cond_7
    const/4 v11, 0x0

    .line 1219
    .local v11, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v10, 0x0

    .line 1221
    .local v10, "anrMessage":Ljava/lang/String;
    iget-object v3, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v5, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 1222
    .local v14, "curReceiver":Ljava/lang/Object;
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver during timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1224
    instance-of v3, v14, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_b

    move-object v12, v14

    .line 1225
    check-cast v12, Lcom/android/server/am/BroadcastFilter;

    .line 1226
    .local v12, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v3, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v3, :cond_8

    iget-object v3, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->pid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v5, :cond_8

    .line 1228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1229
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    iget-object v6, v12, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v6, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v11, v0

    .line 1231
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    .end local v12    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_8
    :goto_2
    if-eqz v11, :cond_9

    .line 1238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1241
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v3, v4, :cond_a

    .line 1242
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1246
    :cond_a
    iget v5, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v8, v4, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1250
    if-eqz v10, :cond_1

    .line 1253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/BroadcastQueue$AppNotResponding;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11, v10}, Lcom/android/server/am/BroadcastQueue$AppNotResponding;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1231
    .restart local v12    # "bf":Lcom/android/server/am/BroadcastFilter;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1234
    .end local v12    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_b
    iget-object v11, v4, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    goto :goto_2
.end method

.method final cancelBroadcastTimeoutLocked()V
    .locals 2

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1150
    :cond_0
    return-void
.end method

.method checkKNOXSystemStatus()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1117
    :try_start_0
    const-string v4, "container_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    .line 1121
    .local v0, "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    if-nez v0, :cond_0

    .line 1122
    const-string v3, "BroadcastQueue"

    const-string v4, "KNOX Service is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .end local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :goto_0
    return v2

    .line 1125
    .restart local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_0
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMountStatus(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1126
    const-string v3, "BroadcastQueue"

    const-string v4, "KNOX system not mount"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1129
    .end local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BroadcastQueue"

    const-string v4, "KNOX : get status exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "containerService":Lcom/sec/knox/container/IEnterpriseContainerService;
    :cond_1
    move v2, v3

    .line 1133
    goto :goto_0
.end method

.method final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "needSep"    # Z

    .prologue
    .line 1319
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v10, :cond_b

    .line 1321
    :cond_0
    const/4 v7, 0x0

    .line 1322
    .local v7, "printed":Z
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    .line 1323
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 1324
    .local v2, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_1

    iget-object v10, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1322
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1327
    :cond_1
    if-nez v7, :cond_3

    .line 1328
    if-eqz p7, :cond_2

    .line 1329
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1331
    :cond_2
    const/16 p7, 0x1

    .line 1332
    const/4 v7, 0x1

    .line 1333
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Active broadcasts ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Active Broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    const-string v10, "    "

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v10}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    .line 1338
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_4
    const/4 v7, 0x0

    .line 1339
    const/16 p7, 0x1

    .line 1340
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    :goto_2
    if-ltz v4, :cond_8

    .line 1341
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 1342
    .restart local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_5

    iget-object v10, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1340
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1345
    :cond_5
    if-nez v7, :cond_7

    .line 1346
    if-eqz p7, :cond_6

    .line 1347
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1349
    :cond_6
    const/16 p7, 0x1

    .line 1350
    const/4 v7, 0x1

    .line 1351
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Active ordered broadcasts ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Active Ordered Broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/BroadcastRecord;

    const-string v11, "    "

    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v11}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 1356
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_8
    if-eqz p6, :cond_9

    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v10, v10, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1358
    :cond_9
    if-eqz p7, :cond_a

    .line 1359
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1361
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Pending broadcast ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v10, :cond_11

    .line 1363
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const-string v11, "    "

    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v11}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1367
    :goto_4
    const/16 p7, 0x1

    .line 1372
    .end local v4    # "i":I
    .end local v7    # "printed":Z
    :cond_b
    const/4 v7, 0x0

    .line 1375
    .restart local v7    # "printed":Z
    sget v6, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    .line 1376
    .local v6, "maxHistory":I
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v10

    if-nez v10, :cond_c

    .line 1377
    add-int/lit8 v6, v6, 0x1

    .line 1380
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v6, :cond_d

    .line 1381
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v9, v10, v4

    .line 1382
    .local v9, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v9, :cond_12

    .line 1416
    .end local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_d
    const/4 v8, 0x0

    .line 1417
    .local v8, "printedforAbortedTitle":Z
    const/4 v4, 0x0

    :goto_6
    sget v10, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    if-ge v4, v10, :cond_e

    .line 1418
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v9, v10, v4

    .line 1419
    .restart local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v9, :cond_19

    .line 1451
    .end local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_e
    if-nez p6, :cond_10

    .line 1452
    if-eqz p5, :cond_f

    .line 1453
    const/4 v4, 0x0

    .line 1454
    const/4 v7, 0x0

    .line 1456
    :cond_f
    :goto_7
    sget v10, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    if-ge v4, v10, :cond_10

    .line 1458
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    aget-object v5, v10, v4

    .line 1459
    .local v5, "intent":Ljava/lang/String;
    if-nez v5, :cond_20

    .line 1486
    .end local v5    # "intent":Ljava/lang/String;
    :cond_10
    :goto_8
    return p7

    .line 1365
    .end local v6    # "maxHistory":I
    .end local v8    # "printedforAbortedTitle":Z
    :cond_11
    const-string v10, "    (null)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1385
    .restart local v6    # "maxHistory":I
    .restart local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_12
    if-eqz p6, :cond_14

    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 1380
    :cond_13
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1388
    :cond_14
    if-nez v7, :cond_16

    .line 1389
    if-eqz p7, :cond_15

    .line 1390
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1392
    :cond_15
    const/16 p7, 0x1

    .line 1393
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Historical broadcasts ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    const/4 v7, 0x1

    .line 1396
    :cond_16
    if-eqz p5, :cond_17

    .line 1397
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Historical Broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1398
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    const-string v10, "    "

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v10}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_9

    .line 1401
    :cond_17
    const-string v10, "  #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1402
    const-string v10, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1403
    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v10, :cond_18

    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v11, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eq v10, v11, :cond_18

    .line 1405
    const-string v10, "    targetComp: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    :cond_18
    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1408
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_13

    .line 1409
    const-string v10, "    extras: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1422
    .end local v3    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "printedforAbortedTitle":Z
    :cond_19
    if-eqz p6, :cond_1b

    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 1417
    :cond_1a
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 1425
    :cond_1b
    if-nez v8, :cond_1d

    .line 1426
    if-eqz p7, :cond_1c

    .line 1427
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1429
    :cond_1c
    const/16 p7, 0x1

    .line 1430
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Aborted Historical broadcasts ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    const/4 v8, 0x1

    .line 1433
    :cond_1d
    const-string v10, "  #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1434
    const-string v10, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1435
    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v10, :cond_1e

    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v11, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eq v10, v11, :cond_1e

    .line 1437
    const-string v10, "    targetComp: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    :cond_1e
    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1440
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1f

    .line 1441
    const-string v10, "    extras: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    :cond_1f
    iget v10, v9, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v1, v10, -0x1

    .line 1444
    .local v1, "abortedIdx":I
    if-ltz v1, :cond_1a

    .line 1445
    const-string v10, "    aborted by : "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v9, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 1462
    .end local v1    # "abortedIdx":I
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v5    # "intent":Ljava/lang/String;
    :cond_20
    if-nez v7, :cond_22

    .line 1463
    if-eqz p7, :cond_21

    .line 1464
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1466
    :cond_21
    const/16 p7, 0x1

    .line 1467
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Historical broadcasts summary ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    const/4 v7, 0x1

    .line 1470
    :cond_22
    if-nez p5, :cond_23

    const/16 v10, 0x32

    if-lt v4, v10, :cond_23

    .line 1471
    const-string v10, "  ..."

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1474
    :cond_23
    const-string v10, "  #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1482
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z
    .param p6, "waitForServices"    # Z

    .prologue
    .line 374
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 375
    .local v3, "state":I
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 376
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    iput v4, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 377
    if-nez v3, :cond_0

    .line 378
    const-string v4, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishReceiver ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] called but state is IDLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 381
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 382
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1

    .line 383
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 385
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_2

    .line 386
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    iget-object v4, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 388
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 389
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 390
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 391
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 393
    iput p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 394
    iput-object p3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 395
    iput-object p4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 396
    if-eqz p5, :cond_4

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-nez v4, :cond_4

    .line 397
    iput-boolean p5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 400
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    const/4 v7, 0x1

    sget v8, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 408
    :goto_0
    if-eqz p6, :cond_7

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-boolean v4, v4, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_7

    .line 412
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 413
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 414
    .local v1, "obj":Ljava/lang/Object;
    instance-of v4, v1, Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_5

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .end local v1    # "obj":Ljava/lang/Object;
    move-object v0, v1

    .line 419
    .local v0, "nextReceiver":Landroid/content/pm/ActivityInfo;
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v4, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_3

    iget-object v4, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 426
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->hasBackgroundServices(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 427
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delay finish: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v4, 0x4

    iput v4, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 430
    const/4 v4, 0x0

    .line 440
    .end local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :goto_2
    return v4

    .line 405
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    goto/16 :goto_0

    .line 414
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 416
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto :goto_1

    .line 435
    .end local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 440
    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    :cond_8
    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;
    .locals 3
    .param p1, "receiver"    # Landroid/os/IBinder;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 365
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    .line 369
    .end local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingBroadcastProcessLocked(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1278
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-lez v3, :cond_1

    .line 1279
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1280
    .local v1, "curReceiver":Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 1281
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 1282
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    const/16 v3, 0x7548

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1303
    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v1    # "curReceiver":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v1    # "curReceiver":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    .line 1288
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1289
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    const/16 v3, 0x7549

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1295
    .end local v1    # "curReceiver":Ljava/lang/Object;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string v3, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding broadcast before first receiver is invoked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/16 v3, 0x7549

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "NONE"

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method final processNextBroadcast(Z)V
    .locals 44
    .param p1, "fromMsg"    # Z

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v43, v0

    monitor-enter v43

    .line 597
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 599
    if-eqz p1, :cond_0

    .line 600
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 604
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/BroadcastRecord;

    .line 606
    .local v36, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 608
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .line 611
    .local v13, "N":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v13, :cond_1

    .line 612
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    .line 618
    .local v40, "target":Ljava/lang/Object;
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 620
    check-cast v40, Lcom/android/server/am/BroadcastFilter;

    .end local v40    # "target":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    .line 611
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 622
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_0

    .line 1111
    .end local v13    # "N":I
    .end local v21    # "i":I
    .end local v36    # "r":Lcom/android/server/am/BroadcastRecord;
    :catchall_0
    move-exception v3

    monitor-exit v43
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 632
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v3, :cond_6

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v6, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ProcessRecord;

    .line 642
    .local v35, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v35, :cond_3

    move-object/from16 v0, v35

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v3, :cond_4

    :cond_3
    const/16 v24, 0x1

    .line 643
    .local v24, "isDead":Z
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 644
    if-nez v24, :cond_5

    .line 646
    :try_start_3
    monitor-exit v43
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1112
    .end local v24    # "isDead":Z
    .end local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_3
    return-void

    .line 642
    .restart local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_4
    const/16 v24, 0x0

    goto :goto_2

    .line 643
    .end local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    .line 648
    .restart local v24    # "isDead":Z
    .restart local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pending app  ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v6, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " died before responding to broadcast"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    iput v5, v3, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v5, v3, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 653
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 657
    .end local v24    # "isDead":Z
    .end local v35    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const/16 v26, 0x0

    .line 660
    .local v26, "looped":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 663
    if-eqz v26, :cond_8

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 669
    :cond_8
    monitor-exit v43

    goto :goto_3

    .line 671
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/BroadcastRecord;

    .line 672
    .restart local v36    # "r":Lcom/android/server/am/BroadcastRecord;
    const/16 v20, 0x0

    .line 682
    .local v20, "forceReceive":Z
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v3, :cond_b

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v31

    .line 683
    .local v31, "numReceivers":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_a

    .line 684
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29

    .line 685
    .local v29, "now":J
    if-lez v31, :cond_a

    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v7, 0x2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    mul-long/2addr v7, v9

    move/from16 v0, v31

    int-to-long v9, v0

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    cmp-long v3, v29, v5

    if-lez v3, :cond_a

    .line 687
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hung broadcast ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] discarded after timeout failure:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dispatchTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " numReceivers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextReceiver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 697
    const/16 v20, 0x1

    .line 698
    const/4 v3, 0x0

    move-object/from16 v0, v36

    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 702
    .end local v29    # "now":J
    :cond_a
    move-object/from16 v0, v36

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v3, :cond_c

    .line 707
    monitor-exit v43

    goto/16 :goto_3

    .line 682
    .end local v31    # "numReceivers":I
    :cond_b
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 710
    .restart local v31    # "numReceivers":I
    :cond_c
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v3, :cond_d

    move-object/from16 v0, v36

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v0, v31

    if-ge v3, v0, :cond_d

    move-object/from16 v0, v36

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v3, :cond_d

    if-eqz v20, :cond_10

    .line 714
    :cond_d
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_e

    .line 722
    :try_start_6
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v36

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v3 .. v11}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 727
    const/4 v3, 0x0

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 736
    :cond_e
    :goto_5
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 742
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 746
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_f

    .line 747
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    sget v7, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    const/4 v8, 0x1

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save the BOOT_COMPLETED history constantly, mBroadcastHistory[MAX] ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    sget v7, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 755
    const/16 v36, 0x0

    .line 756
    const/16 v26, 0x1

    .line 759
    :cond_10
    if-eqz v36, :cond_7

    .line 762
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v37, v0

    add-int/lit8 v3, v37, 0x1

    move-object/from16 v0, v36

    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 766
    .local v37, "recIdx":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 767
    if-nez v37, :cond_11

    .line 768
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 773
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v3, :cond_12

    .line 774
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    add-long v41, v5, v7

    .line 778
    .local v41, "timeoutTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 781
    .end local v41    # "timeoutTime":J
    :cond_12
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v0, v37

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    .line 782
    .local v28, "nextReceiver":Ljava/lang/Object;
    move-object/from16 v0, v28

    instance-of v3, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v3, :cond_15

    .line 785
    move-object/from16 v0, v28

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v19, v0

    .line 792
    .local v19, "filter":Lcom/android/server/am/BroadcastFilter;
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 794
    move-object/from16 v0, v36

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    .line 795
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v3, :cond_13

    move-object/from16 v0, v36

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v3, :cond_14

    .line 801
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, v36

    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 804
    :cond_14
    monitor-exit v43

    goto/16 :goto_3

    .line 728
    .end local v19    # "filter":Lcom/android/server/am/BroadcastFilter;
    .end local v28    # "nextReceiver":Ljava/lang/Object;
    .end local v37    # "recIdx":I
    :catch_0
    move-exception v18

    .line 729
    .local v18, "e":Landroid/os/RemoteException;
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] sending broadcast result of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 810
    .end local v18    # "e":Landroid/os/RemoteException;
    .restart local v28    # "nextReceiver":Ljava/lang/Object;
    .restart local v37    # "recIdx":I
    :cond_15
    move-object/from16 v0, v28

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v22, v0

    .line 812
    .local v22, "info":Landroid/content/pm/ResolveInfo;
    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .local v17, "component":Landroid/content/ComponentName;
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:Ljava/util/ArrayList;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 821
    const/16 v39, 0x0

    .line 825
    .local v39, "skip":Z
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 826
    .local v34, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 827
    .local v14, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0, v14}, Lcom/sec/android/emergencymode/EmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 829
    const/16 v39, 0x1

    .line 831
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping processNextBroadcast ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": broadcast skipped"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v36

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v22

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v10, v10, Landroid/content/pm/ComponentInfo;->exported:Z

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v33

    .line 850
    .local v33, "perm":I
    const-string v3, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 851
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 852
    .local v16, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v38

    .line 853
    .local v38, "receiverClassName":Ljava/lang/String;
    const-string v3, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 855
    const-string v3, "com.android.settings"

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, v36

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_22

    .line 857
    :cond_17
    const/16 v33, 0x0

    .line 858
    const-string v3, "BroadcastQueue"

    const-string v5, "permission granted for keyguard receiver"

    invoke-static {v3, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    .end local v16    # "cn":Landroid/content/ComponentName;
    .end local v38    # "receiverClassName":Ljava/lang/String;
    :cond_18
    :goto_6
    if-eqz v33, :cond_19

    .line 867
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ComponentInfo;->exported:Z

    if-nez v3, :cond_23

    .line 868
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not exported from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :goto_7
    const/16 v39, 0x1

    .line 884
    :cond_19
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_1a

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_1a

    .line 887
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v33

    .line 893
    :goto_8
    if-eqz v33, :cond_1a

    .line 894
    :try_start_9
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: receiving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermission:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to sender "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/16 v39, 0x1

    .line 903
    :cond_1a
    move-object/from16 v0, v36

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1b

    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v27

    .line 906
    .local v27, "mode":I
    if-eqz v27, :cond_1b

    .line 911
    const/16 v39, 0x1

    .line 914
    .end local v27    # "mode":I
    :cond_1b
    if-nez v39, :cond_1c

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v3

    if-nez v3, :cond_24

    const/16 v39, 0x1

    .line 918
    :cond_1c
    :goto_9
    const/16 v25, 0x0

    .line 920
    .local v25, "isSingleton":Z
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v25

    .line 927
    :goto_a
    :try_start_b
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_1d

    .line 928
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v5}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1d

    .line 932
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: Receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requests FLAG_SINGLE_USER, but app does not hold "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/16 v39, 0x1

    .line 938
    :cond_1d
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1e

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v3, :cond_1e

    .line 940
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping deliver ordered ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": process crashing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 942
    const/16 v39, 0x1

    .line 944
    :cond_1e
    if-nez v39, :cond_1f

    .line 945
    const/16 v23, 0x0

    .line 947
    .local v23, "isAvailable":Z
    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v23

    .line 955
    :goto_b
    if-nez v23, :cond_1f

    .line 961
    const/16 v39, 0x1

    .line 967
    .end local v23    # "isAvailable":Z
    :cond_1f
    if-nez v39, :cond_20

    :try_start_d
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_20

    .line 969
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v32

    .line 971
    .local v32, "pUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move/from16 v0, v32

    invoke-virtual {v3, v0, v5}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(IZ)Z

    move-result v3

    if-nez v3, :cond_20

    .line 972
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not running."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping broadcast of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pUserid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", user : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curUser : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", curComponent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/16 v39, 0x1

    .line 983
    .end local v32    # "pUserId":I
    :cond_20
    if-nez v39, :cond_21

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_21

    .line 985
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v5, "sec_container_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v3

    if-nez v3, :cond_21

    .line 989
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->checkKNOXSystemStatus()Z

    move-result v3

    if-nez v3, :cond_21

    .line 990
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KNOX system is not ready, blocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 991
    const/16 v39, 0x1

    .line 1002
    :cond_21
    :goto_c
    if-eqz v39, :cond_25

    .line 1006
    const/4 v3, 0x0

    :try_start_f
    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1007
    const/4 v3, 0x0

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1008
    const/4 v3, 0x0

    move-object/from16 v0, v36

    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1010
    monitor-exit v43

    goto/16 :goto_3

    .line 860
    .end local v25    # "isSingleton":Z
    .restart local v16    # "cn":Landroid/content/ComponentName;
    .restart local v38    # "receiverClassName":Ljava/lang/String;
    :cond_22
    const-string v3, "BroadcastQueue"

    const-string v5, "permission denied for keyguard receiver"

    invoke-static {v3, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/16 v33, -0x1

    goto/16 :goto_6

    .line 875
    .end local v16    # "cn":Landroid/content/ComponentName;
    .end local v38    # "receiverClassName":Ljava/lang/String;
    :cond_23
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: broadcasting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 890
    :catch_1
    move-exception v18

    .line 891
    .restart local v18    # "e":Landroid/os/RemoteException;
    const/16 v33, -0x1

    goto/16 :goto_8

    .line 915
    .end local v18    # "e":Landroid/os/RemoteException;
    :cond_24
    const/16 v39, 0x0

    goto/16 :goto_9

    .line 923
    .restart local v25    # "isSingleton":Z
    :catch_2
    move-exception v18

    .line 924
    .local v18, "e":Ljava/lang/SecurityException;
    const-string v3, "BroadcastQueue"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/16 v39, 0x1

    goto/16 :goto_a

    .line 950
    .end local v18    # "e":Ljava/lang/SecurityException;
    .restart local v23    # "isAvailable":Z
    :catch_3
    move-exception v18

    .line 952
    .local v18, "e":Ljava/lang/Exception;
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception getting recipient info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 994
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v23    # "isAvailable":Z
    :catch_4
    move-exception v18

    .line 995
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_c

    .line 1013
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_25
    const/4 v3, 0x1

    move-object/from16 v0, v36

    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1014
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 1015
    .local v4, "targetProcess":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1016
    move-object/from16 v0, v36

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_26

    if-eqz v25, :cond_26

    .line 1017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1019
    :cond_26
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1028
    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v36

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v3, v5, v6, v7}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1048
    :goto_d
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v15

    .line 1050
    .local v15, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v15, :cond_27

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v3, :cond_27

    .line 1052
    :try_start_12
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v15, v3, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z

    .line 1055
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1057
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1058
    :try_start_13
    monitor-exit v43

    goto/16 :goto_3

    .line 1031
    .end local v15    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_5
    move-exception v18

    .line 1032
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed trying to unstop package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1039
    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v36

    iget-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, v36

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1041
    .end local v4    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1042
    const/4 v3, 0x0

    move-object/from16 v0, v36

    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1043
    monitor-exit v43

    goto/16 :goto_3

    .line 1059
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "targetProcess":Ljava/lang/String;
    .restart local v15    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_6
    move-exception v18

    .line 1060
    .local v18, "e":Landroid/os/RemoteException;
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when sending broadcast to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    .end local v18    # "e":Landroid/os/RemoteException;
    :cond_27
    const-string/jumbo v3, "sys.quickboot.enable"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_28

    const-string/jumbo v3, "sys.quickboot.poweron"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x4

    const-string v8, "broadcast"

    move-object/from16 v0, v36

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x2000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_2a

    const/4 v10, 0x1

    :goto_e
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_2b

    .line 1097
    :cond_29
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to launch app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": process is bad"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1102
    move-object/from16 v0, v36

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v36

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v36

    iget-boolean v10, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v36

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1105
    const/4 v3, 0x0

    move-object/from16 v0, v36

    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1106
    monitor-exit v43

    goto/16 :goto_3

    .line 1062
    :catch_7
    move-exception v18

    .line 1063
    .local v18, "e":Ljava/lang/RuntimeException;
    const-string v3, "BroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed sending broadcast to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1071
    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v36

    iget-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v36

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1073
    .end local v4    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1075
    const/4 v3, 0x0

    move-object/from16 v0, v36

    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1076
    monitor-exit v43

    goto/16 :goto_3

    .line 1087
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "targetProcess":Ljava/lang/String;
    :cond_2a
    const/4 v10, 0x0

    goto/16 :goto_e

    .line 1109
    :cond_2b
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1110
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    .line 1111
    monitor-exit v43
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_3

    .line 1030
    .end local v15    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_8
    move-exception v3

    goto/16 :goto_d
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 233
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 238
    const/4 v1, 0x1

    .line 241
    :goto_1
    return v1

    .line 232
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 241
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 220
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/4 v1, 0x1

    .line 228
    :goto_1
    return v1

    .line 219
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public scheduleBroadcastsLocked()V
    .locals 3

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    goto :goto_0
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x0

    .line 286
    const/4 v7, 0x0

    .line 287
    .local v7, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 288
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, v2, :cond_0

    .line 290
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 293
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    const/4 v7, 0x1

    .line 309
    :cond_0
    return v7

    .line 297
    :catch_0
    move-exception v8

    .line 298
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "BroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 301
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 303
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 305
    iput v6, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final setBroadcastTimeoutLocked(J)V
    .locals 3
    .param p1, "timeoutTime"    # J

    .prologue
    .line 1138
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1140
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1143
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x0

    .line 323
    const/4 v7, 0x0

    .line 324
    .local v7, "reschedule":Z
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 326
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 331
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 333
    const/4 v7, 0x1

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 337
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_1

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 341
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 343
    const/4 v7, 0x1

    .line 345
    :cond_1
    if-eqz v7, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 348
    :cond_2
    return-void
.end method

.method public skipPendingBroadcastLocked(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 314
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, p1, :cond_0

    .line 315
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 316
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 318
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 320
    :cond_0
    return-void
.end method
