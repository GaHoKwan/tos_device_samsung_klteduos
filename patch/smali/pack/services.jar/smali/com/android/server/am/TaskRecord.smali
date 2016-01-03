.class final Lcom/android/server/am/TaskRecord;
.super Lcom/android/server/am/ThumbnailHolder;
.source "TaskRecord.java"


# instance fields
.field final affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field intent:Landroid/content/Intent;

.field lastActiveTime:J

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mOnTopOfHome:Z

.field private mTaskType:I

.field numActivities:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field rootWasReset:Z

.field stack:Lcom/android/server/am/ActivityStack;

.field stringName:Ljava/lang/String;

.field final taskId:I

.field userId:I


# direct methods
.method constructor <init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 1
    .param p1, "_taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/am/ThumbnailHolder;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 75
    iput p1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 76
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 78
    return-void
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 204
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mNeedUpdateFocusWhileRemovingStack:Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_1

    .line 233
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setType(I)V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 243
    return-void

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getType()I

    move-result v0

    iput v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_0
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 208
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 211
    .local v1, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 212
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 214
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 221
    .end local v0    # "i":I
    .end local v1    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 222
    return-void

    .line 209
    .restart local v0    # "i":I
    .restart local v1    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method disposeThumbnail()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/server/am/ThumbnailHolder;->disposeThumbnail()V

    .line 146
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 148
    .local v1, "thumb":Lcom/android/server/am/ThumbnailHolder;
    if-eq v1, p0, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/android/server/am/ThumbnailHolder;->disposeThumbnail()V

    .line 146
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    .end local v1    # "thumb":Lcom/android/server/am/ThumbnailHolder;
    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x7d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 491
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numActivities:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "numActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numActivities:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 493
    const-string v0, " rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 494
    const-string v0, " userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 495
    const-string v0, " mTaskType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 496
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 497
    const-string v0, " mOnTopOfHome="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 504
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 506
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 511
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 513
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_5

    .line 517
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    .line 521
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 525
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-nez v0, :cond_7

    .line 526
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 528
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 529
    const-string v0, " lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ThumbnailHolder;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 530
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 531
    const-string v0, " (inactive for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "s)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 477
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 478
    .local v2, "realActivity":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 479
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 480
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 478
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 483
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getInactiveDuration()J
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTaskAccessInfoLocked(Z)Lcom/android/server/am/TaskAccessInfo;
    .locals 8
    .param p1, "inclThumbs"    # Z

    .prologue
    .line 408
    new-instance v6, Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {v6}, Lcom/android/server/am/TaskAccessInfo;-><init>()V

    .line 410
    .local v6, "thumbs":Lcom/android/server/am/TaskAccessInfo;
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 411
    .local v0, "NA":I
    const/4 v3, 0x0

    .line 412
    .local v3, "j":I
    const/4 v2, 0x0

    .line 413
    .local v2, "holder":Lcom/android/server/am/ThumbnailHolder;
    :goto_0
    if-ge v3, v0, :cond_1

    .line 414
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 415
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_3

    .line 416
    iput-object v1, v6, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    .line 417
    iput v3, v6, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    .line 418
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 419
    if-eqz v2, :cond_0

    .line 420
    iget-object v7, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v7, v6, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 422
    iget-boolean v7, v2, Lcom/android/server/am/ThumbnailHolder;->isSecretMode:Z

    iput-boolean v7, v6, Lcom/android/server/am/TaskAccessInfo;->isSecretMode:Z

    .line 425
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 431
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lt v3, v0, :cond_4

    .line 469
    :cond_2
    :goto_1
    return-object v6

    .line 428
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 429
    goto :goto_0

    .line 435
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v5, "subtasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskAccessInfo$SubTask;>;"
    iput-object v5, v6, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    .line 437
    :cond_5
    :goto_2
    if-ge v3, v0, :cond_6

    .line 438
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 439
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    .line 440
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_5

    .line 443
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eq v7, v2, :cond_5

    if-eqz v2, :cond_5

    .line 444
    iget v7, v6, Landroid/app/ActivityManager$TaskThumbnails;->numSubThumbbails:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/app/ActivityManager$TaskThumbnails;->numSubThumbbails:I

    .line 445
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 446
    new-instance v4, Lcom/android/server/am/TaskAccessInfo$SubTask;

    invoke-direct {v4}, Lcom/android/server/am/TaskAccessInfo$SubTask;-><init>()V

    .line 447
    .local v4, "sub":Lcom/android/server/am/TaskAccessInfo$SubTask;
    iput-object v2, v4, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    .line 448
    iput-object v1, v4, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    .line 449
    add-int/lit8 v7, v3, -0x1

    iput v7, v4, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    .line 450
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 453
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "sub":Lcom/android/server/am/TaskAccessInfo$SubTask;
    :cond_6
    iget v7, v6, Landroid/app/ActivityManager$TaskThumbnails;->numSubThumbbails:I

    if-lez v7, :cond_2

    .line 454
    new-instance v7, Lcom/android/server/am/TaskRecord$1;

    invoke-direct {v7, p0, v6}, Lcom/android/server/am/TaskRecord$1;-><init>(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskAccessInfo;)V

    iput-object v7, v6, Landroid/app/ActivityManager$TaskThumbnails;->retriever:Landroid/app/IThumbnailRetriever;

    goto :goto_1
.end method

.method public getTaskThumbnailsLocked()Landroid/app/ActivityManager$TaskThumbnails;
    .locals 3

    .prologue
    .line 340
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->getTaskAccessInfoLocked(Z)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 341
    .local v0, "info":Lcom/android/server/am/TaskAccessInfo;
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 342
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v2, p0, :cond_0

    .line 343
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 345
    :cond_0
    iget-object v2, v0, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v2, v0, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 348
    :cond_1
    return-object v0
.end method

.method public getTaskTopThumbnailLocked()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 353
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, p0, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 364
    :goto_0
    return-object v2

    .line 360
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->getTaskAccessInfoLocked(Z)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 361
    .local v0, "info":Lcom/android/server/am/TaskAccessInfo;
    iget v2, v0, Landroid/app/ActivityManager$TaskThumbnails;->numSubThumbbails:I

    if-gtz v2, :cond_2

    .line 362
    iget-object v2, v0, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 364
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    iget v3, v0, Landroid/app/ActivityManager$TaskThumbnails;->numSubThumbbails:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskAccessInfo$SubTask;

    iget-object v2, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v2, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 157
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1

    .line 155
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 162
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method getType()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskType:I

    return v0
.end method

.method isApplicationTask()Z
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHomeTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 397
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 197
    .local v0, "bottomActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 200
    .end local v0    # "bottomActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void
.end method

.method final performClearTaskAtIndexLocked(I)V
    .locals 1
    .param p1, "activityNdx"    # I

    .prologue
    .line 259
    const-string v0, "clear"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(ILjava/lang/String;)V

    .line 260
    return-void
.end method

.method final performClearTaskAtIndexLocked(ILjava/lang/String;)V
    .locals 7
    .param p1, "activityNdx"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 263
    .local v6, "numActivities":I
    :goto_0
    if-ge p1, v6, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 265
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    add-int/lit8 p1, p1, -0x1

    .line 270
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 273
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 295
    .local v9, "numActivities":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "activityNdx":I
    :goto_0
    if-ltz v8, :cond_7

    .line 296
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 297
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    move-object v11, v1

    .line 304
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v8, v8, 0x1

    :goto_1
    if-ge v8, v9, :cond_5

    .line 305
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 306
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 304
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 309
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 310
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_4

    .line 311
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "clear"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    add-int/lit8 v8, v8, -0x1

    .line 316
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 323
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_6

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-nez v0, :cond_6

    .line 325
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_6

    .line 326
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "clear"

    const/4 v7, 0x0

    move-object v3, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 328
    const/4 v11, 0x0

    .line 336
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_6
    :goto_3
    return-object v11

    :cond_7
    const/4 v11, 0x0

    goto :goto_3
.end method

.method final performClearTaskLocked()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 280
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTaskActivitiesLocked(IZ)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "subTaskIndex"    # I
    .param p2, "taskRequired"    # Z

    .prologue
    const/4 v2, 0x0

    .line 369
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/TaskRecord;->getTaskAccessInfoLocked(Z)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 370
    .local v0, "info":Lcom/android/server/am/TaskAccessInfo;
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_1

    .line 371
    if-eqz p2, :cond_0

    .line 372
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTaskLocked: unknown taskId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    :goto_0
    return-object v2

    .line 377
    :cond_1
    if-gez p1, :cond_2

    .line 379
    iget v2, v0, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    const-string v3, "removeTask"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(ILjava/lang/String;)V

    .line 380
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 383
    :cond_2
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 384
    if-eqz p2, :cond_0

    .line 385
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTaskLocked: unknown subTaskIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 392
    .local v1, "subtask":Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 393
    iget-object v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0
.end method

.method setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 6
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    .line 89
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 91
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 92
    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 98
    .end local p1    # "_intent":Landroid/content/Intent;
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 102
    .end local v0    # "_intent":Landroid/content/Intent;
    .restart local p1    # "_intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    .line 103
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    :cond_2
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 110
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 111
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 132
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 136
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 139
    :cond_3
    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_4

    .line 140
    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 142
    :cond_4
    return-void

    :cond_5
    move-object v3, v4

    .line 110
    goto :goto_0

    .line 113
    :cond_6
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v1, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_7

    .line 116
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 117
    .local v2, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 122
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 123
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_1

    .line 126
    .end local v2    # "targetIntent":Landroid/content/Intent;
    :cond_7
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 127
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 128
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public setOnTopOfHome(Z)V
    .locals 1
    .param p1, "onTopOfHome"    # Z

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 574
    :goto_0
    return-void

    .line 573
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    goto :goto_0
.end method

.method setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 577
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mTaskType:I

    .line 578
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    :goto_0
    return-object v1

    .line 547
    :cond_0
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 552
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 564
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 555
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 557
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 558
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 561
    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 168
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 166
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 172
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method touchActiveTime()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 82
    return-void
.end method
