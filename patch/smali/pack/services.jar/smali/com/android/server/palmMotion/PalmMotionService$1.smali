.class Lcom/android/server/palmMotion/PalmMotionService$1;
.super Landroid/database/ContentObserver;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/palmMotion/PalmMotionService;


# direct methods
.method constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 741
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService;->access$1200(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$400(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "surface_motion_engine"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 742
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService;->access$400(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 743
    .local v0, "settingMutePause":I
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService;->access$1200(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$400(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "surface_palm_touch"

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 744
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService;->access$1200(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$1200(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v2

    iget v2, v2, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    and-int/2addr v2, v0

    iput v2, v1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 745
    const-string v1, "PalmMotionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2014 - SURFACE_MOTION_ENGINE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v3}, Lcom/android/server/palmMotion/PalmMotionService;->access$1200(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MOTION_MERGED_MUTE_PAUSE & SURFACE_PALM_TOUCH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v3}, Lcom/android/server/palmMotion/PalmMotionService;->access$1200(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService;->access$1200(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$400(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "surface_palm_swipe"

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 758
    const-string v1, "PalmMotionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SURFACE_PALM_SWIPE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService$1;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    invoke-static {v3}, Lcom/android/server/palmMotion/PalmMotionService;->access$1200(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    move-result-object v3

    iget v3, v3, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void
.end method
