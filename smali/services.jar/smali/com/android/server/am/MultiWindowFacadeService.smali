.class public Lcom/android/server/am/MultiWindowFacadeService;
.super Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.source "MultiWindowFacadeService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiWindowFacade"

.field private static sSelf:Lcom/android/server/am/MultiWindowFacadeService;


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mLock:Ljava/lang/Object;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 34
    iput-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 38
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 40
    sput-object p0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    .line 41
    return-void
.end method

.method private getRootStackBox()Landroid/app/ActivityManager$StackBoxInfo;
    .locals 5

    .prologue
    .line 345
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getStackBoxes()Ljava/util/List;

    move-result-object v2

    .line 348
    .local v2, "stackBoxInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackBoxInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$StackBoxInfo;

    .line 349
    .local v1, "stackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    iget v3, v1, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 355
    .end local v1    # "stackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStackBoxByZone(I)Landroid/app/ActivityManager$StackBoxInfo;
    .locals 9
    .param p1, "zone"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 169
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowFacadeService;->getRootStackBox()Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v4

    .line 171
    .local v4, "rootStackBoxInfo":Landroid/app/ActivityManager$StackBoxInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-nez v6, :cond_1

    .line 174
    :cond_0
    const-string v6, "MultiWindowFacade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStackBoxByZone There is No Application StackBox zone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 242
    :goto_0
    return-object v2

    .line 179
    :cond_1
    const/4 v0, -0x1

    .line 180
    .local v0, "level1Index":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v2, v5

    .line 193
    goto :goto_0

    .line 184
    :pswitch_1
    const/4 v0, 0x0

    .line 196
    :goto_1
    iget-object v6, v4, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    aget-object v2, v6, v0

    .line 197
    .local v2, "lv1Info":Landroid/app/ActivityManager$StackBoxInfo;
    iget-object v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-nez v6, :cond_4

    .line 198
    const/4 v6, 0x3

    if-eq p1, v6, :cond_2

    const/16 v6, 0xc

    if-ne p1, v6, :cond_3

    :cond_2
    iget-object v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v6, :cond_3

    iget-object v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-lez v6, :cond_3

    .line 200
    const-string v5, "MultiWindowFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStackBoxByZone Lv1 zone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    .end local v2    # "lv1Info":Landroid/app/ActivityManager$StackBoxInfo;
    :pswitch_2
    const/4 v0, 0x1

    .line 190
    goto :goto_1

    .line 203
    .restart local v2    # "lv1Info":Landroid/app/ActivityManager$StackBoxInfo;
    :cond_3
    const-string v6, "MultiWindowFacade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStackBoxByZone Lv1 zone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 204
    goto :goto_0

    .line 209
    :cond_4
    const/4 v1, -0x1

    .line 210
    .local v1, "level2Index":I
    packed-switch p1, :pswitch_data_1

    .line 233
    :goto_2
    :pswitch_3
    iget-object v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    aget-object v3, v6, v1

    .line 234
    .local v3, "lv2Info":Landroid/app/ActivityManager$StackBoxInfo;
    iget-object v6, v3, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    if-nez v6, :cond_7

    .line 235
    iget-object v6, v3, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v6, :cond_7

    iget-object v6, v3, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-lez v6, :cond_7

    .line 236
    const-string v5, "MultiWindowFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStackBoxByZone Lv2 zone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 237
    goto/16 :goto_0

    .line 214
    .end local v3    # "lv2Info":Landroid/app/ActivityManager$StackBoxInfo;
    :pswitch_4
    iget v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_5

    iget v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 216
    const-string v6, "MultiWindowFacade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStackBoxByZone zone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already splited."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_5
    iget v6, v2, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_6

    const/4 v1, 0x0

    .line 220
    :goto_3
    goto :goto_2

    .line 219
    :cond_6
    const/4 v1, 0x1

    goto :goto_3

    .line 223
    :pswitch_5
    const/4 v1, 0x0

    .line 224
    goto :goto_2

    .line 227
    :pswitch_6
    const/4 v1, 0x1

    .line 228
    goto :goto_2

    .line 241
    .restart local v3    # "lv2Info":Landroid/app/ActivityManager$StackBoxInfo;
    :cond_7
    const-string v6, "MultiWindowFacade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStackBoxByZone Lv2 zone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " found=null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 242
    goto/16 :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 210
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getTopTaskIdByZone(I)I
    .locals 6
    .param p1, "zone"    # I

    .prologue
    .line 258
    const/4 v2, -0x1

    .line 259
    .local v2, "taskId":I
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackBoxByZone(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v1

    .line 260
    .local v1, "stack":Landroid/app/ActivityManager$StackBoxInfo;
    if-eqz v1, :cond_0

    .line 261
    iget-object v3, v1, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 262
    .local v0, "idx":I
    iget-object v3, v1, Landroid/app/ActivityManager$StackBoxInfo;->stack:Landroid/app/ActivityManager$StackInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v2, v3, v0

    .line 264
    .end local v0    # "idx":I
    :cond_0
    const-string v3, "MultiWindowFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopTaskIdByZone zone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v2
.end method

.method public static self()Lcom/android/server/am/MultiWindowFacadeService;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/am/MultiWindowFacadeService;->sSelf:Lcom/android/server/am/MultiWindowFacadeService;

    return-object v0
.end method


# virtual methods
.method public changeFocusedTaskToFull()V
    .locals 3

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 383
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->changeTypeOfFocusedTaskToNormal()V

    .line 384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    return-void
.end method

.method public exchangeTopTaskToZone(II)Z
    .locals 8
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    .line 153
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 154
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v0

    .line 155
    .local v0, "task1":I
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowFacadeService;->getTopTaskIdByZone(I)I

    move-result v1

    .line 157
    .local v1, "task2":I
    const-string v4, "MultiWindowFacade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchangeTopTaskToZone zone1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zone2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eq v0, v7, :cond_0

    if-eq v1, v7, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->exchangeTaskToStack(IIZ)V

    .line 162
    monitor-exit v3

    .line 164
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 165
    .end local v0    # "task1":I
    .end local v1    # "task2":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getArrangeState()I
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 281
    iget-object v12, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 282
    const/4 v7, 0x0

    .line 283
    .local v7, "result":I
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 285
    .local v9, "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v6, "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 288
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 289
    iget-object v11, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 291
    .local v3, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_0

    .line 292
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 293
    .local v2, "currRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-boolean v11, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v11, :cond_0

    .line 294
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v11

    if-nez v11, :cond_0

    .line 295
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v2    # "currRecord":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 302
    .local v8, "splitStackSize":I
    if-le v8, v14, :cond_2

    .line 303
    packed-switch v8, :pswitch_data_0

    .line 325
    :cond_2
    :goto_1
    monitor-exit v12

    return v7

    .line 305
    :pswitch_0
    const/4 v7, 0x1

    .line 306
    goto :goto_1

    .line 308
    :pswitch_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 309
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    .line 310
    .local v10, "zone":I
    if-eq v10, v14, :cond_4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 311
    :cond_4
    const/4 v7, 0x2

    .line 312
    goto :goto_1

    .line 313
    :cond_5
    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    .line 315
    :cond_6
    const/4 v7, 0x4

    .line 316
    goto :goto_1

    .line 321
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "zone":I
    :pswitch_2
    const/16 v7, 0x8

    goto :goto_1

    .line 326
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "splitStackSize":I
    .end local v9    # "stackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 303
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 2

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getAvailableMultiInstanceCnt()I

    move-result v0

    monitor-exit v1

    return v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFocusedStackLayer()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFocusedStackLayer()I

    move-result v0

    return v0
.end method

.method public getFocusedZone()I
    .locals 3

    .prologue
    .line 334
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 335
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 336
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 337
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 338
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    .line 341
    .end local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->topResumedActivityExceptFloatingLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 272
    .local v0, "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 273
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    .line 276
    :goto_1
    return-object v1

    .line 270
    .end local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 276
    .restart local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1

    .line 277
    .end local v0    # "topResumedActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 88
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 89
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 90
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x0

    monitor-exit v2

    .line 92
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 93
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRunningPenWindowCnt()I
    .locals 2

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt()I

    move-result v0

    monitor-exit v1

    return v0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSplitMaxWeight()F
    .locals 1

    .prologue
    .line 431
    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public getSplitMinWeight()F
    .locals 1

    .prologue
    .line 427
    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 119
    const/4 v1, -0x1

    .line 120
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 121
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 122
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 123
    monitor-exit v3

    .line 131
    :cond_0
    :goto_0
    return-object v2

    .line 124
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 125
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    .line 125
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 459
    const/4 v1, -0x1

    .line 460
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 461
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 462
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 463
    monitor-exit v3

    .line 471
    :cond_0
    :goto_0
    return-object v2

    .line 464
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 465
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 468
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackBoxPosition(ILandroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    .line 465
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 135
    const/4 v1, -0x1

    .line 136
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 137
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 138
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 139
    monitor-exit v3

    .line 147
    :cond_0
    :goto_0
    return-object v2

    .line 140
    :cond_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 141
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    .line 141
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .locals 5
    .param p1, "zone"    # I

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->getStackBoxByZone(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v1

    .line 248
    .local v1, "stack":Landroid/app/ActivityManager$StackBoxInfo;
    if-eqz v1, :cond_0

    .line 249
    iget-object v0, v1, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    .line 252
    :cond_0
    const-string v2, "MultiWindowFacade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getZoneBounds zone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-object v0
.end method

.method public initMultiWindowApplicationInfo()V
    .locals 2

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->initMultiWindowApplicationInfo()V

    .line 449
    monitor-exit v1

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEnableMakePenWindow()Z
    .locals 2

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimizeAll()V
    .locals 3

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/MultiWindowPolicy;->minimizeAll(Ljava/lang/String;)V

    .line 455
    monitor-exit v1

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 54
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 55
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 58
    :cond_0
    monitor-exit v2

    .line 59
    return-void

    .line 58
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveOnlySpecificTaskToFront(II)V
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 416
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 417
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 419
    .local v0, "origId":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, p1, p2, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(IILandroid/os/Bundle;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    monitor-exit v3

    .line 424
    return-void

    .line 421
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 423
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public requestSplitPreview(Z)V
    .locals 1
    .param p1, "enablePreview"    # Z

    .prologue
    .line 365
    sput-boolean p1, Lcom/android/server/am/MultiWindowPolicy;->sPreviewSplitEnabled:Z

    .line 366
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestSplitPreviewTraversal()V

    .line 367
    return-void
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFocusAppByZone(I)V
    .locals 8
    .param p1, "zone"    # I

    .prologue
    .line 394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 395
    .local v1, "origId":J
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 396
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 397
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 398
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 399
    .local v4, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 402
    iget-object v5, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v7, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 407
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    return-void

    .line 407
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 75
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 76
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 79
    monitor-exit v2

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 84
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setMultiWindowTrayOpenState(Z)V

    .line 360
    return-void
.end method

.method public setPreviewFullAppZone(I)V
    .locals 1
    .param p1, "zone"    # I

    .prologue
    .line 371
    sget v0, Lcom/android/server/am/MultiWindowPolicy;->sPreviewNormalAppZone:I

    if-eq v0, p1, :cond_0

    .line 372
    sput p1, Lcom/android/server/am/MultiWindowPolicy;->sPreviewNormalAppZone:I

    .line 373
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestSplitPreviewTraversal()V

    .line 375
    :cond_0
    return-void
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 97
    const/4 v1, -0x1

    .line 98
    .local v1, "stackId":I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 99
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 100
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 101
    monitor-exit v4

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 106
    .local v2, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 108
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, p2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 111
    .end local v2    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1, p2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 111
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 49
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 50
    return-void
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->resizeStackBox(Landroid/graphics/Point;Z)V

    .line 413
    return-void
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .locals 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 475
    const/4 v1, -0x1

    .line 476
    .local v1, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/MultiWindowFacadeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 477
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 478
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 479
    monitor-exit v3

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 481
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/android/server/am/MultiWindowFacadeService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/WindowManagerService;->updateMinimizeSize(I[I)V

    goto :goto_0

    .line 481
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
