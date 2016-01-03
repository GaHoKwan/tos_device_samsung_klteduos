.class public Lcom/android/server/am/MultiWindowPolicy;
.super Ljava/lang/Object;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowPolicy$H;
    }
.end annotation


# static fields
.field public static final KGUI_PREVIEW_SCALE:F = 0.7f

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I = 0x0

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I = 0x0

.field private static final SAFE_DEBUG:Z

.field public static final SPLIT_DIM_AMOUNT:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "MultiWindowPolicy"

.field public static sPreviewNormalAppZone:I

.field public static sPreviewSplitEnabled:Z

.field public static sStatusBarHeight:I


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmStateListener:Landroid/content/BroadcastReceiver;

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mContext:Landroid/content/Context;

.field final mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

.field private mKidsModeContentObserver:Landroid/database/ContentObserver;

.field private mMultiInstanceMaxCnt:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    .line 71
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    .line 72
    const/4 v0, 0x4

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    .line 85
    sput-boolean v1, Lcom/android/server/am/MultiWindowPolicy;->sPreviewSplitEnabled:Z

    .line 86
    sput v1, Lcom/android/server/am/MultiWindowPolicy;->sPreviewNormalAppZone:I

    .line 87
    sput v1, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 80
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 82
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    .line 91
    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowPolicy$H;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    .line 92
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 93
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiWindowPolicy$3;-><init>(Lcom/android/server/am/MultiWindowPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mKidsModeContentObserver:Landroid/database/ContentObserver;

    .line 96
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 98
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 100
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    .line 112
    return-void

    .line 103
    :cond_1
    sget v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    return v0
.end method

.method private getIsolatedSplitCenterPoint()Landroid/graphics/Point;
    .locals 6

    .prologue
    .line 709
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 710
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 711
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 712
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 710
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 715
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isFrontStack(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 716
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 717
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v5, 0x1000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 718
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getIsolatedCenterPoint()Landroid/graphics/Point;

    move-result-object v4

    .line 722
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const v7, -0x8000001

    const/4 v3, 0x0

    .line 817
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v4, :cond_4

    .line 818
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 822
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v0, :cond_8

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eq v0, v4, :cond_1

    :cond_0
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x80000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 826
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/MultiWindowPolicy;->getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v4

    iget v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    if-lt v4, v5, :cond_4

    .line 827
    if-eqz p1, :cond_6

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 829
    .local v2, "taskAffinity":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_3
    const/4 v1, 0x1

    .line 832
    .local v1, "newTask":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 833
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 834
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    .line 842
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "newTask":Z
    .end local v2    # "taskAffinity":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 818
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0

    .line 827
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_1

    .restart local v2    # "taskAffinity":Ljava/lang/String;
    :cond_7
    move v1, v3

    .line 829
    goto :goto_2

    .line 838
    .end local v2    # "taskAffinity":Ljava/lang/String;
    :cond_8
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 839
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    goto :goto_3
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "callerRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "calleeRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v11, 0x3

    const/4 v10, -0x2

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 738
    const/4 v2, 0x0

    .line 739
    .local v2, "isMultiWindowLaunch":Z
    iget-boolean v4, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v4, :cond_1

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const-string v4, "android"

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 743
    :cond_0
    if-eqz p1, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-eqz v4, :cond_3

    .line 744
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x10000001

    and-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 745
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-eqz v4, :cond_1

    .line 746
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 755
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_4

    .line 814
    :cond_2
    :goto_1
    return-void

    .line 750
    :cond_3
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 751
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v9, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_0

    .line 760
    :cond_4
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 761
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v5, 0x1000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 766
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "open_multi_window_view"

    invoke-static {v4, v5, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_a

    .line 768
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidLaunchStyleApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 772
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_a

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 775
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_a

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isMultiWindowLaunchInSame(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 778
    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "com.android.gallery.action.SEARCH_VIEW"

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.START_SLINK_PLAYBACK"

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "com.sec.android.app.music.intent.action.PLAY_VIA"

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 784
    :cond_7
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-nez v4, :cond_b

    .line 785
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 786
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 787
    const/4 v2, 0x1

    .line 799
    :cond_8
    :goto_2
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v8, :cond_a

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 801
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 802
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v4, :cond_9

    .line 803
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const v5, 0x8000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 805
    :cond_9
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v11, v4}, Lcom/android/server/am/MultiWindowPolicy;->checkCenterBarPosition(IF)F

    .line 811
    :cond_a
    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 812
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setSkipDrawFocusedStackFrameForTask(I)V

    goto/16 :goto_1

    .line 789
    :cond_b
    iget v4, p2, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-eq v4, v11, :cond_c

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 792
    .local v1, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_3
    if-eqz v1, :cond_8

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_8

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v8, :cond_8

    .line 794
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 795
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_2

    .line 789
    .end local v1    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_c
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_3
.end method

.method public applyMultiWindowStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 12
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "sourceToken"    # Landroid/os/IBinder;

    .prologue
    .line 225
    const/4 v4, 0x0

    .line 226
    .local v4, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v1, 0x0

    .line 227
    .local v1, "callerMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mIsMultiWindowEnabled:Z

    if-eqz v9, :cond_1b

    .line 228
    const-string v9, "android"

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 229
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 230
    if-nez v4, :cond_0

    .line 231
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getWindowMode()I

    move-result v8

    .line 232
    .local v8, "windowMode":I
    if-eqz v8, :cond_0

    .line 233
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 234
    .restart local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v4, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 235
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v6

    .line 236
    .local v6, "rect":Landroid/graphics/Rect;
    if-eqz v6, :cond_0

    .line 237
    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 242
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v8    # "windowMode":I
    :cond_0
    const/4 v2, 0x0

    .line 244
    .local v2, "callerRecord":Lcom/android/server/am/ActivityRecord;
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v3

    .line 246
    .local v3, "isFreeStyleFeatureEnabled":Z
    if-eqz p3, :cond_d

    .line 247
    move-object v2, p3

    .line 277
    :cond_1
    :goto_0
    if-eqz v2, :cond_14

    .line 278
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 279
    if-eqz v4, :cond_13

    .line 280
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 281
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_12

    .line 282
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 306
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidInheritStack(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 307
    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    if-eqz v3, :cond_4

    .line 312
    const/16 v9, 0x2000

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 332
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 333
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 336
    .restart local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 337
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isInValidZone()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 338
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 342
    :cond_6
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v9}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 343
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 361
    :cond_7
    :goto_3
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    if-eqz v3, :cond_9

    .line 362
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v9}, Lcom/android/server/am/MultiWindowPolicy;->isNoTitleActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 363
    const/high16 v9, 0x40000

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 366
    :cond_8
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidScaleOption(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v9, :cond_9

    const/16 v9, 0x800

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 368
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 372
    :cond_9
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 373
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 376
    :cond_a
    if-nez v3, :cond_b

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    .line 377
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 380
    :cond_b
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v9}, Lcom/android/server/am/MultiWindowPolicy;->isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-eqz v3, :cond_c

    .line 381
    const/high16 v9, 0x20000

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 387
    .end local v2    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "isFreeStyleFeatureEnabled":Z
    :cond_c
    :goto_4
    return-object v4

    .line 248
    .restart local v2    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "isFreeStyleFeatureEnabled":Z
    :cond_d
    if-eqz p4, :cond_e

    .line 249
    invoke-static/range {p4 .. p4}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto/16 :goto_0

    .line 250
    :cond_e
    if-eqz p2, :cond_1

    .line 251
    iget-object v9, p2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_11

    .line 252
    iget-object v9, p2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    iget-object v10, p2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 253
    .restart local v2    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_f

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isHiddenStack()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 255
    const/4 v2, 0x0

    .line 259
    :cond_f
    if-eqz v2, :cond_10

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 261
    const/4 v2, 0x0

    .line 264
    :cond_10
    const-string v9, "com.sec.android.app.FlashBarService"

    iget-object v10, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 265
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 268
    :cond_11
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v10, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPopup(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 269
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 270
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v9

    if-nez v9, :cond_1

    .line 271
    move-object v2, v7

    goto/16 :goto_0

    .line 283
    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_12
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v9

    if-nez v9, :cond_2

    .line 284
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_1

    .line 288
    :cond_13
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 289
    .restart local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 290
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 292
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v9, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    if-eqz v3, :cond_2

    .line 293
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v0

    .line 294
    .local v0, "appRequestOrientation":I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_2

    .line 295
    invoke-virtual {v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    goto/16 :goto_1

    .line 316
    .end local v0    # "appRequestOrientation":I
    :cond_14
    if-eqz v4, :cond_4

    .line 317
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 318
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    iget-object v5, v9, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 319
    .local v5, "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_4

    const/16 v9, 0x1000

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 320
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 321
    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 322
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_15

    const/high16 v9, 0x200000

    invoke-virtual {v1, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 323
    :cond_15
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_2

    .line 324
    :cond_16
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v9

    if-nez v9, :cond_4

    .line 325
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_2

    .line 344
    .end local v5    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    :cond_17
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v9}, Lcom/android/server/am/MultiWindowPolicy;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_18

    const/16 v9, 0x800

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_18

    if-eqz v3, :cond_18

    .line 347
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_3

    .line 348
    :cond_18
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v9}, Lcom/android/server/am/MultiWindowPolicy;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_19

    if-eqz v3, :cond_19

    .line 350
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_3

    .line 351
    :cond_19
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v9, :cond_1a

    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->shouldNotBeLaunchedInMultiWindowStyle(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 353
    if-eqz v1, :cond_7

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 355
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_3

    .line 358
    :cond_1a
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_3

    .line 384
    .end local v2    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "isFreeStyleFeatureEnabled":Z
    :cond_1b
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .restart local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto/16 :goto_4
.end method

.method public arrangeMultiWindowStyle()V
    .locals 15

    .prologue
    .line 457
    iget-object v13, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v12

    .line 458
    .local v12, "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v10, "recordOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v9, 0x0

    .line 462
    .local v9, "obscuredZone":I
    const/4 v11, 0x0

    .line 464
    .local v11, "shouldPaused":Z
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 465
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_1

    .line 466
    iget-object v13, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v13, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 467
    .local v4, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_0

    .line 468
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 469
    .local v3, "currRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 470
    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneByType()I

    move-result v13

    or-int/2addr v9, v13

    .line 471
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v13

    if-nez v13, :cond_0

    .line 472
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v3    # "currRecord":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 478
    .end local v4    # "currStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 479
    .local v5, "frontStackSize":I
    if-lez v5, :cond_3

    .line 480
    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v13

    if-nez v13, :cond_2

    .line 481
    add-int/lit8 v13, v5, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 485
    const/4 v8, 0x0

    .line 486
    .local v8, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-lez v5, :cond_3

    .line 487
    const/4 v13, 0x1

    if-ne v5, v13, :cond_5

    .line 488
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v13

    if-eqz v13, :cond_3

    .line 489
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v8, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 490
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 491
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v13, v8}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 492
    const/4 v11, 0x1

    .line 533
    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    .line 534
    iget-object v13, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(Z)Z

    .line 536
    :cond_4
    return-void

    .line 495
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    const/4 v9, 0x0

    .line 496
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 497
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneByType()I

    move-result v13

    or-int/2addr v9, v13

    goto :goto_2

    .line 500
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_6
    const/16 v13, 0xf

    if-eq v9, v13, :cond_3

    .line 501
    const/4 v2, 0x0

    .line 502
    .local v2, "arrangeZone":I
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 504
    :pswitch_0
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v14

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v13

    if-ge v14, v13, :cond_7

    .line 505
    const/4 v2, 0x3

    .line 509
    :goto_3
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v8, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 510
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v8, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 511
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v13, v8}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 512
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v8, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 513
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    xor-int/lit8 v13, v2, -0x1

    and-int/lit8 v13, v13, 0xf

    invoke-virtual {v8, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 514
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v13, v8}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_1

    .line 507
    :cond_7
    const/16 v2, 0xc

    goto :goto_3

    .line 518
    :pswitch_1
    xor-int/lit8 v13, v9, -0x1

    and-int/lit8 v13, v13, 0xf

    invoke-virtual {p0, v13}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v2

    .line 519
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 520
    .restart local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v13

    and-int/2addr v13, v2

    if-eqz v13, :cond_8

    .line 521
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v8, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 522
    .restart local v8    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v8, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 523
    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v13, v8}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_1

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;IZ)V
    .locals 5
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "requestZone"    # I
    .param p3, "bSplit"    # Z

    .prologue
    const/4 v4, 0x1

    .line 412
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v0

    .line 417
    .local v0, "baseZone":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 418
    .local v2, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 419
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 420
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz p3, :cond_3

    .line 421
    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 422
    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 432
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 424
    :cond_3
    const/16 v3, 0xf

    if-ne v0, v3, :cond_4

    .line 425
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto :goto_1

    .line 427
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 428
    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_1
.end method

.method public checkCenterBarPosition(IF)F
    .locals 8
    .param p1, "position"    # I
    .param p2, "weight"    # F

    .prologue
    const v7, 0x3f666666    # 0.9f

    const v6, 0x3dcccccd    # 0.1f

    .line 672
    packed-switch p1, :pswitch_data_0

    .line 691
    .end local p2    # "weight":F
    :cond_0
    :goto_0
    return p2

    .line 677
    .restart local p2    # "weight":F
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getStackBoxWeight(I)F

    move-result v2

    .line 678
    .local v2, "weightLv0":F
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getStackBoxWeight(I)F

    move-result v3

    .line 679
    .local v3, "weightLv1":F
    cmpg-float v4, v2, v6

    if-lez v4, :cond_1

    cmpl-float v4, v2, v7

    if-gez v4, :cond_1

    cmpg-float v4, v3, v6

    if-lez v4, :cond_1

    cmpl-float v4, v3, v7

    if-ltz v4, :cond_0

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 684
    .local v0, "point":Landroid/graphics/Point;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 685
    .local v1, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 686
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 687
    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closePenWindow()V
    .locals 9

    .prologue
    .line 191
    sget-boolean v5, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MultiWindowPolicy"

    const-string v6, "closePenWindow"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 193
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 194
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 196
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 197
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_0

    .line 201
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    return-void
.end method

.method findBaseZone(I)I
    .locals 1
    .param p1, "requestZone"    # I

    .prologue
    .line 391
    const/16 v0, 0xf

    .line 392
    .local v0, "baseZone":I
    packed-switch p1, :pswitch_data_0

    .line 408
    :goto_0
    :pswitch_0
    return v0

    .line 395
    :pswitch_1
    const/16 v0, 0xf

    .line 396
    goto :goto_0

    .line 400
    :pswitch_2
    const/4 v0, 0x3

    .line 401
    goto :goto_0

    .line 405
    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    return v0
.end method

.method public getAvailableSplitStack(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/android/server/am/ActivityStack;
    .locals 7
    .param p1, "relativeStackId"    # I
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 597
    if-eq p1, v6, :cond_1

    .line 598
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 599
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 600
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-nez v5, :cond_0

    .line 601
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_0

    .line 602
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getAvailableSplitStackId(ILcom/samsung/android/multiwindow/MultiWindowStyle;)I

    move-result v1

    .line 603
    .local v1, "splitStackId":I
    if-eq v1, v6, :cond_1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 609
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "splitStackId":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-object v4
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getEnableMultiInstance(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 888
    const/4 v1, 0x0

    .line 891
    .local v1, "bMultiInstance":Z
    if-nez p1, :cond_0

    .line 892
    const/4 v5, 0x0

    .line 926
    :goto_0
    return v5

    .line 895
    :cond_0
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 896
    .local v0, "applicationMetaData":Landroid/os/Bundle;
    :goto_1
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 898
    .local v2, "launchMode":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v3

    .line 899
    .local v3, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 900
    if-eq v2, v6, :cond_3

    if-eq v2, v7, :cond_3

    .line 901
    const/4 v1, 0x1

    :cond_1
    :goto_2
    move v5, v1

    .line 926
    goto :goto_0

    .line 895
    .end local v0    # "applicationMetaData":Landroid/os/Bundle;
    .end local v2    # "launchMode":I
    .end local v3    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 902
    .restart local v0    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v2    # "launchMode":I
    .restart local v3    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_3
    if-ne v2, v6, :cond_4

    .line 903
    if-eqz v0, :cond_1

    .line 904
    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 905
    .local v4, "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 906
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 907
    const-string/jumbo v5, "singleTask"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 908
    const/4 v1, 0x1

    goto :goto_2

    .line 913
    .end local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    :cond_4
    if-ne v2, v7, :cond_1

    .line 914
    if-eqz v0, :cond_1

    .line 915
    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 916
    .restart local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 917
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 918
    const-string/jumbo v5, "singleInstance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 919
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public getRelativeStackId(Lcom/android/server/am/ActivityStack;IZ)I
    .locals 7
    .param p1, "requestStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "requestZone"    # I
    .param p3, "includeIsolatedStack"    # Z

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "relativeZone":I
    packed-switch p2, :pswitch_data_0

    .line 571
    :pswitch_0
    const/4 v0, 0x0

    .line 575
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 576
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-lez v2, :cond_3

    .line 577
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 578
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 576
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 562
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :pswitch_1
    const/4 v0, 0x3

    .line 563
    goto :goto_0

    .line 567
    :pswitch_2
    const/16 v0, 0xc

    .line 568
    goto :goto_0

    .line 582
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 583
    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p3, :cond_2

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 588
    :cond_2
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 589
    iget v5, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 593
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getRunningPenWindowCnt()I
    .locals 5

    .prologue
    .line 1068
    const/4 v1, 0x0

    .line 1069
    .local v1, "cnt":I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1070
    .local v0, "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1071
    .local v2, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_0

    .line 1072
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1073
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    .end local v2    # "currStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    return v1
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 17
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 845
    const/4 v2, 0x0

    .line 846
    .local v2, "cls":Landroid/content/ComponentName;
    if-eqz p1, :cond_4

    .line 847
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 848
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 849
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 856
    .local v7, "nInstance":I
    const/4 v3, 0x0

    .line 857
    .local v3, "cp":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 859
    .local v14, "userId":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    .line 860
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    .line 861
    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 862
    .local v12, "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 863
    .local v11, "tR":Lcom/android/server/am/TaskRecord;
    iget-object v1, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 864
    .local v1, "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 865
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v15, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v15, :cond_3

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v15, v3, :cond_3

    iget v15, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v15, v14, :cond_3

    .line 866
    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 867
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 868
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v15, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 869
    .local v13, "taskAffinity":Ljava/lang/String;
    :goto_3
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 870
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 851
    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "nInstance":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v13    # "taskAffinity":Ljava/lang/String;
    .end local v14    # "userId":I
    :cond_4
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_0

    .line 852
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto/16 :goto_0

    .line 857
    .restart local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "nInstance":I
    :cond_5
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/am/TaskRecord;->userId:I

    goto/16 :goto_1

    :cond_6
    const/4 v14, -0x2

    goto/16 :goto_1

    .line 868
    .restart local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v14    # "userId":I
    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 872
    :cond_9
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_a

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 874
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 875
    :cond_a
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v15, :cond_3

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 877
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 884
    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_b
    return v7
.end method

.method public getStackBoxPosition(Lcom/android/server/am/ActivityRecord;)I
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 613
    const/4 v1, 0x6

    .line 615
    .local v1, "stackBoxPosition":I
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-eq v7, v0, :cond_0

    move v2, v1

    .line 644
    .end local v1    # "stackBoxPosition":I
    .local v2, "stackBoxPosition":I
    :goto_0
    return v2

    .line 619
    .end local v2    # "stackBoxPosition":I
    .restart local v1    # "stackBoxPosition":I
    :cond_0
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-nez v7, :cond_1

    .line 620
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 623
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v0, :cond_2

    .line 624
    .local v0, "isPortrait":Z
    :goto_1
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v2, v1

    .line 644
    .end local v1    # "stackBoxPosition":I
    .restart local v2    # "stackBoxPosition":I
    goto :goto_0

    .line 623
    .end local v0    # "isPortrait":Z
    .end local v2    # "stackBoxPosition":I
    .restart local v1    # "stackBoxPosition":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 626
    .restart local v0    # "isPortrait":Z
    :pswitch_1
    if-eqz v0, :cond_3

    move v1, v3

    .line 627
    :goto_3
    goto :goto_2

    :cond_3
    move v1, v4

    .line 626
    goto :goto_3

    .line 630
    :pswitch_2
    if-eqz v0, :cond_4

    move v1, v5

    .line 631
    :goto_4
    goto :goto_2

    :cond_4
    move v1, v6

    .line 630
    goto :goto_4

    .line 635
    :pswitch_3
    if-eqz v0, :cond_5

    move v1, v4

    .line 636
    :goto_5
    goto :goto_2

    :cond_5
    move v1, v3

    .line 635
    goto :goto_5

    .line 640
    :pswitch_4
    if-eqz v0, :cond_6

    move v1, v6

    :goto_6
    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_6

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getStackBoxWeight(II)F
    .locals 3
    .param p1, "position"    # I
    .param p2, "zoneLevel"    # I

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBoxWeight(I)F

    move-result v0

    .line 649
    .local v0, "weight":F
    packed-switch p1, :pswitch_data_0

    .line 656
    :goto_0
    :pswitch_0
    return v0

    .line 652
    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    goto :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initCenterBarPosition()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 660
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 661
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 662
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 664
    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 665
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 666
    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 668
    :cond_0
    return-object v1
.end method

.method public initMultiWindowApplicationInfo()V
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->initConfig()V

    .line 1090
    return-void
.end method

.method public isAvoidScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidScaleOption(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEnableMakePenWindow()Z
    .locals 3

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getMaxPenWindow(Landroid/content/Context;)I

    move-result v0

    .line 1082
    .local v0, "maxPenWindow":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1083
    :cond_0
    const/4 v1, 0x1

    .line 1085
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isNoTitleActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isNoTitleActivityList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public minimizeAll(Ljava/lang/String;)V
    .locals 7
    .param p1, "skipPackage"    # Ljava/lang/String;

    .prologue
    .line 437
    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MultiWindowPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minimizeAll : skipPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 439
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 440
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minimizeAll : stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 443
    .local v2, "topRecord":Lcom/android/server/am/ActivityRecord;
    sget-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minimizeAll : topRecord="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_3
    if-eqz v2, :cond_1

    .line 445
    if-eqz p1, :cond_4

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 448
    :cond_4
    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_0

    .line 453
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    return-void
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    .line 701
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->resizeStackBox(Landroid/graphics/Point;Z)V

    .line 702
    return-void
.end method

.method public setCenterBarPointByOrientation(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    .line 698
    return-void
.end method

.method public setFloatingBounds(Lcom/android/server/am/ActivityRecord;)V
    .locals 41
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 935
    const/4 v9, 0x0

    .line 936
    .local v9, "defWidth":I
    const/4 v7, 0x0

    .line 937
    .local v7, "defHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v25, v0

    .line 939
    .local v25, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    const/16 v37, 0x2000

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    .line 944
    .local v20, "isInheritStack":Z
    const/16 v37, 0x800

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v26

    .line 945
    .local v26, "optionScale":Z
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v19, v0

    .line 947
    .local v19, "isFullScreen":Z
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 948
    .local v13, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v12

    .line 949
    .local v12, "display":Landroid/view/Display;
    if-eqz v12, :cond_2

    invoke-virtual {v12, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 952
    :cond_2
    if-eqz v26, :cond_3

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForLandscapeOrientation()Landroid/graphics/Rect;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_4

    :cond_3
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForPortraitOrientation()Landroid/graphics/Rect;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 953
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x10e0078

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 955
    .local v16, "floatingMinimumSizeRatioPercentage":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x42c80000    # 100.0f

    div-float v15, v37, v38

    .line 956
    .local v15, "floatingMinimumSizeRatio":F
    new-instance v24, Landroid/graphics/Rect;

    const/16 v37, 0x0

    const/16 v38, 0x0

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v15

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    mul-float v40, v40, v15

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v24

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 957
    .local v24, "minSize":Landroid/graphics/Rect;
    new-instance v29, Landroid/graphics/Rect;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 958
    .local v29, "rotatedMinSize":Landroid/graphics/Rect;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v29

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 959
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, v29

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_10

    .line 962
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setMinBoundForPortraitOrientation(Landroid/graphics/Rect;)V

    .line 963
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setMinBoundForLandscapeOrientation(Landroid/graphics/Rect;)V

    .line 970
    .end local v15    # "floatingMinimumSizeRatio":F
    .end local v16    # "floatingMinimumSizeRatioPercentage":I
    .end local v24    # "minSize":Landroid/graphics/Rect;
    .end local v29    # "rotatedMinSize":Landroid/graphics/Rect;
    :cond_5
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    move/from16 v37, v0

    if-nez v37, :cond_6

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v37

    if-eqz v37, :cond_6

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_6

    .line 972
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 975
    .local v5, "ar":Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-nez v5, :cond_0

    .line 980
    .end local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v20, :cond_7

    if-eqz v19, :cond_7

    if-eqz v26, :cond_8

    :cond_7
    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v37

    if-eqz v37, :cond_8

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v37

    if-eqz v37, :cond_0

    .line 986
    :cond_8
    const/16 v37, 0x800

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v37

    if-nez v37, :cond_a

    .line 987
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    .line 988
    .local v17, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v37, v0

    if-eqz v37, :cond_12

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v23, v0

    .line 991
    .local v23, "metaData":Landroid/os/Bundle;
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v27

    .line 992
    .local v27, "res":Landroid/content/res/Resources;
    if-eqz v23, :cond_a

    .line 993
    const-string v37, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v38, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 994
    .local v8, "defSizeId":I
    if-eqz v8, :cond_9

    .line 995
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v37

    move/from16 v0, v37

    float-to-int v9, v0

    .line 997
    :cond_9
    const-string v37, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v38, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 998
    if-eqz v8, :cond_a

    .line 999
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v37

    move/from16 v0, v37

    float-to-int v7, v0

    .line 1011
    .end local v8    # "defSizeId":I
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .end local v23    # "metaData":Landroid/os/Bundle;
    .end local v27    # "res":Landroid/content/res/Resources;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x1050120

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v37

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v36, v0

    .line 1012
    .local v36, "windowGap":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x10e0079

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 1013
    .local v11, "defaultScaleFactor":I
    int-to-float v0, v11

    move/from16 v37, v0

    const/high16 v38, 0x42c80000    # 100.0f

    div-float v10, v37, v38

    .line 1014
    .local v10, "defaultScale":F
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v10

    add-float v37, v37, v10

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v35, v0

    .line 1015
    .local v35, "windowDefWidth":I
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    mul-float v37, v37, v10

    add-float v37, v37, v10

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v34, v0

    .line 1017
    .local v34, "windowDefHeight":I
    const/16 v21, 0x0

    .line 1018
    .local v21, "left":I
    const/16 v31, 0x0

    .line 1019
    .local v31, "top":I
    const/16 v28, 0x0

    .line 1020
    .local v28, "right":I
    const/4 v6, 0x0

    .line 1021
    .local v6, "bottom":I
    const/16 v22, 0x0

    .line 1022
    .local v22, "leftWindowGap":I
    const/16 v33, 0x0

    .line 1023
    .local v33, "topWindowGap":I
    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    .line 1024
    .local v32, "topFreeStyleRect":Landroid/graphics/Rect;
    const/16 v18, 0x0

    .line 1027
    .local v18, "isExistFreeStyleApp":Z
    if-eqz v26, :cond_b

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/android/server/wm/WindowManagerService;->getStackOrder(Z)Ljava/util/ArrayList;

    move-result-object v30

    .line 1029
    .local v30, "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_b

    .line 1031
    const/16 v18, 0x1

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v37, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v32

    .line 1033
    if-eqz v32, :cond_b

    .line 1034
    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    add-int v22, v37, v36

    .line 1035
    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    add-int v33, v37, v36

    .line 1040
    .end local v30    # "stackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b
    if-eqz v9, :cond_c

    if-nez v7, :cond_d

    .line 1042
    :cond_c
    move/from16 v9, v35

    .line 1043
    move/from16 v7, v34

    .line 1046
    :cond_d
    if-eqz v18, :cond_13

    .line 1047
    move/from16 v21, v22

    .line 1048
    move/from16 v31, v33

    .line 1049
    add-int v28, v21, v9

    .line 1050
    add-int v6, v31, v7

    .line 1052
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v37, v0

    move/from16 v0, v28

    move/from16 v1, v37

    if-gt v0, v1, :cond_e

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-gt v6, v0, :cond_e

    if-ltz v21, :cond_e

    if-gez v33, :cond_f

    .line 1053
    :cond_e
    move/from16 v21, v36

    .line 1054
    move/from16 v31, v36

    .line 1055
    add-int v28, v21, v9

    .line 1056
    add-int v6, v31, v7

    .line 1064
    :cond_f
    :goto_5
    new-instance v37, Landroid/graphics/Rect;

    move-object/from16 v0, v37

    move/from16 v1, v21

    move/from16 v2, v31

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 965
    .end local v6    # "bottom":I
    .end local v10    # "defaultScale":F
    .end local v11    # "defaultScaleFactor":I
    .end local v18    # "isExistFreeStyleApp":Z
    .end local v21    # "left":I
    .end local v22    # "leftWindowGap":I
    .end local v28    # "right":I
    .end local v31    # "top":I
    .end local v32    # "topFreeStyleRect":Landroid/graphics/Rect;
    .end local v33    # "topWindowGap":I
    .end local v34    # "windowDefHeight":I
    .end local v35    # "windowDefWidth":I
    .end local v36    # "windowGap":I
    .restart local v15    # "floatingMinimumSizeRatio":F
    .restart local v16    # "floatingMinimumSizeRatioPercentage":I
    .restart local v24    # "minSize":Landroid/graphics/Rect;
    .restart local v29    # "rotatedMinSize":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setMinBoundForLandscapeOrientation(Landroid/graphics/Rect;)V

    .line 966
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setMinBoundForPortraitOrientation(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 972
    .end local v15    # "floatingMinimumSizeRatio":F
    .end local v16    # "floatingMinimumSizeRatioPercentage":I
    .end local v24    # "minSize":Landroid/graphics/Rect;
    .end local v29    # "rotatedMinSize":Landroid/graphics/Rect;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto/16 :goto_2

    .line 988
    .restart local v17    # "info":Landroid/content/pm/ActivityInfo;
    :cond_12
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v23, v0

    goto/16 :goto_3

    .line 1002
    .restart local v23    # "metaData":Landroid/os/Bundle;
    :catch_0
    move-exception v14

    .line 1003
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 1004
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v14

    .line 1005
    .local v14, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 1059
    .end local v14    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .end local v23    # "metaData":Landroid/os/Bundle;
    .restart local v6    # "bottom":I
    .restart local v10    # "defaultScale":F
    .restart local v11    # "defaultScaleFactor":I
    .restart local v18    # "isExistFreeStyleApp":Z
    .restart local v21    # "left":I
    .restart local v22    # "leftWindowGap":I
    .restart local v28    # "right":I
    .restart local v31    # "top":I
    .restart local v32    # "topFreeStyleRect":Landroid/graphics/Rect;
    .restart local v33    # "topWindowGap":I
    .restart local v34    # "windowDefHeight":I
    .restart local v35    # "windowDefWidth":I
    .restart local v36    # "windowGap":I
    :cond_13
    move/from16 v21, v36

    .line 1060
    move/from16 v31, v36

    .line 1061
    add-int v28, v21, v9

    .line 1062
    add-int v6, v31, v7

    goto :goto_5
.end method

.method public setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 6
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 539
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 554
    :cond_0
    return-void

    .line 543
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 544
    .local v0, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 545
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 546
    .local v2, "taskRecord":Lcom/android/server/am/TaskRecord;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 547
    .local v3, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    .line 548
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 549
    invoke-virtual {p1, v2, p2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 550
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 544
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition()Landroid/graphics/Point;

    .line 144
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 147
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    new-instance v3, Lcom/android/server/am/MultiWindowPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/MultiWindowPolicy$1;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 157
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "phone":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "timerFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/android/server/am/MultiWindowPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/MultiWindowPolicy$2;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 173
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "timerFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kids_home_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mKidsModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    return-void

    .line 158
    .restart local v1    # "phone":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public updateConfigurationLockedLa()V
    .locals 3

    .prologue
    .line 726
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 727
    .local v0, "updatePosition":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPointByOrientation(Landroid/graphics/Point;)V

    .line 728
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->reverseVerticalValue()V

    .line 729
    return-void
.end method
