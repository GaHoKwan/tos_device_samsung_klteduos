.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 73
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    .line 169
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 171
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 176
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIIZZZ)V
    .locals 18
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "privateFlags"    # I
    .param p5, "type"    # I
    .param p6, "isVisible"    # Z
    .param p7, "hasFocus"    # Z
    .param p8, "hasWallpaper"    # Z

    .prologue
    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 183
    and-int/lit8 v15, p3, 0x28

    if-nez v15, :cond_3

    const/4 v6, 0x1

    .line 187
    .local v6, "modal":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    .line 188
    .local v7, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v15, 0x800

    invoke-virtual {v7, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    .line 189
    .local v9, "optionScale":Z
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    .line 191
    .local v8, "optionMinimized":Z
    if-eqz v6, :cond_e

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v15, :cond_e

    .line 193
    or-int/lit8 p3, p3, 0x20

    .line 194
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 195
    .local v14, "stackBounds":Landroid/graphics/Rect;
    if-eqz v9, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v15}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v11

    .line 197
    .local v11, "resizableSize":I
    neg-int v15, v11

    neg-int v0, v11

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Rect;->inset(II)V

    .line 199
    .end local v11    # "resizableSize":I
    :cond_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v15, v14}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 201
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 207
    :cond_1
    new-instance v10, Landroid/graphics/Region;

    invoke-direct {v10}, Landroid/graphics/Region;-><init>()V

    .line 208
    .local v10, "region":Landroid/graphics/Region;
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 211
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 214
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v16, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mMultiWindowCenterBar:Lcom/android/server/wm/WindowState;

    iget-object v15, v15, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 216
    .local v2, "cw":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 217
    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 218
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v16, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    .line 183
    .end local v2    # "cw":Lcom/android/server/wm/WindowState;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "modal":Z
    .end local v7    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v8    # "optionMinimized":Z
    .end local v9    # "optionScale":Z
    .end local v10    # "region":Landroid/graphics/Region;
    .end local v14    # "stackBounds":Landroid/graphics/Rect;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 226
    .restart local v6    # "modal":Z
    .restart local v7    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v8    # "optionMinimized":Z
    .restart local v9    # "optionScale":Z
    .restart local v10    # "region":Landroid/graphics/Region;
    .restart local v14    # "stackBounds":Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v15, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 229
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v16, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v15, v15, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 231
    .restart local v2    # "cw":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 232
    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 233
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v16, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    .line 238
    .end local v2    # "cw":Lcom/android/server/wm/WindowState;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 239
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    sget-object v16, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 241
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v15, :cond_9

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v15, v15, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_9

    .line 245
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v15, v15, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 246
    .restart local v2    # "cw":Lcom/android/server/wm/WindowState;
    iget-object v15, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_8

    iget-object v15, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_8

    iget-object v15, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v15, v0, :cond_8

    iget-object v15, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 250
    :cond_8
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    sget-object v17, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_3

    .line 255
    .end local v2    # "cw":Lcom/android/server/wm/WindowState;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v8, :cond_a

    .line 256
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v15}, Landroid/graphics/Region;->setEmpty()V

    .line 264
    .end local v10    # "region":Landroid/graphics/Region;
    .end local v14    # "stackBounds":Landroid/graphics/Rect;
    :cond_a
    :goto_4
    move/from16 v0, p3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 265
    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsPrivateFlags:I

    .line 266
    move/from16 v0, p5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 267
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v15

    move-object/from16 v0, p1

    iput-wide v15, v0, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 268
    move/from16 v0, p6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 269
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v15

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 270
    move/from16 v0, p7

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 271
    move/from16 v0, p8

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 272
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v15, :cond_f

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v15, v15, Lcom/android/server/wm/WindowToken;->paused:Z

    :goto_5
    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 273
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 274
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v15, v15, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 275
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v15, v15, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 276
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 278
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 279
    .local v3, "frame":Landroid/graphics/Rect;
    iget v15, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 280
    iget v15, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 281
    iget v15, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 282
    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 285
    if-eqz v9, :cond_b

    .line 286
    iget v15, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 287
    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 289
    :cond_b
    if-eqz v8, :cond_c

    .line 290
    iget v15, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 291
    iget v15, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 295
    :cond_c
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_10

    .line 299
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 305
    :goto_6
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v16, 0x1000000

    and-int v15, v15, v16

    if-eqz v15, :cond_d

    .line 306
    invoke-static {}, Landroid/os/DssHelper;->getInstance()Landroid/os/DssHelper;

    move-result-object v5

    .line 307
    .local v5, "mDssHelper":Landroid/os/DssHelper;
    invoke-virtual {v5}, Landroid/os/DssHelper;->getScalingFactor()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 308
    .local v13, "scalfac":Ljava/lang/Double;
    invoke-virtual {v13}, Ljava/lang/Double;->floatValue()F

    move-result v12

    .line 309
    .local v12, "resolutionFactorF":F
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    mul-float/2addr v15, v12

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 313
    .end local v5    # "mDssHelper":Landroid/os/DssHelper;
    .end local v12    # "resolutionFactorF":F
    .end local v13    # "scalfac":Ljava/lang/Double;
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 314
    return-void

    .line 262
    .end local v3    # "frame":Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto/16 :goto_4

    .line 272
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 301
    .restart local v3    # "frame":Landroid/graphics/Rect;
    :cond_10
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_6
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 317
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 616
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 509
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 510
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 509
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_0

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 588
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 590
    :cond_0
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 3
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 500
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 501
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1

    .line 500
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 1
    .param p1, "policyFlags"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 12
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    .line 104
    .local v7, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 105
    .local v2, "aboveSystem":Z
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 106
    if-eqz p2, :cond_0

    .line 107
    :try_start_0
    iget-object v8, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v7, v0

    .line 108
    if-eqz v7, :cond_0

    .line 109
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 112
    :cond_0
    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 113
    iget-object v8, p1, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v3, v0

    .line 116
    :cond_1
    if-eqz v7, :cond_4

    .line 117
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Input event dispatching timed out sending to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".  Reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v10, 0x7d3

    invoke-interface {v8, v10}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v4

    .line 125
    .local v4, "systemAlertLayer":I
    iget v8, v7, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v8, v4, :cond_3

    const/4 v2, 0x1

    .line 135
    .end local v4    # "systemAlertLayer":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v3, v7, p3}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 136
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v3, :cond_6

    iget-object v8, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v8, :cond_6

    .line 142
    :try_start_1
    iget-object v8, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v8, p3}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v1

    .line 143
    .local v1, "abort":Z
    if-nez v1, :cond_7

    .line 146
    iget-wide v5, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .end local v1    # "abort":Z
    :cond_2
    :goto_1
    return-wide v5

    .line 125
    .restart local v4    # "systemAlertLayer":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 126
    .end local v4    # "systemAlertLayer":I
    :cond_4
    if-eqz v3, :cond_5

    .line 127
    :try_start_2
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Input event dispatching timed out sending to application "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".  Reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 131
    :cond_5
    :try_start_3
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 150
    :cond_6
    if-eqz v7, :cond_7

    .line 154
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v9, v9, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v8, v9, v2, p3}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v5

    .line 156
    .local v5, "timeout":J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_2

    .line 164
    .end local v5    # "timeout":J
    :cond_7
    :goto_2
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 161
    :catch_0
    move-exception v8

    goto :goto_2

    .line 148
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 425
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 430
    :cond_0
    monitor-exit v1

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCoverSwitchChanged(JZ)V

    .line 461
    return-void
.end method

.method public notifyCoverVerifiedChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "verified"    # Z

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCoverVerifiedChanged(JZ)V

    .line 476
    return-void
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .locals 0
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 466
    return-void
.end method

.method public notifyHandSwitchChanged(JI)V
    .locals 0
    .param p1, "whenNanos"    # J
    .param p3, "whichHand"    # I

    .prologue
    .line 472
    return-void
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 86
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 87
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 88
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 91
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 450
    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyPenSwitchChanged(JZ)V

    .line 456
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v1, 0x1

    .line 560
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_0

    .line 565
    iput-boolean v1, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 566
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 568
    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 571
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_0

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 577
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 579
    :cond_0
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 609
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 610
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 612
    :cond_0
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 557
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 552
    .local v0, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 553
    iget-wide v1, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 555
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 2
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_1

    .line 530
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 537
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 538
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 540
    if-eqz p2, :cond_1

    .line 541
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 544
    :cond_1
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 324
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_0

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 599
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 601
    :cond_0
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 32
    .param p1, "force"    # Z

    .prologue
    .line 328
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v2, :cond_0

    .line 418
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v2, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    .line 341
    .local v29, "universeBackground":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v15, v2, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 342
    .local v15, "aboveUniverseLayer":I
    const/16 v16, 0x0

    .line 345
    .local v16, "addedUniverse":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_2

    const/16 v22, 0x1

    .line 346
    .local v22, "inDrag":Z
    :goto_1
    if-eqz v22, :cond_1

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v19, v0

    .line 351
    .local v19, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v19, :cond_3

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 359
    .end local v19    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 360
    .local v14, "NFW":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v14, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FakeWindowImpl;

    iget-object v2, v2, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 360
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 345
    .end local v14    # "NFW":I
    .end local v21    # "i":I
    .end local v22    # "inDrag":Z
    :cond_2
    const/16 v22, 0x0

    goto :goto_1

    .line 354
    .restart local v19    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v22    # "inDrag":Z
    :cond_3
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 365
    .end local v19    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v14    # "NFW":I
    .restart local v21    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 366
    .local v25, "numDisplays":I
    const/16 v18, 0x0

    .local v18, "displayNdx":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v31

    .line 368
    .local v31, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v30, v2, -0x1

    .local v30, "winNdx":I
    :goto_5
    if-ltz v30, :cond_e

    .line 369
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 370
    .local v17, "child":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v23, v0

    .line 371
    .local v23, "inputChannel":Landroid/view/InputChannel;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v24, v0

    .line 372
    .local v24, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v23, :cond_5

    if-eqz v24, :cond_5

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_6

    .line 368
    :cond_5
    :goto_6
    add-int/lit8 v30, v30, -0x1

    goto :goto_5

    .line 377
    :cond_6
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v0

    .line 378
    .local v20, "flags":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v27, v0

    .line 379
    .local v27, "privateFlags":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    .line 381
    .local v28, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_a

    const/4 v12, 0x1

    .line 382
    .local v12, "hasFocus":Z
    :goto_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    .line 383
    .local v11, "isVisible":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_b

    const/16 v2, 0x7d4

    move/from16 v0, v28

    if-eq v0, v2, :cond_b

    const/4 v13, 0x1

    .line 385
    .local v13, "hasWallpaper":Z
    :goto_8
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_c

    const/16 v26, 0x1

    .line 389
    .local v26, "onDefaultDisplay":Z
    :goto_9
    if-eqz v22, :cond_7

    if-eqz v11, :cond_7

    if-eqz v26, :cond_7

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 393
    :cond_7
    if-eqz v29, :cond_9

    if-nez v16, :cond_9

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v2, v15, :cond_9

    if-eqz v26, :cond_9

    .line 395
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 396
    .local v4, "u":Lcom/android/server/wm/WindowState;
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_8

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v2, :cond_8

    .line 397
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_d

    const/4 v9, 0x1

    :goto_a
    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIIZZZ)V

    .line 401
    :cond_8
    const/16 v16, 0x1

    .line 404
    .end local v4    # "u":Lcom/android/server/wm/WindowState;
    :cond_9
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v29

    if-eq v2, v0, :cond_5

    move-object/from16 v5, p0

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    move/from16 v8, v20

    move/from16 v9, v27

    move/from16 v10, v28

    .line 405
    invoke-direct/range {v5 .. v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIIZZZ)V

    goto/16 :goto_6

    .line 381
    .end local v11    # "isVisible":Z
    .end local v12    # "hasFocus":Z
    .end local v13    # "hasWallpaper":Z
    .end local v26    # "onDefaultDisplay":Z
    :cond_a
    const/4 v12, 0x0

    goto :goto_7

    .line 383
    .restart local v11    # "isVisible":Z
    .restart local v12    # "hasFocus":Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_8

    .line 385
    .restart local v13    # "hasWallpaper":Z
    :cond_c
    const/16 v26, 0x0

    goto :goto_9

    .line 397
    .restart local v4    # "u":Lcom/android/server/wm/WindowState;
    .restart local v26    # "onDefaultDisplay":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_a

    .line 366
    .end local v4    # "u":Lcom/android/server/wm/WindowState;
    .end local v11    # "isVisible":Z
    .end local v12    # "hasFocus":Z
    .end local v13    # "hasWallpaper":Z
    .end local v17    # "child":Lcom/android/server/wm/WindowState;
    .end local v20    # "flags":I
    .end local v23    # "inputChannel":Landroid/view/InputChannel;
    .end local v24    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v26    # "onDefaultDisplay":Z
    .end local v27    # "privateFlags":I
    .end local v28    # "type":I
    :cond_e
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 412
    .end local v30    # "winNdx":I
    .end local v31    # "windows":Lcom/android/server/wm/WindowList;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 2
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 438
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0
.end method
