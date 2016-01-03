.class public Lcom/android/internal/policy/impl/MultiPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindow$ApplicationThumbNail;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final FEATURE_DISABLE_LEFT_RESIZE:Z = true

.field static final FEATURE_GUIDE_MOVE_LAYOUT_ENABLED:Z = true

.field static final FEATURE_GUIDE_RESIZE_LAYOUT_ENABLED:Z = true

.field static final FLOATING_CYCLE_DEBUG:Z = false

.field static final FLOATING_SIZE_DEBUG:Z = false

.field private static final MESSAGE_REQUEST_STATE:I = 0x64

.field static final SAFE_DEBUG:Z = true

.field private static final STATE_FLOATING:I = 0x2

.field private static final STATE_MINIMIZED_FLOATING:I = 0x4

.field private static final STATE_NONE:I = -0x1

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"

.field static final TEMP_TOAST_HEIGHT:I = 0x28


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentLayoutGenerated:Z

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomMinimizeView:Landroid/view/View;

.field private mDecorBackground:Landroid/graphics/drawable/Drawable;

.field private mFocusLineColor:I

.field private mGuideView:Lcom/android/internal/policy/impl/GuideView;

.field mHandler:Landroid/os/Handler;

.field private mHasWindowFocus:Z

.field private mInitialFlag:I

.field private mIsBorder:Z

.field private mIvt:[B

.field private mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mLastOrientation:I

.field private mLastRotated:Z

.field private mLastStackBound:Landroid/graphics/Rect;

.field private mMinimizedIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizedLabel:Ljava/lang/CharSequence;

.field private mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOutLineColor:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private final mThickness:I

.field private final mThicknessBorderPaintInner:F

.field private final mThicknessBorderPaintOuter:F

.field private final mThicknessForUnFocused:I

.field mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

.field private mTitleBarHeight:I

.field private mTmpBound:Landroid/graphics/Rect;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mUnFocusLineColor:I

.field private final mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameRightRect:Landroid/graphics/Rect;

.field private final mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

.field private final mUnfocusedFrameTopRect:Landroid/graphics/Rect;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

.field private mWindowIconic:Landroid/widget/ImageView;

.field private mWindowTitleBar:Landroid/view/View;

.field sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

.field sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 116
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    .line 135
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    .line 148
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 177
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z

    .line 179
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 182
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    .line 192
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 506
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    .line 1707
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 1708
    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 1720
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1724
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    .line 2120
    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    .line 2121
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    .line 2233
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    .line 260
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 270
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initResource()V

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080637

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080638

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080639

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080636

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    .line 281
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    .line 284
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintInner:F

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintOuter:F

    .line 290
    return-void

    .line 182
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasWindowFocus:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusLineColor:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnFocusLineColor:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintInner:F

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOutLineColor:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessBorderPaintOuter:F

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/graphics/Paint;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Canvas;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->drawBorderBitmap(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/GuideView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method private adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1443
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1444
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x1050128

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1446
    .local v1, "originPixelSize":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1447
    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1450
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v5, v1

    .line 1451
    .local v3, "right":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v1

    .line 1453
    .local v0, "bottom":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_2

    .line 1454
    iget v5, p1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1459
    :cond_0
    :goto_0
    iget v5, v4, Landroid/graphics/Point;->y:I

    if-le v0, v5, :cond_3

    .line 1460
    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1465
    :cond_1
    :goto_1
    return-void

    .line 1455
    :cond_2
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-le v3, v5, :cond_0

    .line 1456
    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 1461
    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v5, v6, :cond_1

    .line 1462
    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method private adjustScaleFactor()V
    .locals 10

    .prologue
    .line 1149
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1150
    .local v3, "hScale":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1151
    .local v6, "vScale":F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 1152
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1153
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1154
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1155
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_2

    .line 1156
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1157
    .local v1, "di":Landroid/view/DisplayInfo;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    if-gt v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    if-nez v7, :cond_2

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    if-ge v7, v8, :cond_2

    .line 1159
    :cond_1
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 1160
    .local v5, "temp":I
    iget v7, v4, Landroid/graphics/Point;->y:I

    iput v7, v4, Landroid/graphics/Point;->x:I

    .line 1161
    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 1165
    .end local v1    # "di":Landroid/view/DisplayInfo;
    .end local v5    # "temp":I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 1166
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 1177
    .end local v2    # "display":Landroid/view/Display;
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1178
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1179
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    .line 1181
    :cond_4
    return-void
.end method

.method private adjustStackBoxBound(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 1468
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v0, v3, 0x3

    .line 1469
    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v1, v3, 0x3

    .line 1470
    .local v1, "boundaryY":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1471
    .local v2, "maxSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1473
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    if-le v3, v4, :cond_2

    .line 1474
    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1480
    :cond_0
    :goto_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_3

    .line 1481
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1486
    :cond_1
    :goto_1
    return-void

    .line 1476
    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v3, v0, :cond_0

    .line 1477
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 1483
    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v3, v4, :cond_1

    .line 1484
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method private checkFunctionState()V
    .locals 10

    .prologue
    .line 462
    const/4 v5, 0x0

    .line 463
    .local v5, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 464
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_3

    .line 465
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 466
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    .line 467
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 468
    .local v4, "applicationMetaData":Landroid/os/Bundle;
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 469
    .local v2, "activityMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_6

    .line 470
    const-string v8, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "activityFunction":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 472
    new-instance v6, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v0    # "activityFunction":Ljava/lang/String;
    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v6, :cond_5

    .line 477
    if-eqz v4, :cond_5

    .line 478
    :try_start_1
    const-string v8, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "applicationFunction":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 480
    new-instance v5, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    .end local v2    # "activityMetaData":Landroid/os/Bundle;
    .end local v3    # "applicationFunction":Ljava/lang/String;
    .end local v4    # "applicationMetaData":Landroid/os/Bundle;
    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_2
    if-eqz v5, :cond_3

    .line 486
    :try_start_2
    const-string v8, "minimize"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 487
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020355

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :cond_1
    const-string v8, "maximize"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 491
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020357

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :cond_2
    const-string v8, "exit"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 495
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v9, 0x1020359

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 502
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_3
    return-void

    .line 467
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 500
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v8

    goto :goto_3

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "activityMetaData":Landroid/os/Bundle;
    .restart local v4    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object v5, v6

    .end local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    :cond_6
    move-object v6, v5

    .end local v5    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private dismissGuide()V
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GuideView;->dismiss()V

    .line 1811
    :cond_0
    return-void
.end method

.method private drawBorderBitmap(Landroid/graphics/Canvas;II)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1570
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1572
    .local v1, "mTmpDrawRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1574
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1575
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1576
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1579
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1580
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1581
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1584
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v3, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1585
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1586
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1589
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p3, v3

    invoke-virtual {v1, v5, v3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1590
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1591
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1621
    :goto_0
    return-void

    .line 1593
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1594
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    .line 1595
    .local v2, "zone":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1596
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    .line 1598
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v3, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1599
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1600
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameRightRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1603
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    sub-int v3, p3, v3

    invoke-virtual {v1, v5, v3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1604
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1605
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameBottomRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1608
    :cond_2
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_3

    .line 1610
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1611
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1612
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameLeftRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1615
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThicknessForUnFocused:I

    invoke-virtual {v1, v5, v5, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1616
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1617
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnfocusedFrameTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1519
    if-nez p4, :cond_1

    .line 1566
    :cond_0
    return-void

    .line 1522
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v13, v1

    .line 1523
    .local v13, "thickness":I
    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1524
    .local v10, "localPaint":Landroid/graphics/Paint;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1525
    const/4 v11, 0x0

    .line 1526
    .local v11, "rotationAdjX":I
    const/4 v12, 0x0

    .line 1527
    .local v12, "rotationAdjY":I
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 1531
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 1532
    .local v7, "degrees":I
    packed-switch v7, :pswitch_data_0

    .line 1547
    :goto_0
    :pswitch_0
    if-lez v13, :cond_0

    .line 1548
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v13, :cond_2

    .line 1550
    int-to-float v2, v11

    add-int v1, v9, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int v1, v9, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1553
    int-to-float v2, v11

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v3, v1

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1548
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1534
    .end local v9    # "i":I
    :pswitch_1
    const/4 v11, 0x1

    .line 1535
    const/4 v12, 0x1

    .line 1536
    goto :goto_0

    .line 1538
    :pswitch_2
    const/4 v11, 0x1

    .line 1539
    goto :goto_0

    .line 1543
    :pswitch_3
    const/4 v12, 0x1

    goto :goto_0

    .line 1557
    .restart local v9    # "i":I
    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_0

    .line 1559
    add-int v1, v9, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int v1, v9, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1562
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v2, v1

    int-to-float v3, v12

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v9

    add-int/2addr v1, v11

    int-to-float v4, v1

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, v12

    int-to-float v5, v1

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1557
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private forceHideInputMethod()Z
    .locals 2

    .prologue
    .line 1406
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1407
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 1410
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 295
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 297
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method private getState()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 310
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 312
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 324
    :goto_0
    :pswitch_0
    return v1

    .line 316
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 317
    goto :goto_0

    .line 318
    :cond_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x3

    goto :goto_0

    .line 321
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initResource()V
    .locals 4

    .prologue
    const v3, 0x1060087

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusLineColor:I

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOutLineColor:I

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUnFocusLineColor:I

    .line 336
    return-void
.end method

.method private initStackBound(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 1144
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1146
    :cond_1
    return-void
.end method

.method private isRotated(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 2124
    packed-switch p1, :pswitch_data_0

    .line 2132
    :goto_0
    :pswitch_0
    return v0

    .line 2127
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private moveStackBound(IIZ)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "moving"    # Z

    .prologue
    .line 1429
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1430
    .local v0, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1432
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1433
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V

    .line 1438
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 1439
    return-void

    .line 1434
    :cond_1
    if-nez p3, :cond_0

    .line 1435
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBoxBound(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 4
    .param p1, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x2

    .line 1910
    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1920
    :cond_0
    :goto_0
    return v1

    .line 1914
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1915
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_0

    .line 1920
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private refreshUI(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 1236
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(ZI)V

    .line 1237
    return-void
.end method

.method private refreshUI(ZI)V
    .locals 19
    .param p1, "animation"    # Z
    .param p2, "forceState"    # I

    .prologue
    .line 1239
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    .line 1241
    .local v14, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v13, -0x1

    .line 1242
    .local v13, "state":I
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 1243
    move/from16 v13, p2

    .line 1250
    :goto_0
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    .line 1252
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1253
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1255
    .local v6, "flags":I
    packed-switch v13, :pswitch_data_0

    .line 1403
    :cond_0
    :goto_1
    return-void

    .line 1245
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "flags":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v13

    goto :goto_0

    .line 1257
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "flags":I
    :pswitch_0
    const/16 v16, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1260
    .local v4, "contents":Landroid/view/ViewGroup;
    if-eqz v4, :cond_3

    .line 1261
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1263
    .end local v4    # "contents":Landroid/view/ViewGroup;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x200

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 1266
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, -0x201

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1268
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    move/from16 v16, v0

    const/high16 v17, 0x4000000

    and-int v16, v16, v17

    if-eqz v16, :cond_6

    .line 1269
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    const/high16 v17, 0x4000000

    or-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1271
    :cond_6
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v6, v0, :cond_0

    .line 1272
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 1277
    .end local v8    # "i$":Ljava/util/Iterator;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x1020356

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v12

    .line 1284
    .local v12, "stackBound":Landroid/graphics/Rect;
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    if-gez v16, :cond_7

    .line 1285
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1286
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 1290
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1291
    .local v5, "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 1292
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_a

    .line 1293
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1294
    .local v15, "view":Landroid/view/View;
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1292
    .end local v15    # "view":Landroid/view/View;
    :cond_8
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1297
    .restart local v15    # "view":Landroid/view/View;
    :cond_9
    instance-of v0, v15, Landroid/view/ViewGroup;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v16, v15

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    check-cast v15, Landroid/view/ViewGroup;

    .end local v15    # "view":Landroid/view/View;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1302
    .end local v7    # "i":I
    :cond_a
    const/4 v9, 0x0

    .line 1303
    .local v9, "isContentParentSize":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 1304
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1306
    const/4 v9, 0x1

    .line 1308
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_f

    .line 1309
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v13

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1312
    .restart local v4    # "contents":Landroid/view/ViewGroup;
    if-eqz v4, :cond_c

    .line 1313
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1315
    .end local v4    # "contents":Landroid/view/ViewGroup;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x64

    invoke-static/range {v17 .. v18}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1316
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 1338
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_e
    :goto_6
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    const v17, -0x4000001

    and-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1339
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v6, v0, :cond_0

    .line 1340
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 1317
    :cond_f
    if-eqz p1, :cond_10

    if-eqz v9, :cond_10

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10a005c

    invoke-static/range {v16 .. v17}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v2

    .line 1319
    .local v2, "animController":Landroid/view/animation/LayoutAnimationController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 1326
    .end local v2    # "animController":Landroid/view/animation/LayoutAnimationController;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_11
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1330
    .restart local v4    # "contents":Landroid/view/ViewGroup;
    if-eqz v4, :cond_11

    .line 1331
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 1333
    .end local v4    # "contents":Landroid/view/ViewGroup;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    .line 1334
    if-eqz p1, :cond_13

    if-eqz v9, :cond_e

    :cond_13
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    goto/16 :goto_6

    .line 1345
    .end local v5    # "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "isContentParentSize":Z
    .end local v10    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "stackBound":Landroid/graphics/Rect;
    :pswitch_2
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorder:Z

    .line 1346
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1347
    const/16 v16, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 1348
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_14

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1356
    .local v11, "mainContents":Landroid/view/ViewGroup;
    if-eqz v11, :cond_14

    .line 1357
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    .end local v11    # "mainContents":Landroid/view/ViewGroup;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_16

    .line 1362
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForPortraitOrientation()Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForLandscapeOrientation()Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1367
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_19

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_17
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1369
    .restart local v4    # "contents":Landroid/view/ViewGroup;
    if-eqz v4, :cond_17

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 1351
    .end local v4    # "contents":Landroid/view/ViewGroup;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 1375
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1377
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x200

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1378
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    const v17, -0x4000001

    and-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1379
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v6, v0, :cond_0

    .line 1380
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 1384
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1385
    const/16 v16, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 1386
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 1391
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1392
    .restart local v4    # "contents":Landroid/view/ViewGroup;
    if-eqz v4, :cond_1a

    .line 1393
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 1389
    .end local v4    # "contents":Landroid/view/ViewGroup;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 1395
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1397
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x200

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1398
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v6, v0, :cond_0

    .line 1399
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private requestState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/16 v7, 0x800

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1185
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1186
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 1191
    packed-switch p1, :pswitch_data_0

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1193
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1194
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 1198
    :pswitch_1
    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 1199
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1200
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1201
    invoke-virtual {v0, v7, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1202
    invoke-virtual {v0, v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1203
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 1207
    :pswitch_2
    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 1208
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1209
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1210
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1211
    invoke-virtual {v0, v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1212
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 1216
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v2, 0x1020356

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1222
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 1223
    invoke-virtual {v0, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 1224
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1226
    :cond_1
    invoke-virtual {v0, v6, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1227
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setMinimizeViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2055
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2056
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMinimizedDrawable(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 1419
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    .line 1420
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    .line 1422
    :cond_0
    if-eqz p1, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1424
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1426
    :cond_1
    return-void
.end method

.method private setStackBound(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "resize"    # Z

    .prologue
    .line 1489
    if-nez p1, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 1493
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBoxBound(Landroid/graphics/Rect;)V

    .line 1496
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1505
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1506
    if-eqz p2, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    if-nez v0, :cond_0

    .line 1820
    new-instance v0, Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/GuideView;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GuideView;->show(IIII)V

    .line 1823
    return-void
.end method

.method private showGuide(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 1814
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    .line 1815
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    .line 1816
    return-void
.end method

.method private updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 3
    .param p1, "newStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 305
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 307
    return-void
.end method


# virtual methods
.method public arrangeScaleStackBound()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 2062
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isResumed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2118
    :cond_0
    :goto_0
    return-void

    .line 2066
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-ne v6, v9, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2071
    const/4 v0, 0x0

    .line 2072
    .local v0, "bChangedStackBox":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v3

    .line 2073
    .local v3, "stackBound":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    .line 2074
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    .line 2075
    .local v2, "requestedOrientation":I
    packed-switch v2, :pswitch_data_0

    .line 2091
    :pswitch_0
    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    if-ne v6, v9, :cond_5

    .line 2092
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_2

    const/4 v0, 0x1

    .line 2099
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 2100
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2101
    .local v5, "stackWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2103
    .local v4, "stackHeight":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2104
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2105
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Point;->x:I

    .line 2106
    iget v6, v1, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_3

    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 2107
    :cond_3
    iget v6, v1, Landroid/graphics/Point;->x:I

    if-le v4, v6, :cond_4

    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 2109
    :cond_4
    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 2110
    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 2112
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 2113
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 2114
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2115
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2080
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v4    # "stackHeight":I
    .end local v5    # "stackWidth":I
    :pswitch_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 2087
    :pswitch_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 2093
    :cond_5
    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    if-ne v6, v8, :cond_2

    .line 2094
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v6, v7, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 2075
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public disableMultiWindow(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2044
    const/4 v0, 0x0

    .line 2045
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2046
    if-eqz v0, :cond_0

    .line 2047
    const/16 v2, 0x4000

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2048
    const/4 v2, 0x2

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2049
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2051
    :cond_0
    return-void

    .line 2048
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 383
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 11
    .param p1, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    const v10, 0x1020358

    const v6, 0x1020356

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 388
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 390
    .local v3, "ret":Landroid/view/ViewGroup;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    .line 391
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 395
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090078

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 398
    const v4, 0x1090079

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 399
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v5, 0x1020354

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    .line 400
    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    .line 401
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 403
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 409
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 415
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v5, 0x102035a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    const v5, 0x102035a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 421
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 423
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkFunctionState()V

    .line 425
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 426
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v5, 0x1020353

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    .line 427
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 428
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 431
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 432
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    .line 435
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 436
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 437
    .local v2, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForPortraitOrientation()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 438
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getMinimumBoundForLandscapeOrientation()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 440
    const-string v4, "MultiPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateLayout : sMinimumStackBoundForPortraitOrient"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForPortraitOrient:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sMinimumStackBoundForLandscapeOrient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->sMinimumStackBoundForLandscapeOrient:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 446
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    .line 448
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v4

    if-eq v4, v7, :cond_2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 449
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    .line 452
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 453
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 454
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    .line 455
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    .line 457
    return-object v3
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 356
    return-object p0
.end method

.method public getOptionsPanelGravity()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 340
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 341
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 342
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 343
    .local v2, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 345
    .local v1, "requestOrientation":I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-ne v1, v5, :cond_1

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_0

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 348
    :cond_0
    const/16 v3, 0x51

    .line 351
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "requestOrientation":I
    .end local v2    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_0
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isTouchBlocked()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x1

    .line 361
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v1

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 367
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 368
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_3

    .line 369
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    .line 370
    goto :goto_0

    .line 373
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    move v1, v2

    .line 374
    goto :goto_0
.end method

.method public minimizeWindow(IZ)V
    .locals 5
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 1948
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    .line 1949
    .local v0, "state":I
    if-ne v0, v4, :cond_1

    .line 1959
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1955
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 1956
    .local v1, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1957
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    goto :goto_0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1929
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 1930
    .local v0, "listener":Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1931
    return-void
.end method

.method public multiWindow(IZ)V
    .locals 1
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    .line 1939
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 1940
    return-void
.end method

.method public normalWindow(I)V
    .locals 1
    .param p1, "windowMode"    # I

    .prologue
    .line 1966
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 1967
    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .locals 21
    .param p1, "configDiff"    # I

    .prologue
    .line 2139
    const/4 v9, 0x0

    .line 2140
    .local v9, "oldRect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 2142
    .local v8, "newRect":Landroid/graphics/Rect;
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2146
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    .line 2148
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getRotation()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v14

    .line 2149
    .local v14, "rotated":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v14, :cond_0

    .line 2153
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    .line 2155
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    goto :goto_0

    .line 2157
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2161
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 2162
    const/4 v10, 0x0

    .line 2163
    .local v10, "relativeL":F
    const/4 v12, 0x0

    .line 2164
    .local v12, "relativeT":F
    const/4 v11, 0x0

    .line 2165
    .local v11, "relativeR":F
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 2166
    .local v7, "maxSize":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v13

    .line 2168
    .local v13, "requestOrientation":I
    if-eqz v13, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_7

    .line 2170
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v16

    .line 2171
    .local v16, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2181
    :cond_4
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v17, v18

    .line 2182
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 2183
    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-lez v17, :cond_5

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v17, v17, v18

    if-lez v17, :cond_5

    .line 2184
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    mul-float v17, v17, v10

    add-float v18, v10, v11

    div-float v10, v17, v18

    .line 2186
    :cond_5
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 2188
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2189
    .restart local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3851b717    # 5.0E-5f

    add-float v18, v18, v10

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 2190
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3851b717    # 5.0E-5f

    add-float v18, v18, v12

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 2191
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 2192
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 2196
    .end local v16    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2197
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBoxBound(Landroid/graphics/Rect;)V

    .line 2199
    :cond_6
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    .line 2200
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_0

    .line 2194
    :cond_7
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "newRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 2203
    .end local v7    # "maxSize":Landroid/graphics/Point;
    .end local v10    # "relativeL":F
    .end local v11    # "relativeR":F
    .end local v12    # "relativeT":F
    .end local v13    # "requestOrientation":I
    :pswitch_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 2204
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 2206
    invoke-virtual/range {p0 .. p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 2207
    .local v4, "display":Landroid/view/Display;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 2208
    .local v15, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2209
    const/4 v5, 0x0

    .line 2210
    .local v5, "dx":I
    const/4 v6, 0x0

    .line 2211
    .local v6, "dy":I
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2213
    .restart local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    if-gez v17, :cond_c

    .line 2214
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v5, v0

    .line 2218
    :cond_8
    :goto_2
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 2219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 2223
    :cond_9
    :goto_3
    if-nez v5, :cond_a

    if-eqz v6, :cond_b

    .line 2224
    :cond_a
    invoke-virtual {v9, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2226
    :cond_b
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 2215
    :cond_c
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 2216
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    goto :goto_2

    .line 2220
    :cond_d
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    .line 2221
    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    goto :goto_3

    .line 2155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 8
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 1732
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_1

    .line 1733
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1734
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeAllPanels()V

    .line 1735
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 1805
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_4

    .line 1743
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 1744
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 1747
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1748
    :cond_2
    invoke-virtual {p0, v4, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeWindow(IZ)V

    goto :goto_0

    .line 1750
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1751
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 1752
    invoke-direct {p0, v4, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(ZI)V

    goto :goto_0

    .line 1757
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1760
    .local v0, "currStackBound":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v2, :cond_5

    .line 1761
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-eq v2, v5, :cond_8

    .line 1762
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 1776
    :cond_5
    :goto_2
    invoke-virtual {p1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1777
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v2

    if-eq v2, v6, :cond_6

    .line 1778
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1779
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    .line 1781
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto :goto_0

    :cond_7
    move v2, v4

    .line 1762
    goto :goto_1

    .line 1763
    :cond_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eq v2, v5, :cond_9

    .line 1764
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_2

    .line 1765
    :cond_9
    invoke-virtual {p1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1766
    if-eqz v0, :cond_5

    .line 1767
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v2, v5, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-eq v2, v5, :cond_5

    .line 1769
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 1787
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1790
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v7, :cond_c

    .line 1791
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V

    .line 1792
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 1796
    :cond_c
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v2, :cond_d

    .line 1797
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(Z)V

    .line 1800
    :cond_d
    if-eqz v0, :cond_0

    .line 1801
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 1717
    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1974
    const/4 v0, 0x0

    .line 1975
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    .line 1976
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1977
    if-eqz v0, :cond_0

    .line 1978
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 1979
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1980
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 1983
    :cond_0
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_0

    .line 1991
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 1993
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1994
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    .line 1995
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    .line 1997
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1998
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1999
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2001
    :cond_1
    return-void
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v4, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2008
    if-nez p1, :cond_1

    .line 2009
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2010
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2011
    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    .line 2012
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v4, 0x1020353

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    .line 2013
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2014
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050117

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2015
    .local v1, "minimizeSize":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    new-array v5, v5, [I

    aput v1, v5, v6

    aput v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 2041
    .end local v1    # "minimizeSize":I
    :cond_0
    :goto_0
    return-void

    .line 2017
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2023
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    .line 2029
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    .line 2030
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2031
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiPhoneWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2032
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 2033
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2035
    :cond_2
    invoke-virtual {p1, v6, v6}, Landroid/view/View;->measure(II)V

    .line 2036
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2037
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2038
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    new-array v5, v5, [I

    aput v2, v5, v6

    aput v0, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 2039
    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 1712
    const/4 v0, 0x1

    return v0
.end method
