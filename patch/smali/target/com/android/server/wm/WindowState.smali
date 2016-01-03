.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WindowState"


# instance fields
.field mAppFreezing:Z

.field final mAppOp:I

.field mAppOpVisibility:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mApplyToastScale:Z

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Lcom/android/server/wm/WindowList;

.field final mClient:Landroid/view/IWindow;

.field final mCompatFrame:Landroid/graphics/Rect;

.field private mConfigHasChanged:Z

.field mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field final mDecorFrame:Landroid/graphics/Rect;

.field mDestroying:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mEnforceSizeCompat:Z

.field mExiting:Z

.field mFloatingAppHScale:F

.field mFloatingAppVScale:F

.field mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInvGlobalScale:F

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastFreezeDuration:I

.field mLastHScale:F

.field final mLastOverscanInsets:Landroid/graphics/Rect;

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mObscured:Z

.field mOrientationChanging:Z

.field final mOverscanFrame:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanInsetsChanged:Z

.field final mOwnerUid:I

.field final mParentFrame:Landroid/graphics/Rect;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mRebuilding:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSavedFlags:I

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field final mShownFrame:Landroid/graphics/RectF;

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field final mSystemDecorRect:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToastRequestedOrientation:I

.field mToastXOffset:I

.field mToastYOffset:I

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mTurnOnScreen:Z

.field mUnderStatusBar:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasExiting:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field final mWindowId:Landroid/view/IWindowId;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
    .locals 15
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "attachedWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v12}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 108
    new-instance v12, Lcom/android/server/wm/WindowList;

    invoke-direct {v12}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    .line 119
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 120
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 121
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 142
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 144
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 154
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    .line 160
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 161
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 169
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 170
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 177
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    .line 178
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    .line 191
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 197
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 202
    new-instance v12, Landroid/graphics/Region;

    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 210
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 216
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 217
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    .line 220
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 221
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 222
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 224
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mApplyToastScale:Z

    .line 225
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mToastXOffset:I

    .line 226
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mToastYOffset:I

    .line 227
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/wm/WindowState;->mToastRequestedOrientation:I

    .line 228
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    .line 230
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 231
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 234
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 235
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 238
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    .line 240
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 241
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 242
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    .line 243
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 244
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    .line 245
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 246
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    .line 252
    const/high16 v12, -0x40800000    # -1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 253
    const/high16 v12, -0x40800000    # -1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 257
    const/high16 v12, -0x40800000    # -1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 258
    const/high16 v12, -0x40800000    # -1.0f

    iput v12, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 320
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 329
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mUnderStatusBar:Z

    .line 333
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/wm/WindowState;->mSavedFlags:I

    .line 339
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 340
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 341
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 342
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 343
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 344
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/wm/Session;->mUid:I

    iput v12, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 345
    new-instance v12, Lcom/android/server/wm/WindowState$1;

    invoke-direct {v12, p0}, Lcom/android/server/wm/WindowState$1;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    .line 359
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 360
    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 361
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 362
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 363
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 364
    new-instance v5, Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v12, 0x0

    invoke-direct {v5, p0, v12}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 365
    .local v5, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 366
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 371
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v5, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    iput-object v5, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 387
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x3e8

    if-lt v12, v13, :cond_f

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7cf

    if-gt v12, v13, :cond_f

    .line 391
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v12

    mul-int/lit16 v12, v12, 0x2710

    add-int/lit16 v12, v12, 0x3e8

    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 394
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p8

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v12

    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 395
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 398
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 399
    .local v4, "children_size":I
    if-nez v4, :cond_5

    .line 400
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    :goto_1
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x3eb

    if-eq v12, v13, :cond_b

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 430
    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7db

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7dc

    if-ne v12, v13, :cond_c

    :cond_1
    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 432
    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7dd

    if-ne v12, v13, :cond_d

    const/4 v12, 0x1

    :goto_4
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 433
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v12, :cond_2

    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v12, :cond_e

    :cond_2
    const/4 v12, 0x1

    :goto_5
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 449
    .end local v4    # "children_size":I
    :goto_6
    move-object v2, p0

    .line 450
    .local v2, "appWin":Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v12, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_15

    .line 451
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_7

    .line 366
    .end local v2    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v6

    .line 373
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 374
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 375
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 376
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 377
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 378
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 379
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 380
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 381
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 382
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 503
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_8
    return-void

    .line 402
    .restart local v4    # "children_size":I
    :cond_5
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    if-ge v8, v4, :cond_6

    .line 403
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 404
    .local v3, "child":Lcom/android/server/wm/WindowState;
    iget v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    iget v13, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ge v12, v13, :cond_7

    .line 405
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v8, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 423
    .end local v3    # "child":Lcom/android/server/wm/WindowState;
    :cond_6
    :goto_a
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v4, v12, :cond_0

    .line 424
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 407
    .restart local v3    # "child":Lcom/android/server/wm/WindowState;
    :cond_7
    iget v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    iget v13, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-le v12, v13, :cond_9

    .line 402
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 411
    :cond_9
    iget v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v12, :cond_a

    .line 412
    iget v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v13, v3, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v12, v13, :cond_8

    .line 413
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v8, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_a

    .line 417
    :cond_a
    iget v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v13, v3, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-gt v12, v13, :cond_8

    .line 418
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v8, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_a

    .line 428
    .end local v3    # "child":Lcom/android/server/wm/WindowState;
    .end local v8    # "i":I
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 430
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 432
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 433
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 437
    .end local v4    # "children_size":I
    :cond_f
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p8

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v12, v13}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v12

    mul-int/lit16 v12, v12, 0x2710

    add-int/lit16 v12, v12, 0x3e8

    iput v12, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 440
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 441
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 442
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 443
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7db

    if-eq v12, v13, :cond_10

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7dc

    if-ne v12, v13, :cond_12

    :cond_10
    const/4 v12, 0x1

    :goto_b
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 445
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7dd

    if-ne v12, v13, :cond_13

    const/4 v12, 0x1

    :goto_c
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 446
    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v12, :cond_11

    iget-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v12, :cond_14

    :cond_11
    const/4 v12, 0x1

    :goto_d
    iput-boolean v12, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    goto/16 :goto_6

    .line 443
    :cond_12
    const/4 v12, 0x0

    goto :goto_b

    .line 445
    :cond_13
    const/4 v12, 0x0

    goto :goto_c

    .line 446
    :cond_14
    const/4 v12, 0x0

    goto :goto_d

    .line 453
    .restart local v2    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_15
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 454
    .local v1, "appToken":Lcom/android/server/wm/WindowToken;
    :goto_e
    iget-object v12, v1, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v12, :cond_16

    .line 455
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v13, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowToken;

    .line 456
    .local v9, "parent":Lcom/android/server/wm/WindowToken;
    if-eqz v9, :cond_16

    if-ne v1, v9, :cond_17

    .line 461
    .end local v9    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_16
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 462
    iget-object v12, v1, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 464
    new-instance v12, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {v12, p0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 465
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, p8

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v13, v12, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 467
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 468
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 469
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 470
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 471
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 472
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 473
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 474
    new-instance v13, Lcom/android/server/input/InputWindowHandle;

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_18

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v12, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    :goto_f
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    invoke-direct {v13, v12, p0, v14}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v13, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 479
    move-object/from16 v0, p8

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d5

    if-ne v12, v13, :cond_4

    .line 480
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v12, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 481
    .local v7, "focusWindowState":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_19

    iget-object v12, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    iget-object v12, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_19

    .line 484
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    const/16 v13, 0x800

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 485
    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowState;->setToastScaleInfo(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_8

    .line 459
    .end local v7    # "focusWindowState":Lcom/android/server/wm/WindowState;
    .restart local v9    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_17
    move-object v1, v9

    .line 460
    goto/16 :goto_e

    .line 474
    .end local v9    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_18
    const/4 v12, 0x0

    goto :goto_f

    .line 488
    .restart local v7    # "focusWindowState":Lcom/android/server/wm/WindowState;
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v10

    .line 489
    .local v10, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v8, v12, -0x1

    .restart local v8    # "i":I
    :goto_10
    if-ltz v8, :cond_4

    .line 490
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 491
    .local v11, "ws":Lcom/android/server/wm/WindowState;
    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1a

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    const/16 v13, 0x800

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_1a

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 496
    invoke-direct {p0, v11}, Lcom/android/server/wm/WindowState;->setToastScaleInfo(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_8

    .line 489
    :cond_1a
    add-int/lit8 v8, v8, -0x1

    goto :goto_10
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "outRegion"    # Landroid/graphics/Region;
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "inset"    # Landroid/graphics/Rect;

    .prologue
    .line 1742
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 1745
    return-void
.end method

.method private getStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 1175
    if-eqz p1, :cond_0

    .line 1177
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StackBox;->getStackBounds(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private hasSibling()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1843
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3eb

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    move v0, v3

    .line 1845
    .local v0, "isAttachedDialog":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 1847
    .local v1, "isNormalWindow":Z
    :goto_1
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_1

    .line 1848
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 1849
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    :goto_2
    if-eqz v2, :cond_1

    .line 1850
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->hasSibling()Z

    move-result v4

    .line 1853
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    return v4

    .end local v0    # "isAttachedDialog":Z
    .end local v1    # "isNormalWindow":Z
    :cond_2
    move v0, v4

    .line 1843
    goto :goto_0

    .restart local v0    # "isAttachedDialog":Z
    :cond_3
    move v1, v4

    .line 1845
    goto :goto_1

    .line 1848
    .restart local v1    # "isNormalWindow":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private needSetContainingFrameAsStackBounds(ZZ)Z
    .locals 1
    .param p1, "optionScale"    # Z
    .param p2, "absLayout"    # Z

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 611
    :cond_1
    const/4 v0, 0x0

    .line 613
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reverseFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;

    .prologue
    .line 617
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 618
    .local v4, "reversePF":Landroid/graphics/Rect;
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 619
    iget v6, p1, Landroid/graphics/Rect;->left:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 620
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 621
    iget v6, p1, Landroid/graphics/Rect;->right:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 622
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 624
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 625
    .local v2, "reverseDF":Landroid/graphics/Rect;
    iget v6, p2, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 626
    iget v6, p2, Landroid/graphics/Rect;->left:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 627
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 628
    iget v6, p2, Landroid/graphics/Rect;->right:I

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 629
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 631
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 632
    .local v3, "reverseOF":Landroid/graphics/Rect;
    iget v6, p3, Landroid/graphics/Rect;->top:I

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 633
    iget v6, p3, Landroid/graphics/Rect;->left:I

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 634
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 635
    iget v6, p3, Landroid/graphics/Rect;->right:I

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 636
    invoke-virtual {p3, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 638
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 639
    .local v0, "reverseCF":Landroid/graphics/Rect;
    iget v6, p4, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 640
    iget v6, p4, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 641
    iget v6, p4, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 642
    iget v6, p4, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 643
    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 645
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 646
    .local v5, "reverseVF":Landroid/graphics/Rect;
    iget v6, p5, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 647
    iget v6, p5, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 648
    iget v6, p5, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 649
    iget v6, p5, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 650
    invoke-virtual {p5, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 652
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 653
    .local v1, "reverseDCF":Landroid/graphics/Rect;
    iget v6, p6, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 654
    iget v6, p6, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 655
    iget v6, p6, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 656
    iget v6, p6, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 657
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 658
    return-void
.end method

.method private setToastScaleInfo(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "focusWindowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v4, 0x1

    const v3, 0x3f333333    # 0.7f

    .line 507
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mApplyToastScale:Z

    .line 508
    iget v2, p1, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v2, p0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    iput v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 509
    iget v2, p1, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v2, p0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 510
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iput v3, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 511
    :cond_0
    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iput v3, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 512
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/server/wm/WindowState;->mToastXOffset:I

    .line 513
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/server/wm/WindowState;->mToastYOffset:I

    .line 514
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_5

    .line 515
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 516
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v4, :cond_2

    .line 517
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mToastYOffset:I

    if-ge v2, v3, :cond_3

    .line 518
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/server/wm/WindowState;->mToastYOffset:I

    .line 519
    :cond_3
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mToastXOffset:I

    if-ge v2, v3, :cond_2

    .line 520
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/server/wm/WindowState;->mToastXOffset:I

    goto :goto_0

    .line 523
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iput v2, p0, Lcom/android/server/wm/WindowState;->mToastRequestedOrientation:I

    .line 525
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method


# virtual methods
.method attach()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    .line 533
    return-void
.end method

.method public final canReceiveKeys()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1526
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x834

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x836

    if-ne v1, v2, :cond_2

    .line 1542
    :cond_1
    :goto_0
    return v0

    .line 1534
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1535
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1542
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 48
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;

    .prologue
    .line 663
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v30

    .line 667
    .local v30, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v44, 0x0

    .line 668
    .local v44, "typeCascade":Z
    const/16 v34, 0x0

    .line 669
    .local v34, "optionScale":Z
    const/16 v33, 0x0

    .line 670
    .local v33, "optionMinimize":Z
    const/16 v24, 0x0

    .line 671
    .local v24, "fullScreenOnly":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v3, v6

    if-eqz v3, :cond_1e

    const/16 v21, 0x1

    .line 673
    .local v21, "absLayout":Z
    :goto_0
    if-nez v21, :cond_0

    .line 674
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1f

    const/16 v44, 0x1

    .line 675
    :goto_1
    const/16 v3, 0x800

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v34

    .line 676
    const/4 v3, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v33

    .line 677
    const/high16 v3, 0x200000

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v24

    .line 680
    :cond_0
    const/16 v37, -0x1

    .line 681
    .local v37, "requestedOrientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d5

    if-ne v3, v6, :cond_20

    .line 682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mToastRequestedOrientation:I

    move/from16 v37, v0

    .line 688
    :cond_1
    :goto_2
    if-eqz v44, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 690
    const/4 v3, 0x1

    move/from16 v0, v37

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v3, v3, 0x50

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_3

    .line 697
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    invoke-interface {v8, v0}, Landroid/view/WindowManagerPolicy;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    sub-int/2addr v3, v6

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 701
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    move/from16 v0, v37

    if-eq v0, v3, :cond_6

    .line 702
    const/4 v3, 0x1

    move/from16 v0, v37

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    :cond_4
    if-nez v37, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 704
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 705
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 706
    .local v38, "reversePF":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v38

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 707
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v38

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 708
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v38

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 709
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v38

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 710
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 716
    .end local v38    # "reversePF":Landroid/graphics/Rect;
    :cond_6
    :goto_3
    if-eqz v33, :cond_7

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 721
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v39

    .line 722
    .local v39, "stack":Lcom/android/server/wm/TaskStack;
    :goto_4
    if-eqz v39, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->hasSibling()Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/server/wm/StackBox;->isFloatingStackBox(Z)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowState;->needSetContainingFrameAsStackBounds(ZZ)Z

    move-result v3

    if-eqz v3, :cond_24

    if-nez v24, :cond_24

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowState;->getStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 732
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mUnderStatusBar:Z

    if-eqz v3, :cond_9

    if-nez v44, :cond_9

    .line 735
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_23

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 752
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v36

    .line 755
    .local v36, "pw":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v35

    .line 758
    .local v35, "ph":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_29

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v3, :cond_25

    .line 760
    move/from16 v4, v36

    .line 766
    .local v4, "w":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_27

    .line 767
    move/from16 v5, v35

    .line 799
    .local v5, "h":I
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 803
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 805
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v3, v6, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v3, v6, :cond_e

    .line 806
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 807
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 808
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x4000

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_e

    .line 813
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 818
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v25

    .line 824
    .local v25, "fw":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v23

    .line 830
    .local v23, "fh":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v3, :cond_2f

    .line 831
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v46, v3, v6

    .line 832
    .local v46, "x":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v47, v3, v6

    .line 840
    .local v47, "y":F
    :goto_8
    new-instance v7, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v3, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 841
    .local v7, "padding":Landroid/graphics/Rect;
    if-eqz v44, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x400000

    and-int/2addr v3, v6

    if-eqz v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-lez v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v0, v35

    if-ge v3, v0, :cond_10

    .line 843
    :cond_f
    new-instance v7, Landroid/graphics/Rect;

    .end local v7    # "padding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/view/WindowManagerPolicy;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 846
    .restart local v7    # "padding":Landroid/graphics/Rect;
    :cond_10
    if-eqz v39, :cond_11

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowState;->needSetContainingFrameAsStackBounds(ZZ)Z

    move-result v3

    if-nez v3, :cond_11

    if-nez v34, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mApplyToastScale:Z

    if-eqz v3, :cond_3a

    .line 849
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3eb

    if-ne v3, v6, :cond_30

    :cond_13
    const/4 v11, 0x1

    .line 851
    .local v11, "typeBase":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v3, :cond_31

    const/16 v29, 0x1

    .line 852
    .local v29, "isTranslucent":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 854
    .local v13, "layoutAttached":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mApplyToastScale:Z

    if-eqz v3, :cond_33

    .line 855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mToastXOffset:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mToastYOffset:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 887
    :cond_14
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v36

    int-to-float v9, v0

    mul-float/2addr v8, v9

    add-float v8, v8, v46

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v35

    int-to-float v10, v0

    mul-float/2addr v9, v10

    add-float v9, v9, v47

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-nez v33, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v12

    if-nez v12, :cond_15

    if-eqz v29, :cond_39

    :cond_15
    const/4 v12, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    invoke-static/range {v3 .. v15}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZZZFF)V

    .line 903
    .end local v11    # "typeBase":Z
    .end local v13    # "layoutAttached":Z
    .end local v29    # "isTranslucent":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e9

    if-ne v3, v6, :cond_3b

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3b

    const/16 v27, 0x1

    .line 909
    .local v27, "ignoreApplyDisplay":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-eq v3, v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_3c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v3, v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_3c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-ne v3, v6, :cond_3c

    const/16 v28, 0x1

    .line 915
    .local v28, "ignoreResizingSurfaceView":Z
    :goto_f
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_16
    if-nez v27, :cond_1a

    if-nez v28, :cond_1a

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v40

    .line 918
    .local v40, "taskStack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3e

    if-eqz v40, :cond_3e

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    if-eqz v3, :cond_3e

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3}, Lcom/android/server/wm/StackBox;->isFloatingStackBox()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 920
    new-instance v42, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 921
    .local v42, "tempFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v42

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v6, v8

    add-float/2addr v3, v6

    float-to-int v3, v3

    move-object/from16 v0, v42

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 922
    move-object/from16 v0, v42

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v6, v8

    add-float/2addr v3, v6

    float-to-int v3, v3

    move-object/from16 v0, v42

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 924
    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    mul-float/2addr v3, v6

    float-to-int v0, v3

    move/from16 v43, v0

    .line 925
    .local v43, "tempPw":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mApplyToastScale:Z

    if-eqz v3, :cond_3d

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v0, v3, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    .line 927
    .local v41, "tempDf":Landroid/graphics/Rect;
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v3, v0, v1}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 929
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mApplyToastScale:Z

    if-eqz v3, :cond_17

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v3

    move/from16 v0, v43

    if-le v3, v0, :cond_17

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v8, v8, v43

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowState;->mToastXOffset:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 935
    :cond_17
    move-object/from16 v0, v42

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v41

    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-gt v3, v6, :cond_18

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v42

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 939
    :cond_18
    move-object/from16 v0, v42

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v41

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-lt v3, v6, :cond_19

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v6, v8

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 943
    :cond_19
    move-object/from16 v0, v42

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v41

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v6, :cond_1a

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v6, v8

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 955
    .end local v40    # "taskStack":Lcom/android/server/wm/TaskStack;
    .end local v41    # "tempDf":Landroid/graphics/Rect;
    .end local v42    # "tempFrame":Landroid/graphics/Rect;
    .end local v43    # "tempPw":I
    :cond_1a
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 967
    if-nez v34, :cond_3f

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    const/4 v8, 0x0

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v12

    const/4 v12, 0x0

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v12

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v12

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 991
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 992
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v3, :cond_1b

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 1005
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move/from16 v0, v25

    if-ne v0, v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v0, v23

    if-eq v0, v3, :cond_1d

    .line 1006
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v22

    .line 1007
    .local v22, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v22

    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6, v8, v9}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1018
    .end local v22    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_1d
    return-void

    .line 671
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v7    # "padding":Landroid/graphics/Rect;
    .end local v21    # "absLayout":Z
    .end local v23    # "fh":I
    .end local v25    # "fw":I
    .end local v27    # "ignoreApplyDisplay":Z
    .end local v28    # "ignoreResizingSurfaceView":Z
    .end local v35    # "ph":I
    .end local v36    # "pw":I
    .end local v37    # "requestedOrientation":I
    .end local v39    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v46    # "x":F
    .end local v47    # "y":F
    :cond_1e
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 674
    .restart local v21    # "absLayout":Z
    :cond_1f
    const/16 v44, 0x0

    goto/16 :goto_1

    .line 683
    .restart local v37    # "requestedOrientation":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_1

    if-eqz v44, :cond_1

    if-eqz v34, :cond_1

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v3, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    move/from16 v37, v0

    goto/16 :goto_2

    .line 712
    :cond_21
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/WindowState;->reverseFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 721
    :cond_22
    const/16 v39, 0x0

    goto/16 :goto_4

    .line 739
    .restart local v39    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iput v6, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_5

    .line 743
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 745
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_9

    if-nez v44, :cond_9

    if-nez v21, :cond_9

    if-nez v24, :cond_9

    .line 747
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    goto/16 :goto_5

    .line 761
    .restart local v35    # "ph":I
    .restart local v36    # "pw":I
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v3, :cond_26

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v3, v6

    float-to-int v4, v3

    .restart local v4    # "w":I
    goto/16 :goto_6

    .line 764
    .end local v4    # "w":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .restart local v4    # "w":I
    goto/16 :goto_6

    .line 768
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v3, :cond_28

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v3, v6

    float-to-int v5, v3

    .restart local v5    # "h":I
    goto/16 :goto_7

    .line 771
    .end local v5    # "h":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .restart local v5    # "h":I
    goto/16 :goto_7

    .line 774
    .end local v4    # "w":I
    .end local v5    # "h":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2a

    .line 775
    move/from16 v4, v36

    .line 781
    .restart local v4    # "w":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2d

    .line 782
    move/from16 v5, v35

    .line 784
    .restart local v5    # "h":I
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_a

    .line 785
    if-nez v34, :cond_2c

    if-nez v21, :cond_2c

    .line 786
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowState;->getStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto/16 :goto_7

    .line 776
    .end local v4    # "w":I
    .end local v5    # "h":I
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v3, :cond_2b

    .line 777
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v3, v6

    float-to-int v4, v3

    .restart local v4    # "w":I
    goto :goto_13

    .line 779
    .end local v4    # "w":I
    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .restart local v4    # "w":I
    goto :goto_13

    .line 787
    .restart local v5    # "h":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x400000

    and-int/2addr v3, v6

    if-eqz v3, :cond_a

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/view/WindowManagerPolicy;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    goto/16 :goto_7

    .line 792
    .end local v5    # "h":I
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v3, :cond_2e

    .line 793
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v3, v6

    float-to-int v5, v3

    .restart local v5    # "h":I
    goto/16 :goto_7

    .line 795
    .end local v5    # "h":I
    :cond_2e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .restart local v5    # "h":I
    goto/16 :goto_7

    .line 834
    .restart local v23    # "fh":I
    .restart local v25    # "fw":I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v3

    move/from16 v46, v0

    .line 835
    .restart local v46    # "x":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v3

    move/from16 v47, v0

    .restart local v47    # "y":F
    goto/16 :goto_8

    .line 849
    .restart local v7    # "padding":Landroid/graphics/Rect;
    :cond_30
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 851
    .restart local v11    # "typeBase":Z
    :cond_31
    const/16 v29, 0x0

    goto/16 :goto_a

    :cond_32
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 856
    .restart local v13    # "layoutAttached":Z
    .restart local v29    # "isTranslucent":Z
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v39

    iget-object v6, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v6, v6, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 859
    const/4 v13, 0x1

    goto/16 :goto_b

    .line 861
    :cond_34
    if-nez v21, :cond_14

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_35

    if-eqz v13, :cond_35

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_b

    .line 865
    :cond_35
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v3, v3, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    .line 866
    .local v31, "offsetX":I
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iget-object v3, v3, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 867
    .local v32, "offsetY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_37

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_36
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/wm/WindowState;

    .line 870
    .local v45, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_36

    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move/from16 v0, v32

    if-ge v3, v0, :cond_36

    .line 872
    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 878
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v45    # "win":Lcom/android/server/wm/WindowState;
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v31

    invoke-virtual {v3, v0, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_b

    .line 883
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_b

    .line 887
    .end local v31    # "offsetX":I
    .end local v32    # "offsetY":I
    :cond_39
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 894
    .end local v11    # "typeBase":Z
    .end local v13    # "layoutAttached":Z
    .end local v29    # "isTranslucent":Z
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v36

    int-to-float v6, v0

    mul-float/2addr v3, v6

    add-float v3, v3, v46

    float-to-int v0, v3

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v35

    int-to-float v6, v0

    mul-float/2addr v3, v6

    add-float v3, v3, v47

    float-to-int v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move v15, v4

    move/from16 v16, v5

    invoke-static/range {v14 .. v20}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto/16 :goto_d

    .line 903
    :cond_3b
    const/16 v27, 0x0

    goto/16 :goto_e

    .line 909
    .restart local v27    # "ignoreApplyDisplay":Z
    :cond_3c
    const/16 v28, 0x0

    goto/16 :goto_f

    .restart local v28    # "ignoreResizingSurfaceView":Z
    .restart local v40    # "taskStack":Lcom/android/server/wm/TaskStack;
    .restart local v42    # "tempFrame":Landroid/graphics/Rect;
    .restart local v43    # "tempPw":I
    :cond_3d
    move-object/from16 v41, p2

    .line 925
    goto/16 :goto_10

    .line 949
    .end local v42    # "tempFrame":Landroid/graphics/Rect;
    .end local v43    # "tempPw":I
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-static {v3, v0, v6}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_11

    .line 985
    .end local v40    # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_12
.end method

.method public disableHideSViewCoverOnce(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    .line 1903
    return-void
.end method

.method disposeInputChannel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1490
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 1493
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1494
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1498
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 1912
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mDisplayId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1913
    const-string v2, " mSession="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1914
    const-string v2, " mClient="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1915
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOwnerUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1916
    const-string v2, " mShowToOwnerOnly="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1917
    const-string v2, " package="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1918
    const-string v2, " appop="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAttrs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1920
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Requested w="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1921
    const-string v2, " h="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1922
    const-string v2, " mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1923
    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v2, v3, :cond_1

    .line 1924
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "LastRequested w="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1925
    const-string v2, " h="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1927
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v2, :cond_3

    .line 1928
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAttachedWindow="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1929
    const-string v2, " mLayoutAttached="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1931
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v2, :cond_5

    .line 1932
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mIsImWindow="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1933
    const-string v2, " mIsWallpaper="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1934
    const-string v2, " mIsFloatingLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1935
    const-string v2, " mWallpaperVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1937
    :cond_5
    if-eqz p3, :cond_6

    .line 1938
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mBaseLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1939
    const-string v2, " mSubLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1940
    const-string v2, " mAnimLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1941
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1944
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1945
    const-string v2, " mLastLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1947
    :cond_6
    if-eqz p3, :cond_9

    .line 1948
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1949
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRootToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1950
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_7

    .line 1951
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1953
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_8

    .line 1954
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTargetAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1956
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mViewVisibility=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1957
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1958
    const-string v2, " mHaveFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1959
    const-string v2, " mObscured="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1960
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1961
    const-string v2, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1962
    iget v2, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v2, :cond_b

    .line 1966
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mPolicyVisibility="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1967
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1968
    const-string v2, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1969
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1970
    const-string v2, " mAppOpVisibility="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1971
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1972
    const-string v2, " mAttachedHidden="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1974
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v2, :cond_d

    .line 1975
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRelayoutCalled="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1976
    const-string v2, " mLayoutNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1978
    :cond_d
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v2, :cond_e

    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v2, :cond_f

    .line 1979
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Offsets x="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1980
    const-string v2, " y="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1982
    :cond_f
    if-eqz p3, :cond_12

    .line 1983
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mGivenContentInsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1984
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1985
    const-string v2, " mGivenVisibleInsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1986
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1987
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1988
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v2, :cond_11

    .line 1989
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTouchableInsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1990
    const-string v2, " mGivenInsetsPending="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1991
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 1992
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1993
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "touchable region="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1995
    .end local v0    # "region":Landroid/graphics/Region;
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1997
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHasSurface="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1998
    const-string v2, " mShownFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->printShortString(Ljava/io/PrintWriter;)V

    .line 1999
    const-string v2, " isReadyForDisplay()="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2000
    if-eqz p3, :cond_13

    .line 2001
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2002
    const-string v2, " last="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2003
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2004
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mSystemDecorRect="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2005
    const-string v2, " last="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2006
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2008
    :cond_13
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_14

    .line 2009
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCompatFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2010
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2012
    :cond_14
    if-eqz p3, :cond_15

    .line 2013
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Frames: containing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2014
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2015
    const-string v2, " parent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2016
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2017
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    display="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2018
    const-string v2, " overscan="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2019
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2020
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    content="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2021
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2022
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2023
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    decor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2024
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2025
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Cur insets: overscan="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2026
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2027
    const-string v2, " content="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2028
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2029
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2030
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Lst insets: overscan="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2031
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2032
    const-string v2, " content="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2033
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2034
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2036
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2037
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2038
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_17

    .line 2039
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mExiting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2040
    const-string v2, " mRemoveOnExit="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2041
    const-string v2, " mDestroying="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2042
    const-string v2, " mRemoved="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2044
    :cond_17
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v2, :cond_18

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_18

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v2, :cond_19

    .line 2045
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOrientationChanging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2046
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2047
    const-string v2, " mAppFreezing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2048
    const-string v2, " mTurnOnScreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2050
    :cond_19
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz v2, :cond_1a

    .line 2051
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastFreezeDuration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2052
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2054
    :cond_1a
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_1b

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1c

    .line 2055
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHScale="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 2056
    const-string v2, " mVScale="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 2058
    :cond_1c
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_1d

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1e

    .line 2059
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mWallpaperX="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 2060
    const-string v2, " mWallpaperY="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 2062
    :cond_1e
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_1f

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_20

    .line 2063
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mWallpaperXStep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 2064
    const-string v2, " mWallpaperYStep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 2067
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    .line 2068
    .local v1, "windowType":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "windowType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2069
    if-nez v1, :cond_23

    .line 2070
    const-string v2, "normal"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2076
    :goto_1
    const-string v2, " : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2078
    return-void

    .line 1941
    .end local v1    # "windowType":I
    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    goto/16 :goto_0

    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2071
    .restart local v1    # "windowType":I
    :cond_23
    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 2072
    const-string/jumbo v2, "split"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2074
    :cond_24
    const-string v2, "cascade"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCoverMode()I
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 1892
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 1897
    :goto_0
    return v0

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    goto :goto_0

    .line 1897
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x12a05f200L

    goto :goto_0
.end method

.method public getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_0
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 6
    .param p1, "bottom"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x0

    .line 1106
    const/4 v0, -0x1

    .line 1107
    .local v0, "index":I
    move-object v2, p0

    .line 1108
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    .line 1110
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    :goto_0
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 1112
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1127
    :cond_0
    return v3

    .line 1116
    :cond_1
    if-eq v2, p1, :cond_0

    .line 1122
    if-gez v0, :cond_2

    .line 1123
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1125
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 1126
    if-ltz v0, :cond_0

    .line 1129
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ws":Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .restart local v2    # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public getOrientationChanging()Z
    .locals 1

    .prologue
    .line 1861
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    return v0
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return v0
.end method

.method public getRequestedHeightLw()I
    .locals 1

    .prologue
    .line 1075
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    return v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRequestedWidthLw()I
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    return v0
.end method

.method public getScaleFactor()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 578
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getShownFrameLw()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .locals 4

    .prologue
    .line 1160
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 1161
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    if-eqz v1, :cond_1

    .line 1162
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1163
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    .line 1164
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1167
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :goto_1
    return-object v2

    .line 1160
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0

    .line 1167
    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_1
.end method

.method getStackBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->getStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getStackBoxBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 584
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->getStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 583
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSurfaceLayer()I
    .locals 1

    .prologue
    .line 1140
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 1135
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .locals 10
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 1748
    new-instance v1, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1751
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    .line 1752
    .local v4, "optionScale":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    .line 1754
    .local v3, "optionMinimized":Z
    if-eqz v3, :cond_1

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1762
    :cond_0
    :goto_0
    iget v6, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    packed-switch v6, :pswitch_data_0

    .line 1765
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1796
    :goto_1
    return-void

    .line 1756
    :cond_1
    if-eqz v4, :cond_0

    .line 1757
    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 1758
    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1770
    :pswitch_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1771
    .local v0, "contentInsets":Landroid/graphics/Rect;
    if-eqz v4, :cond_2

    .line 1772
    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 1773
    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 1776
    :cond_2
    invoke-static {p1, v1, v0}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1781
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    :pswitch_1
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1782
    .local v5, "visibleInsets":Landroid/graphics/Rect;
    if-eqz v4, :cond_3

    .line 1783
    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1784
    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1787
    :cond_3
    invoke-static {p1, v1, v5}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1790
    .end local v5    # "visibleInsets":Landroid/graphics/Rect;
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 1791
    .local v2, "givenTouchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1792
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Region;->translate(II)V

    goto/16 :goto_1

    .line 1762
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1022
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mEasyOneHandScaleSpec:Landroid/view/MagnificationSpec;

    .line 1023
    .local v0, "spec":Landroid/view/MagnificationSpec;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1024
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    .line 1025
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1033
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_0
    :goto_0
    return-object v0

    .line 1029
    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1030
    goto :goto_0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v0

    return-object v0
.end method

.method public hasAppShownWindows()Z
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDrawnLw()Z
    .locals 2

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tos_org_hideLw(Z)Z
    .locals 2
    .param p1, "doAnimation"    # Z

    .prologue
    .line 1605
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .locals 1
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    .line 1609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZZ)Z

    move-result v0

    return v0
.end method

.method public hideLw(ZZZ)Z
    .locals 9
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z
    .param p3, "withSubWindow"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1614
    move-object v3, p0

    .line 1615
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_0

    .line 1616
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1617
    const/4 p1, 0x0

    .line 1620
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1622
    .local v0, "current":Z
    :goto_0
    if-nez v0, :cond_2

    .line 1680
    :goto_1
    return v5

    .line 1620
    .end local v0    # "current":Z
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    goto :goto_0

    .line 1628
    .restart local v0    # "current":Z
    :cond_2
    if-eqz p3, :cond_4

    .line 1629
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 1630
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 1631
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1632
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1633
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 1630
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1639
    .end local v1    # "i":I
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v4    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    if-eqz p1, :cond_5

    .line 1640
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1641
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v7, :cond_5

    .line 1642
    const/4 p1, 0x0

    .line 1645
    :cond_5
    if-eqz p1, :cond_8

    .line 1653
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1677
    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 1678
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_7
    move v5, v6

    .line 1680
    goto :goto_1

    .line 1664
    :cond_8
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1665
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1670
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1671
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v5, p0, :cond_6

    .line 1674
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v6, v5, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto :goto_3
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAnimatingLw()Z
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArrangedUpperSideInputMethod()Z
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v1, -0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x1

    .line 597
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedWindowFocused()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1865
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 1866
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    .line 1868
    :cond_0
    return v0
.end method

.method isClosing()Z
    .locals 2

    .prologue
    .line 1706
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConfigChanged()Z
    .locals 3

    .prologue
    .line 1444
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1448
    .local v0, "configChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d4

    if-ne v1, v2, :cond_1

    .line 1450
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    .line 1451
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    .line 1454
    :cond_1
    return v0

    .line 1444
    .end local v0    # "configChanged":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultDisplay()Z
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return v0
.end method

.method public isDisplayedLw()Z
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1359
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawFinishedLw()Z
    .locals 2

    .prologue
    .line 1394
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawnLw()Z
    .locals 2

    .prologue
    .line 1405
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixedBounds()Z
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloating()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 549
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 550
    .local v0, "windowParamFrame":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v5, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v6, :cond_2

    .line 568
    :cond_1
    :goto_0
    return v1

    .line 558
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v3, v7, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v3, v7, :cond_1

    .line 563
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->appWidth:I

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v3, v4, :cond_1

    :cond_4
    move v1, v2

    .line 568
    goto :goto_0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1883
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isFullscreen(II)Z
    .locals 3
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 1435
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1378
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isHiddenFromUserLocked()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1720
    move-object v1, p0

    .line 1721
    .local v1, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    .line 1722
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1724
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ge v3, v4, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->showWhenLocked:Z

    if-eqz v3, :cond_2

    .line 1728
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1729
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gtz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gtz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v3, v4, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v3, v4, :cond_2

    .line 1737
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_1
    :goto_1
    return v2

    :cond_2
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    const v5, 0x3f800054    # 1.00001f

    const v4, 0x3f7fff58    # 0.99999f

    const v3, 0x358637bd    # 1.0E-6f

    const v2, -0x4a79c843    # -1.0E-6f

    const/4 v0, 0x0

    .line 1195
    cmpg-float v1, p1, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v5

    if-lez v1, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return v0

    .line 1196
    :cond_1
    cmpg-float v1, p4, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p4, v5

    if-gtz v1, :cond_0

    .line 1197
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_0

    .line 1198
    cmpg-float v1, p3, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p3, v3

    if-gtz v1, :cond_0

    .line 1199
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOnScreen()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1303
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return v1

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1307
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_4

    .line 1308
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 1311
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method isOpaqueDrawn()Z
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPotentialDragTarget()Z
    .locals 1

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadyForDisplay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1319
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isReadyForDisplayIgnoringKeyguard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1335
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return v1

    .line 1338
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1339
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_0

    .line 1344
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTransluent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 603
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVisibleLw()Z
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1219
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVisibleNow()Z
    .locals 1

    .prologue
    .line 1265
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleOrAdding()Z
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1285
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1234
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1241
    :goto_0
    return v3

    .line 1238
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1239
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_4

    move v0, v2

    .line 1241
    .local v0, "animating":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_7

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_3

    if-eqz v0, :cond_7

    :cond_3
    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0    # "animating":Z
    :cond_4
    move v0, v3

    .line 1239
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1

    .line 1241
    .restart local v0    # "animating":Z
    :cond_6
    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method public isWinVisibleLw()Z
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1255
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method makeInputChannelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method prelayout()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1203
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1205
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1209
    :goto_0
    return-void

    .line 1207
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    goto :goto_0
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1830
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 1831
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1834
    monitor-exit v1

    .line 1835
    return-void

    .line 1834
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeLocked()V
    .locals 3

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 1460
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 1466
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 1468
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :goto_0
    return-void

    .line 1469
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reportFocusChangedSerialized(ZZ)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1808
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1811
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_2

    .line 1812
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1813
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1814
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowFocusObserver;

    .line 1816
    .local v2, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_0

    .line 1817
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    .line 1813
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1819
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1821
    :catch_0
    move-exception v3

    goto :goto_2

    .line 1824
    .end local v2    # "obs":Landroid/view/IWindowFocusObserver;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1826
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 1809
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public setAppOpVisibilityLw(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1684
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_0

    .line 1685
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 1686
    if-eqz p1, :cond_1

    .line 1693
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 1698
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_0
.end method

.method setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 1477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    .line 1478
    return-void
.end method

.method setInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 1482
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1485
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1486
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p1, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1487
    return-void
.end method

.method setInsetsChanged()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1149
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 1150
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 1151
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 1152
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 1149
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1150
    goto :goto_1

    :cond_4
    move v0, v2

    .line 1151
    goto :goto_2
.end method

.method public setShowToOwnerOnlyLocked(Z)V
    .locals 0
    .param p1, "showToOwnerOnly"    # Z

    .prologue
    .line 1715
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    .line 1716
    return-void
.end method

.method shouldAnimateMove()Z
    .locals 2

    .prologue
    .line 1427
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    .prologue
    .line 1554
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method tos_org_showLw(ZZ)Z
    .locals 5
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1558
    move-object v0, p0

    .line 1559
    .local v0, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1560
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current user violation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trying to display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", belonging to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_0
    :goto_0
    return v1

    .line 1564
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v3, :cond_0

    .line 1568
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-nez v3, :cond_0

    .line 1580
    :cond_2
    if-eqz p1, :cond_3

    .line 1583
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1584
    const/4 p1, 0x0

    .line 1592
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1593
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1594
    if-eqz p1, :cond_4

    .line 1595
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1597
    :cond_4
    if-eqz p2, :cond_5

    .line 1598
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_5
    move v1, v2

    .line 1600
    goto :goto_0

    .line 1585
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_3

    .line 1589
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2087
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2088
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2089
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2091
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eq v1, v2, :cond_3

    .line 2092
    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 2093
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 2094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v1, :cond_4

    const-string v1, " EXITING}"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 2098
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v1

    .line 2094
    :cond_4
    const-string/jumbo v1, "}"

    goto :goto_0
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1875
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1878
    :cond_0
    monitor-exit v1

    .line 1879
    return-void

    .line 1878
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public willBeHideSViewCoverOnce()Z
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->willBeHideSViewCoverOnce:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideLw(Z)Z
    .locals 4
    .param p1, "doAnimation"    # Z
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: keyguard::zoneguo::20151022"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1146
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1147
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 1148
    iput v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1149
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 1150
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1151
    const-string v1, "com.android.server.wm.WindowState#hideLw"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1152
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->tos_org_hideLw(Z)Z

    move-result v1

    return v1
.end method

.method showLw(ZZ)Z
    .locals 5
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: keyguard::zoneguo::20150715"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1090
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1091
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 1092
    iput v4, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1093
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 1094
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1095
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1096
    const-string v1, "com.android.server.wm.WindowState#showLw"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1098
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->tos_org_showLw(ZZ)Z

    move-result v1

    return v1
.end method
