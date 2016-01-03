.class Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StackTapPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackTapPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/StackTapPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/StackTapPointerEventListener;Lcom/android/server/wm/StackTapPointerEventListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/StackTapPointerEventListener;
    .param p2, "x1"    # Lcom/android/server/wm/StackTapPointerEventListener$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;-><init>(Lcom/android/server/wm/StackTapPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 199
    iget-object v7, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v7, v8, v9, v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 200
    .local v4, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-eqz v6, :cond_f

    .line 201
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x898

    if-eq v6, v7, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_2

    .line 203
    :cond_0
    const/4 v6, 0x0

    .line 255
    :goto_1
    return v6

    .line 199
    .end local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 205
    .restart local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 206
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v3, :cond_f

    .line 207
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    .line 208
    .local v5, "zone":I
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 209
    .local v1, "point":Landroid/graphics/Point;
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 211
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 212
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 213
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    .line 248
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 249
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v6, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    iget-object v6, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v6}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    const/4 v6, 0x1

    goto :goto_1

    .line 214
    .end local v2    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_4
    const/16 v6, 0xc

    if-ne v5, v6, :cond_5

    .line 215
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 216
    :cond_5
    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 217
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 218
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 219
    :cond_6
    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 220
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 221
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 222
    :cond_7
    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    .line 223
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 224
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 225
    :cond_8
    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 226
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 227
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 230
    :cond_9
    const/4 v6, 0x3

    if-ne v5, v6, :cond_a

    .line 231
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_2

    .line 232
    :cond_a
    const/16 v6, 0xc

    if-ne v5, v6, :cond_b

    .line 233
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_2

    .line 234
    :cond_b
    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 235
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 236
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 237
    :cond_c
    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 238
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 239
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 240
    :cond_d
    const/4 v6, 0x4

    if-ne v5, v6, :cond_e

    .line 241
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 242
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x50

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 243
    :cond_e
    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 244
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 245
    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v6, v6, 0x14

    div-int/lit8 v6, v6, 0x64

    iput v6, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    .line 255
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1    # "point":Landroid/graphics/Point;
    .end local v3    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "zone":I
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 259
    iget-object v8, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    # invokes: Lcom/android/server/wm/StackTapPointerEventListener;->findTargetWindow(FFZ)Lcom/android/server/wm/WindowState;
    invoke-static {v8, v9, v10, v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$100(Lcom/android/server/wm/StackTapPointerEventListener;FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 260
    .local v4, "targetWin":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v5}, Lcom/android/server/wm/StackBox;->checkFixedBound()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-ne v5, v8, :cond_3

    .line 289
    :cond_1
    :goto_1
    return v7

    .end local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_2
    move v5, v7

    .line 259
    goto :goto_0

    .line 266
    .restart local v4    # "targetWin":Lcom/android/server/wm/WindowState;
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 267
    .local v3, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v3, :cond_1

    .line 271
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 275
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZoneLevel()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 276
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 277
    .local v1, "point":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$300(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 279
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 280
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 282
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$200(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 283
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v5, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener$MultiWindowGestureListener;->this$0:Lcom/android/server/wm/StackTapPointerEventListener;

    # getter for: Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/StackTapPointerEventListener;->access$400(Lcom/android/server/wm/StackTapPointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v7, v6

    .line 286
    goto :goto_1
.end method
