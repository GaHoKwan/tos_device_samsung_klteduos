.class final Lcom/android/server/wm/WindowManagerService$DragInterpolator;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DragInterpolator"
.end annotation


# instance fields
.field mAccumX:I

.field mAccumY:I

.field mCount:I

.field mDragging:Z

.field final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mLock:Ljava/lang/Object;

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mDragging:Z

    .line 819
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->clear()V

    .line 820
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mAccumY:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mAccumX:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mCount:I

    .line 832
    return-void
.end method

.method private getX()F
    .locals 2

    .prologue
    .line 835
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mAccumX:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mCount:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private getY()F
    .locals 2

    .prologue
    .line 839
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mAccumY:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mCount:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private process(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 823
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mAccumX:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mAccumX:I

    .line 825
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mAccumY:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mAccumY:I

    .line 826
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mCount:I

    .line 827
    monitor-exit v1

    .line 828
    return-void

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private size()I
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mCount:I

    return v0
.end method


# virtual methods
.method public doFrame(J)V
    .locals 5
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 867
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 868
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->getX()F

    move-result v3

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    .line 870
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->clear()V

    .line 872
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 879
    return-void

    .line 872
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 878
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 876
    :cond_1
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 859
    return-void
.end method

.method public handleEvent(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 847
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 848
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->process(FF)V

    .line 849
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mDragging:Z

    if-nez v0, :cond_0

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->mDragging:Z

    .line 853
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService$DragInterpolator;->doFrame(J)V

    .line 855
    :cond_0
    return-void

    .line 849
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
