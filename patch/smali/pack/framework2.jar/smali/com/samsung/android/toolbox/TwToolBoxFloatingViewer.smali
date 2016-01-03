.class public Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.super Landroid/widget/FrameLayout;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "toolbox"


# instance fields
.field private final BLOCK_LIST:[Ljava/lang/String;

.field private final FIXED_MAIN_ITEM_GAP:I

.field private final FIXED_MAIN_ITEM_HEIGHT:I

.field private final FIXED_MAIN_ITEM_WIDTH:I

.field private final FIXED_ROUND_TAIL_SIZE:I

.field private final FIXED_SHORTCUT_ITEM_GAP:I

.field private final FIXED_SHORTCUT_ITEM_SIZE:I

.field private final FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

.field private final FIXED_START_POSITION_RIGHT_PADDING:I

.field private final FIXED_START_POSITION_TOP_PADDING:I

.field private final LONG_PRESS_PANEL_HEIGHT_PX:I

.field private final LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I

.field private final MAIN_DECREASE_RATIO:F

.field private final MAIN_DIM_RATIO:F

.field private final SCALED_APPROACH_SLOP:I

.field private final SCALED_TOUCH_SLOP:I

.field private final SLEEP_TIME_OUT:I

.field private final TOOLBOX_MAX_ITEM_COUNT:I

.field private final TOTAL_HEIGHT:I

.field private mAbsX:I

.field private mAbsY:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAllPackages:[Ljava/lang/Object;

.field private final mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mBoxAnimating:Z

.field private mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

.field private mCenterX:I

.field private mCenterY:I

.field private final mCheckEnvironment:Ljava/lang/Runnable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverOpen:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCurrentPackage:Ljava/lang/String;

.field private mDVFSCookie:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field private mDeivceProvisioned:Z

.field public mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

.field private mDeltaX:I

.field private mDeltaY:I

.field private final mDensity:F

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisableFloatingViewer:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDownSlopArea:Landroid/graphics/Rect;

.field private final mDrawGlobalRect:Landroid/graphics/Rect;

.field private mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEditAfterScreenCapture:I

.field private mEnableFloatingViewer:Z

.field private mEndFloatingBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingBgArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingEditBgArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingEditBtnArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

.field private mEndFloatingMsgEdit:Ljava/lang/String;

.field private mEndFloatingMsgRemove:Ljava/lang/String;

.field private mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

.field private mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

.field private final mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

.field private mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

.field private mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

.field private mEnterAnimator:Landroid/animation/ValueAnimator;

.field private mEnterProgressValue:F

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandProgressValue:F

.field private mExpanded:Z

.field private mExploreByTouchMode:Z

.field private mExploreByTouchModeObserver:Landroid/database/ContentObserver;

.field private mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

.field private final mFont:Landroid/graphics/Typeface;

.field private final mGlobalRect:Landroid/graphics/Rect;

.field private final mGoToPositionAndromeda:Ljava/lang/Runnable;

.field private final mGoToPositionCallback:Ljava/lang/Runnable;

.field private mHiddenToolBox:Z

.field private mInVSync:Z

.field private final mIsTablet:Z

.field private mKeyguardShowing:Z

.field private mKidsMode:Z

.field private mKidsModeObserver:Landroid/database/ContentObserver;

.field private mLastOrientation:I

.field private mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

.field private mLongPressPanelPosition:I

.field private mLongPressPanelRemoveAnimating:Z

.field private mLongPressPanelRemoveBtnAngle:F

.field private final mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

.field private mLongPressPanelRemoveBtnPosition:I

.field private mLongPressPanelShowing:Z

.field private mLongPressed:Z

.field private mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

.field private mMainCharacterDecreaseAmount:I

.field private mMainCharacterDegree:I

.field private mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

.field private final mMaskCanvas:Landroid/graphics/Canvas;

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private mMovingByAnimation:Z

.field private mNeedSaveCenterPosition:Z

.field private mOTAShowing:Z

.field private final mObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageListObserver:Landroid/database/ContentObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

.field private mPositionAnimatorX:Landroid/animation/ValueAnimator;

.field private mPositionAnimatorY:Landroid/animation/ValueAnimator;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReset:Ljava/lang/Runnable;

.field private mReseting:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mScreenWriteRecovery:Ljava/lang/Runnable;

.field private final mShadowRect:Landroid/graphics/Rect;

.field private final mShakeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSipReceiver:Landroid/content/BroadcastReceiver;

.field private mSipVisible:Z

.field private mSleepAnimator:Landroid/animation/ValueAnimator;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTargetX:I

.field private mTargetY:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTouchClickRunnable:Ljava/lang/Runnable;

.field private final mTouchLongClickRunnable:Ljava/lang/Runnable;

.field mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

.field private mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

.field private final mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

.field private mTracking:Z

.field private mTransparentAnimator:Landroid/animation/ValueAnimator;

.field private mTurnOffAnimator:Landroid/animation/ValueAnimator;

.field private mTurnOffEffectRatio:F

.field private mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

.field private final mUpdateLongPressPanelRect:Ljava/lang/Runnable;

.field private final mUpdateVisibility:Ljava/lang/Runnable;

.field private mValidUser:Z

.field private mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mVisible:Z

.field private mVisibleFloatingStyle:Z

.field public final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mXfermode:Landroid/graphics/PorterDuffXfermode;

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xff

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SLEEP_TIME_OUT:I

    .line 97
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->TOOLBOX_MAX_ITEM_COUNT:I

    .line 98
    const v0, 0x3e75c28f    # 0.24f

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DECREASE_RATIO:F

    .line 99
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DIM_RATIO:F

    .line 126
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    .line 134
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    .line 135
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    .line 136
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 137
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 138
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    .line 139
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    .line 140
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    .line 141
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisible:Z

    .line 142
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    .line 143
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    .line 144
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    .line 145
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    .line 146
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    .line 147
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    .line 148
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    .line 149
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    .line 150
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    .line 151
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    .line 152
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    .line 153
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    .line 154
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    .line 155
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 159
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    .line 176
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    .line 177
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    .line 178
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    .line 179
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    .line 180
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    .line 181
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    .line 195
    const-string/jumbo v0, "sec-roboto-light"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    .line 196
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 197
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 209
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    .line 213
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    .line 221
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 222
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 223
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    .line 224
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    .line 225
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 226
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 231
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    .line 239
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v3

    const-string v2, "com.sec.android.app.ma.recorder"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v4, "com.sec.android.app.simcardmanagement"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "com.sec.android.app.kidshome"

    aput-object v4, v0, v2

    const/4 v2, 0x4

    const-string v4, "com.sec.kidsplat.parentalcontrol"

    aput-object v4, v0, v2

    const/4 v2, 0x5

    const-string v4, "com.sec.android.app.magnifier"

    aput-object v4, v0, v2

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .line 434
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    .line 473
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    .line 483
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    .line 549
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 557
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 573
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    .line 610
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1053
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    .line 1059
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    .line 1065
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    .line 1071
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    .line 1077
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    .line 1083
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    .line 1089
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    .line 1095
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    .line 1101
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    .line 1107
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    .line 1113
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    .line 1145
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionAndromeda:Ljava/lang/Runnable;

    .line 1151
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    .line 1158
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;

    .line 251
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 256
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 258
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 259
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 260
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    .line 261
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    .line 262
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 264
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 265
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    const/16 v2, 0x64

    const/16 v4, 0x64

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    .line 268
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v0, v2, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    .line 270
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cb5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 271
    .local v9, "mainCharacter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    .line 272
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    .line 273
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    .line 274
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500ed

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    .line 275
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_GAP:I

    .line 276
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    .line 277
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    .line 278
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    .line 279
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    .line 280
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    .line 281
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I

    .line 282
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    .line 283
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I

    .line 286
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_GAP:I

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->TOTAL_HEIGHT:I

    .line 288
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x10500f4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 294
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500f3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 296
    .local v10, "textShadowSize":I
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, v10

    int-to-float v4, v10

    int-to-float v5, v10

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 300
    .end local v10    # "textShadowSize":I
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cb3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cbb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    .line 302
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cb0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    .line 303
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cb1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    .line 304
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cb2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    .line 305
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cbc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    .line 306
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cbd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    .line 307
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cbe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    .line 308
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080cbf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    .line 309
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040865

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10409cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    .line 313
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "touch_exploration_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    .line 314
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "kids_home_mode"

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    .line 318
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->TOTAL_HEIGHT:I

    const/16 v5, 0x7df

    const/16 v6, 0x318

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 329
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 330
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 332
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 335
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "TwToolBoxFloatingViewer"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 339
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 340
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, -0x2710

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 342
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    .line 345
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 349
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 350
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 352
    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_2

    .line 353
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 354
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 359
    :cond_2
    const-class v8, Ldalvik/system/VMRuntime;

    .line 361
    .local v8, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v0, "pauseGc"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 362
    const-string/jumbo v0, "resumeGc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    return-void

    .end local v8    # "clazz":Ljava/lang/Class;
    .end local v9    # "mainCharacter":Landroid/graphics/drawable/Drawable;
    :cond_3
    move v0, v3

    .line 268
    goto/16 :goto_0

    .restart local v9    # "mainCharacter":Landroid/graphics/drawable/Drawable;
    :cond_4
    move v0, v3

    .line 312
    goto/16 :goto_1

    :cond_5
    move v0, v3

    .line 313
    goto/16 :goto_2

    :cond_6
    move v1, v3

    .line 314
    goto/16 :goto_3

    .line 364
    .restart local v8    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 363
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/service/dreams/IDreamManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableOTA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionAndromeda:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    return-void
.end method

.method static synthetic access$2902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolLongClick()V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolClick()V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationSleep()V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationWakeup()V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationExpand()V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeIn()V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeOut()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I

    return v0
.end method

.method static synthetic access$4700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return v0
.end method

.method static synthetic access$4702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return p1
.end method

.method static synthetic access$4712(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I

    return v0
.end method

.method static synthetic access$4900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return v0
.end method

.method static synthetic access$4902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return p1
.end method

.method static synthetic access$4912(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    return-void
.end method

.method static synthetic access$5300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I

    return v0
.end method

.method static synthetic access$5400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionAndromeda()V

    return-void
.end method

.method static synthetic access$5700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return v0
.end method

.method static synthetic access$5702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return p1
.end method

.method static synthetic access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    return v0
.end method

.method static synthetic access$6002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    return p1
.end method

.method static synthetic access$6102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    return p1
.end method

.method static synthetic access$6200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return v0
.end method

.method static synthetic access$6202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return p1
.end method

.method static synthetic access$6300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return v0
.end method

.method static synthetic access$6302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return p1
.end method

.method static synthetic access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    return v0
.end method

.method static synthetic access$6500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    return v0
.end method

.method static synthetic access$6802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    return p1
.end method

.method static synthetic access$6900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    return v0
.end method

.method static synthetic access$6902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    return v0
.end method

.method static synthetic access$7002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    return p1
.end method

.method static synthetic access$7100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->toggleTorch()V

    return-void
.end method

.method static synthetic access$7300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->screenCapture()V

    return-void
.end method

.method static synthetic access$7400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    return-void
.end method

.method static synthetic access$8000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    return v0
.end method

.method static synthetic access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I

    return v0
.end method

.method static synthetic access$8800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private acquireDVFS()V
    .locals 1

    .prologue
    .line 1443
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->releaseDVFS()V

    .line 1445
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    if-nez v0, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1447
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1450
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    .line 1452
    :cond_1
    return-void
.end method

.method private clearToolBox()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1938
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1939
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1940
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1941
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1942
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1943
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1944
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1945
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1946
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1947
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1948
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1949
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1950
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1953
    invoke-direct {p0, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    .line 1955
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1956
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1957
    .local v2, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1958
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1959
    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    .line 1960
    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    .line 1961
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 1962
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1963
    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1966
    .end local v2    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1968
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1969
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1971
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1972
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1974
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1975
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1977
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1978
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1980
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1981
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1983
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1984
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1986
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "a":Landroid/animation/Animator;
    move-object v3, v0

    .line 1987
    check-cast v3, Landroid/animation/ValueAnimator;

    .line 1988
    .local v3, "va":Landroid/animation/ValueAnimator;
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1989
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_1

    .line 1991
    .end local v0    # "a":Landroid/animation/Animator;
    .end local v3    # "va":Landroid/animation/ValueAnimator;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1994
    const-string/jumbo v4, "toolbox"

    const-string v5, "ToolBox disposed..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    .line 1998
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1999
    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    .line 2000
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2001
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 2002
    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    .line 2005
    :cond_4
    iput-boolean v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 2006
    iput v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    .line 2007
    iput v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    .line 2008
    iput v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    .line 2009
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v4, v4

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    .line 2011
    return-void
.end method

.method private drawToolBox(Landroid/graphics/Canvas;IIZ)V
    .locals 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "isReCalculation"    # Z

    .prologue
    .line 847
    const/4 v10, 0x0

    .line 848
    .local v10, "halfWidth":I
    const/4 v9, 0x0

    .line 849
    .local v9, "halfHeight":I
    const/4 v7, 0x0

    .line 850
    .local v7, "boxAnimating":Z
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v26

    or-int v7, v7, v26

    .line 853
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v26

    or-int v7, v7, v26

    .line 856
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 857
    .local v13, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v26, v0

    sget-object v27, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    .line 858
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    const/16 v26, 0xff

    :goto_2
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v5, v0

    .line 860
    .local v5, "alpha":I
    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    move/from16 v26, v0

    or-int v7, v7, v26

    .line 862
    instance-of v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v26, v0

    if-eqz v26, :cond_7

    .line 863
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v26, v0

    div-int/lit8 v10, v26, 0x2

    .line 864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    move/from16 v26, v0

    div-int/lit8 v9, v26, 0x2

    .line 865
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    sub-int v27, p2, v10

    sub-int v28, p3, v9

    add-int v29, p2, v10

    add-int v30, p3, v9

    invoke-virtual/range {v26 .. v30}, Landroid/graphics/Rect;->set(IIII)V

    .line 869
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_5

    .line 870
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    sub-float v22, v26, v27

    .line 871
    .local v22, "progress":F
    const v26, 0x3e75c28f    # 0.24f

    mul-float v26, v26, v22

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 872
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v22

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    .line 880
    .end local v22    # "progress":F
    :goto_3
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->inset(II)V

    .line 881
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 857
    .end local v5    # "alpha":I
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 858
    .restart local v6    # "background":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/16 v26, 0x80

    goto/16 :goto_2

    .line 874
    .restart local v5    # "alpha":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_6

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    goto :goto_3

    .line 878
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x3e75c28f    # 0.24f

    mul-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    goto/16 :goto_3

    .line 884
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_2

    .line 887
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    move/from16 v26, v0

    div-int/lit8 v10, v26, 0x2

    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    move/from16 v26, v0

    div-int/lit8 v9, v26, 0x2

    .line 890
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    sub-int v27, p2, v10

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v29, v0

    add-float v28, v28, v29

    int-to-float v0, v9

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v29, p2, v10

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v31, v0

    add-float v30, v30, v31

    int-to-float v0, v9

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v26 .. v30}, Landroid/graphics/Rect;->set(IIII)V

    .line 892
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->inset(II)V

    .line 893
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 900
    .end local v5    # "alpha":I
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 906
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    .line 909
    if-eqz p4, :cond_12

    .line 926
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updatePosition()V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    add-int v24, v26, v27

    .line 931
    .local v24, "zeroOffsetX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    add-int v25, v26, v27

    .line 932
    .local v25, "zeroOffsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-gtz v26, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 936
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    const/high16 v27, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 942
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 943
    .local v19, "objectSize":I
    add-int/lit8 v12, v19, -0x1

    .local v12, "idx":I
    :goto_4
    if-ltz v12, :cond_16

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 945
    .restart local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v26, v0

    sget-object v27, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_19

    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    move/from16 v26, v0

    if-nez v26, :cond_19

    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    .line 946
    .restart local v6    # "background":Landroid/graphics/drawable/Drawable;
    :goto_5
    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    const/16 v26, 0xff

    :goto_6
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v5, v0

    .line 949
    .restart local v5    # "alpha":I
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 951
    instance-of v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    move-object v14, v13

    .line 952
    check-cast v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    .line 955
    .local v14, "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->offset(II)V

    .line 958
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 959
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    const/high16 v27, 0x437f0000    # 255.0f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3fc999999999999aL    # 0.2

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 960
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 964
    :cond_c
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 965
    .local v17, "mainNormalBg":Landroid/graphics/drawable/Drawable;
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    .line 966
    .local v15, "mainCenterX":I
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    .line 967
    .local v16, "mainCenterY":I
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 969
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-lez v26, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 970
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    const/16 v27, 0x5a

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 971
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-lez v26, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 973
    :cond_f
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 974
    .local v18, "mainOpenBg":Landroid/graphics/drawable/Drawable;
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-lez v26, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x5a

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 977
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42b40000    # 90.0f

    div-float v26, v26, v27

    const/high16 v27, 0x437f0000    # 255.0f

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 978
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 979
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-lez v26, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x5a

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 943
    .end local v14    # "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    .end local v15    # "mainCenterX":I
    .end local v16    # "mainCenterY":I
    .end local v17    # "mainNormalBg":Landroid/graphics/drawable/Drawable;
    .end local v18    # "mainOpenBg":Landroid/graphics/drawable/Drawable;
    :cond_11
    :goto_7
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_4

    .line 912
    .end local v5    # "alpha":I
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v12    # "idx":I
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v19    # "objectSize":I
    .end local v24    # "zeroOffsetX":I
    .end local v25    # "zeroOffsetY":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    .line 913
    .local v23, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 914
    .local v8, "h":I
    const/16 v20, 0x0

    .local v20, "offsetX":I
    const/16 v21, 0x0

    .line 915
    .local v21, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    if-gez v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v20, v0

    .line 917
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    if-gez v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v21, v0

    .line 919
    :cond_14
    :goto_9
    if-nez v20, :cond_15

    if-eqz v21, :cond_9

    .line 920
    :cond_15
    add-int v26, p2, v20

    add-int v27, p3, v21

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->drawToolBox(Landroid/graphics/Canvas;IIZ)V

    .line 999
    .end local v8    # "h":I
    .end local v20    # "offsetX":I
    .end local v21    # "offsetY":I
    .end local v23    # "w":I
    :cond_16
    return-void

    .line 916
    .restart local v8    # "h":I
    .restart local v20    # "offsetX":I
    .restart local v21    # "offsetY":I
    .restart local v23    # "w":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v20, v23, v26

    goto :goto_8

    .line 918
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v0, v8, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v21, v8, v26

    goto :goto_9

    .line 945
    .end local v8    # "h":I
    .end local v20    # "offsetX":I
    .end local v21    # "offsetY":I
    .end local v23    # "w":I
    .restart local v12    # "idx":I
    .restart local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .restart local v19    # "objectSize":I
    .restart local v24    # "zeroOffsetX":I
    .restart local v25    # "zeroOffsetY":I
    :cond_19
    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 946
    .restart local v6    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1a
    const/16 v26, 0x80

    goto/16 :goto_6

    .line 982
    .restart local v5    # "alpha":I
    :cond_1b
    if-eqz v5, :cond_11

    iget v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v26, v0

    int-to-float v0, v9

    move/from16 v27, v0

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_11

    .line 985
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->offset(II)V

    .line 988
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 989
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    int-to-double v0, v5

    move-wide/from16 v27, v0

    const-wide v29, 0x3fc999999999999aL    # 0.2

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 990
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 994
    :cond_1c
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 995
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7
.end method

.method private getSCoverState()Z
    .locals 2

    .prologue
    .line 2278
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_0

    .line 2279
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 2280
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    .line 2281
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 2284
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getTorchStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2375
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "torch_light"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private goToPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1373
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I

    .line 1374
    iput p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I

    .line 1375
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    .line 1376
    return-void
.end method

.method private goToPositionAndromeda()V
    .locals 2

    .prologue
    .line 1436
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1439
    :cond_0
    return-void
.end method

.method private goToPositionOneShot(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1379
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    .line 1380
    .local v0, "oldCenterX":I
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    .line 1383
    .local v1, "oldCenterY":I
    invoke-direct {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    .line 1385
    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_1

    .line 1386
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_2

    .line 1387
    new-array v2, v6, [I

    aput v0, v2, v4

    aput p1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    .line 1388
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;

    invoke-direct {v3, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1399
    new-array v2, v6, [I

    aput v1, v2, v4

    aput p2, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    .line 1400
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;

    invoke-direct {v3, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1411
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;

    invoke-direct {v3, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1429
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1430
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1433
    :cond_1
    return-void

    .line 1426
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-array v3, v6, [I

    aput v0, v3, v4

    aput p1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1427
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-array v3, v6, [I

    aput v1, v3, v4

    aput p2, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method private initVSync()V
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    .line 1526
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    .line 1528
    :cond_0
    return-void
.end method

.method private initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    .locals 6
    .param p1, "m"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2014
    packed-switch p2, :pswitch_data_0

    .line 2157
    :goto_0
    :pswitch_0
    return v2

    .line 2017
    :pswitch_1
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.galaxyfinder"

    const-string v5, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    .local v0, "cm":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    .line 2019
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2020
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    :goto_1
    move v2, v3

    .line 2157
    goto :goto_0

    .line 2031
    :catch_0
    move-exception v1

    .line 2032
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sfinder Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2040
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2041
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 2042
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2054
    :catch_1
    move-exception v1

    .line 2055
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickConnect Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2063
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_2
    sget-object v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    .line 2064
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2065
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    .line 2066
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v4

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    .line 2067
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 2068
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 2082
    :catch_2
    move-exception v1

    .line 2083
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TorchLight Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2091
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_4
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2092
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 2093
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 2112
    :catch_3
    move-exception v1

    .line 2113
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenWrite Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2131
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_5
    :try_start_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.magnifier"

    const-string v5, "com.sec.android.app.magnifier.Magnifier"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    .restart local v0    # "cm":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    .line 2133
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2134
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 2146
    .end local v0    # "cm":Landroid/content/ComponentName;
    :catch_4
    move-exception v1

    .line 2147
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Magnifier Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isDisableFloatingViewer()Z
    .locals 6

    .prologue
    .line 2319
    const/4 v4, 0x0

    .line 2320
    .local v4, "needBlock":Z
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2321
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2322
    const/4 v4, 0x1

    .line 2327
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    if-eqz v5, :cond_3

    :cond_1
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 2320
    .restart local v1    # "blockPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2327
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEnableFloatingViewer()Z
    .locals 6

    .prologue
    .line 2333
    const/4 v4, 0x0

    .line 2334
    .local v4, "needBlock":Z
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2335
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2336
    const/4 v4, 0x1

    .line 2341
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 2334
    .restart local v1    # "blockPkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2341
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEnableOTA()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2363
    const-string v1, "KOR"

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2364
    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2366
    :cond_0
    return v0
.end method

.method private isEnabledPkg(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2347
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2349
    .local v1, "enable":I
    const/4 v4, 0x2

    if-eq v4, v1, :cond_0

    const/4 v4, 0x3

    if-ne v4, v1, :cond_1

    .line 2358
    .end local v1    # "enable":I
    :cond_0
    :goto_0
    return v3

    .line 2353
    .restart local v1    # "enable":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2355
    .end local v1    # "enable":I
    :catch_0
    move-exception v2

    .line 2356
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 2357
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2358
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isPointInCircle(DDDII)Z
    .locals 13
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "radius"    # D
    .param p7, "x"    # I
    .param p8, "y"    # I

    .prologue
    .line 1547
    move/from16 v0, p7

    int-to-double v9, v0

    sub-double v11, p1, p5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1

    move/from16 v0, p7

    int-to-double v9, v0

    add-double v11, p1, p5

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_1

    move/from16 v0, p8

    int-to-double v9, v0

    sub-double v11, p3, p5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1

    move/from16 v0, p8

    int-to-double v9, v0

    add-double v11, p3, p5

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_1

    .line 1549
    move/from16 v0, p7

    int-to-double v9, v0

    sub-double v3, p1, v9

    .line 1550
    .local v3, "dx":D
    move/from16 v0, p8

    int-to-double v9, v0

    sub-double v5, p3, v9

    .line 1551
    .local v5, "dy":D
    mul-double/2addr v3, v3

    .line 1552
    mul-double/2addr v5, v5

    .line 1553
    add-double v1, v3, v5

    .line 1554
    .local v1, "distanceSquared":D
    mul-double v7, p5, p5

    .line 1555
    .local v7, "radiusSquared":D
    cmpg-double v9, v1, v7

    if-gtz v9, :cond_0

    const/4 v9, 0x1

    .line 1557
    .end local v1    # "distanceSquared":D
    .end local v3    # "dx":D
    .end local v5    # "dy":D
    .end local v7    # "radiusSquared":D
    :goto_0
    return v9

    .line 1555
    .restart local v1    # "distanceSquared":D
    .restart local v3    # "dx":D
    .restart local v5    # "dy":D
    .restart local v7    # "radiusSquared":D
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1557
    .end local v1    # "distanceSquared":D
    .end local v3    # "dx":D
    .end local v5    # "dy":D
    .end local v7    # "radiusSquared":D
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private isValidUser()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2312
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_0

    move v0, v2

    .line 2313
    .local v0, "isKnoxUser":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2314
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    return v2

    .end local v0    # "isKnoxUser":Z
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    move v0, v3

    .line 2312
    goto :goto_0

    .restart local v0    # "isKnoxUser":Z
    .restart local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    move v2, v3

    .line 2314
    goto :goto_1
.end method

.method private loadCenterPosition()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 2256
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tw_tool_box_floating_x_ratio"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    .line 2257
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tw_tool_box_floating_y_ratio"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    .line 2258
    return-void
.end method

.method private onToolClick()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v5, 0x0

    .line 1333
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    if-eqz v6, :cond_1

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1334
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v6, v7, :cond_8

    .line 1335
    invoke-virtual {p0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1336
    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 1337
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_3

    .line 1338
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1339
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1369
    :cond_2
    :goto_1
    const-string/jumbo v5, "toolbox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Click() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget v7, v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1341
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    if-nez v6, :cond_6

    move v0, v5

    .line 1342
    .local v0, "allPkgCount":I
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v0, v6, :cond_7

    .line 1343
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1344
    .local v3, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-eq v3, v6, :cond_4

    iget-boolean v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    if-nez v6, :cond_4

    .line 1345
    iget-object v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1346
    .local v1, "data":[Ljava/lang/String;
    aget-object v4, v1, v5

    .line 1347
    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1348
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1356
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1357
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1341
    .end local v0    # "allPkgCount":I
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v0, v6

    goto :goto_2

    .line 1353
    .restart local v0    # "allPkgCount":I
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 1360
    .end local v0    # "allPkgCount":I
    :cond_8
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_2

    .line 1361
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v6, v6, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    invoke-interface {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;->onAction()V

    .line 1362
    invoke-virtual {p0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1363
    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 1364
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1365
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1366
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto/16 :goto_1
.end method

.method private onToolLongClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1309
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-nez v0, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 1311
    const-string/jumbo v0, "toolbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LongClick() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v0, v1, :cond_0

    .line 1314
    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1315
    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 1316
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1317
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(II)V

    .line 1319
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v2, v2

    aput v2, v1, v3

    aput v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1320
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1321
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1323
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_2

    .line 1324
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1327
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    goto :goto_0
.end method

.method private onTouchDown(II)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1169
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-eqz v2, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, p1, v2

    .line 1171
    .local v9, "relX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v10, p2, v2

    .line 1172
    .local v10, "relY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v11, 0x1

    .line 1173
    .local v11, "conflict":Z
    :goto_1
    const/4 v15, 0x0

    .line 1174
    .local v15, "tracking":Z
    if-eqz v11, :cond_5

    .line 1175
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v2, :cond_3

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1177
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    goto :goto_0

    .line 1172
    .end local v11    # "conflict":Z
    .end local v15    # "tracking":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1180
    .restart local v11    # "conflict":Z
    .restart local v15    # "tracking":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1181
    .local v13, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v14, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    .line 1182
    .local v14, "r":Landroid/graphics/Rect;
    iget-boolean v2, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isRectangleShape:Z

    if-eqz v2, :cond_7

    invoke-virtual {v14, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1184
    :goto_2
    iget-boolean v2, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    if-nez v2, :cond_4

    .line 1186
    const/4 v15, 0x1

    .line 1187
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1192
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    .line 1193
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    .line 1195
    if-eqz v11, :cond_8

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1207
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v2, :cond_0

    .line 1208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    sub-int v3, p1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    add-int v5, v5, p1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    add-int v6, v6, p2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v9, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v10, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    goto/16 :goto_0

    .line 1182
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .restart local v14    # "r":Landroid/graphics/Rect;
    :cond_7
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-double v3, v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-double v5, v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isPointInCircle(DDDII)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    .line 1201
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_6

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method private onTouchMove(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_2

    .line 1221
    :cond_0
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I

    .line 1222
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I

    .line 1235
    :cond_1
    :goto_0
    return-void

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1226
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v0, v1, :cond_1

    .line 1227
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1228
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(II)V

    .line 1229
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onTouchUpOrCancel(III)V
    .locals 23
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1240
    .local v12, "lastTouchMode":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1243
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1247
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 1248
    .local v17, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1249
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 1250
    .local v5, "absoluteMainLeft":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .line 1251
    .local v7, "absoluteMainTop":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v19, v0

    add-int v6, v18, v19

    .line 1252
    .local v6, "absoluteMainRight":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 1253
    .local v4, "absoluteMainBottom":I
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1285
    .end local v4    # "absoluteMainBottom":I
    .end local v5    # "absoluteMainLeft":I
    .end local v6    # "absoluteMainRight":I
    .end local v7    # "absoluteMainTop":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1286
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1287
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const/high16 v19, 0x43960000    # 300.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    move/from16 v22, v0

    div-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->reverse()V

    .line 1292
    :cond_4
    sget-object v18, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1293
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v12, v0, :cond_5

    .line 1296
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1299
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-nez v18, :cond_6

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0xbb8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1305
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    .line 1306
    return-void

    .line 1256
    .restart local v4    # "absoluteMainBottom":I
    .restart local v5    # "absoluteMainLeft":I
    .restart local v6    # "absoluteMainRight":I
    .restart local v7    # "absoluteMainTop":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7, v6, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1257
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.settings.TOOLBOX_LIST"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v11, "intent":Landroid/content/Intent;
    const v18, 0x10008000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    const/16 v20, -0x2

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string/jumbo v19, "tw_tool_box_floating_x_ratio"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v15, v0

    .line 1263
    .local v15, "newCenterX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string/jumbo v19, "tw_tool_box_floating_y_ratio"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1264
    .local v16, "newCenterY":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionOneShot(II)V

    goto/16 :goto_0

    .line 1266
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "newCenterX":I
    .end local v16    # "newCenterY":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7, v6, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1269
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    .line 1270
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1271
    const/4 v14, 0x0

    .line 1272
    .local v14, "needBlock":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v13, :cond_a

    aget-object v9, v8, v10

    .line 1273
    .local v9, "blockPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1274
    const/4 v14, 0x1

    .line 1278
    .end local v9    # "blockPkg":Ljava/lang/String;
    :cond_a
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1272
    .restart local v9    # "blockPkg":Ljava/lang/String;
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1281
    .end local v4    # "absoluteMainBottom":I
    .end local v5    # "absoluteMainLeft":I
    .end local v6    # "absoluteMainRight":I
    .end local v7    # "absoluteMainTop":I
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "blockPkg":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "needBlock":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1282
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    goto/16 :goto_0
.end method

.method private pauseGC()V
    .locals 5

    .prologue
    .line 1474
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->resumeGC()V

    .line 1476
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1478
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AbsListScroll"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1480
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1479
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private playAnimationCollapse()V
    .locals 5

    .prologue
    .line 2198
    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-nez v2, :cond_0

    .line 2208
    :goto_0
    return-void

    .line 2200
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 2201
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    .line 2202
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 2203
    .local v1, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    .line 2206
    .end local v1    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2207
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private playAnimationEnter()V
    .locals 1

    .prologue
    .line 2161
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_0

    .line 2163
    :goto_0
    return-void

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationExpand()V
    .locals 3

    .prologue
    .line 2184
    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_1

    .line 2195
    :cond_0
    return-void

    .line 2185
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2187
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 2188
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 2189
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 2190
    .local v1, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    instance-of v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    if-eqz v2, :cond_2

    .line 2191
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    invoke-interface {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;->onUpdateToggleStatus()V

    .line 2193
    :cond_2
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationFadeIn()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2211
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v0, :cond_1

    .line 2226
    :cond_0
    :goto_0
    return-void

    .line 2213
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableFloatingViewer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    .line 2214
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    .line 2215
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    if-nez v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2218
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2220
    :cond_2
    const-string/jumbo v0, "toolbox"

    const-string/jumbo v3, "playAnimationFadeIn()"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    .line 2222
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2223
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 2224
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2225
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2214
    goto :goto_1
.end method

.method private playAnimationFadeOut()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2229
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_0

    .line 2238
    :goto_0
    return-void

    .line 2230
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2231
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2233
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2234
    const-string/jumbo v0, "toolbox"

    const-string/jumbo v1, "playAnimationFadeOut()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    .line 2236
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2237
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationSleep()V
    .locals 4

    .prologue
    .line 2166
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    :cond_0
    :goto_0
    return-void

    .line 2167
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2168
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x29b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2169
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x3ecccccd    # 0.4f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2170
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationWakeup()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2174
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2181
    :cond_0
    :goto_0
    return-void

    .line 2175
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2176
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 2177
    .local v0, "alpha":F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    .line 2178
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2179
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2180
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method

.method private prepareToolBoxLinear()V
    .locals 39

    .prologue
    .line 1561
    const-string/jumbo v3, "toolbox"

    const-string/jumbo v4, "prepareToolBoxLinear()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    new-instance v22, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v22 .. v22}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    .line 1565
    .local v22, "interpolator":Landroid/view/animation/interpolator/SineInOut80;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v3}, Lcom/samsung/android/toolbox/TwToolBoxManager;->getToolList()[Ljava/lang/String;

    move-result-object v37

    .line 1569
    .local v37, "tools":[Ljava/lang/String;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1570
    .local v36, "toolArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "0"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    move-object/from16 v12, v37

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget-object v35, v12, v20

    .local v35, "t":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1572
    .end local v35    # "t":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    .line 1573
    const/16 v31, 0x0

    .line 1575
    .local v31, "priority":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    .local v12, "arr$":[Ljava/lang/Object;
    array-length v0, v12

    move/from16 v24, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    aget-object v27, v12, v20

    .local v27, "obj":Ljava/lang/Object;
    move-object/from16 v28, v27

    .line 1576
    check-cast v28, Ljava/lang/String;

    .line 1577
    .local v28, "pkg":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1578
    .local v16, "data":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v29, v16, v3

    .line 1579
    .local v29, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    const-string v9, "00"

    .line 1580
    .local v9, "activityName":Ljava/lang/String;
    :goto_2
    const-string v3, "0"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 1581
    .local v23, "isMainCharactor":Z
    if-eqz v23, :cond_4

    new-instance v25, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    .line 1582
    .local v25, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :goto_3
    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    .line 1584
    new-instance v10, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    .line 1600
    .local v10, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    if-eqz v23, :cond_5

    .line 1601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1602
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    .line 1603
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1604
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1605
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1669
    :goto_4
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 1670
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1671
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    const/4 v5, 0x1

    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1674
    .local v14, "bitmapMask":Landroid/graphics/Bitmap;
    :goto_5
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 1675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1681
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    .line 1684
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "bitmapMask":Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    add-int/lit8 v31, v31, 0x1

    .line 1575
    :cond_2
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 1579
    .end local v9    # "activityName":Ljava/lang/String;
    .end local v10    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .end local v23    # "isMainCharactor":Z
    .end local v25    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_3
    const/4 v3, 0x1

    aget-object v9, v16, v3

    goto/16 :goto_2

    .line 1581
    .restart local v9    # "activityName":Ljava/lang/String;
    .restart local v23    # "isMainCharactor":Z
    :cond_4
    new-instance v25, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1618
    .restart local v10    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .restart local v25    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    .line 1619
    .local v30, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "00"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1620
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1626
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_2

    .line 1649
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    new-instance v11, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    .line 1659
    .local v11, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/16 v34, 0x0

    .line 1660
    .local v34, "startY":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_GAP:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    add-int/2addr v4, v5

    add-int/lit8 v5, v31, -0x1

    mul-int/2addr v4, v5

    add-int v19, v3, v4

    .line 1661
    .local v19, "endY":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v19, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    .line 1662
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1663
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1664
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1665
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v4, v4

    sub-int v4, v4, v31

    mul-int/lit8 v4, v4, 0x21

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/16 :goto_4

    .line 1622
    .end local v11    # "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .end local v19    # "endY":I
    .end local v34    # "startY":I
    .restart local v30    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    :try_start_1
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v0, v29

    invoke-direct {v15, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    .local v15, "cm":Landroid/content/ComponentName;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_7

    .line 1630
    .end local v15    # "cm":Landroid/content/ComponentName;
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v18

    .line 1631
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const-string v3, "index"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1635
    :try_start_2
    const-string v3, "index"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1636
    .local v21, "index":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_6

    .line 1639
    .end local v21    # "index":I
    :catch_1
    move-exception v26

    .line 1640
    .local v26, "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_6

    .line 1645
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v26    # "nfe":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v18

    .line 1646
    .local v18, "e":Ljava/lang/Exception;
    goto/16 :goto_6

    .line 1671
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    const/4 v5, 0x1

    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_5

    .line 1688
    .end local v9    # "activityName":Ljava/lang/String;
    .end local v10    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "data":[Ljava/lang/String;
    .end local v23    # "isMainCharactor":Z
    .end local v25    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v27    # "obj":Ljava/lang/Object;
    .end local v28    # "pkg":Ljava/lang/String;
    .end local v29    # "pkgName":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1711
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    .line 1712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1747
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    .line 1748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1769
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    .line 1770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1793
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    .line 1794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1828
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v32, v0

    .line 1829
    .local v32, "removeButtonMoveAmount":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v32, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v38

    .line 1830
    .local v38, "upAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x96

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1831
    const-wide/16 v3, 0x3c

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1832
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1842
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1853
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v32, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v17

    .line 1854
    .local v17, "downAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x96

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1855
    const-wide/16 v3, 0x3c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1856
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1866
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1877
    const/4 v3, 0x6

    new-array v3, v3, [F

    fill-array-data v3, :array_5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v33

    .line 1878
    .local v33, "shakeAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x190

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1879
    const-wide/16 v3, 0x3c

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1880
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1890
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1903
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 1907
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    .line 1908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1931
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1933
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    return-void

    .line 1602
    :array_0
    .array-data 4
        0x0
        0x5a
    .end array-data

    .line 1688
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1711
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1747
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 1769
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1877
    :array_5
    .array-data 4
        0x0
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x0
    .end array-data

    .line 1907
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private releaseDVFS()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1455
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    .line 1456
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1458
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :goto_0
    iput v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1465
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1468
    :cond_1
    iput-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    .line 1470
    :cond_2
    return-void

    .line 1460
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1459
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private resumeGC()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1487
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1489
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    :goto_0
    iput v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    .line 1495
    :cond_0
    return-void

    .line 1491
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1490
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private saveCenterPosition()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 2241
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tw_tool_box_floating_x_ratio"

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2242
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tw_tool_box_floating_y_ratio"

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2243
    return-void
.end method

.method private saveDefaultCenterPosition()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    .line 2246
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 2247
    .local v0, "defaultHalfWidth":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v5

    .line 2248
    .local v3, "screenWidth":F
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v5

    .line 2249
    .local v2, "screenHeight":F
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    .line 2250
    .local v4, "topPadding":I
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    .line 2251
    .local v1, "rightPadding":I
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "tw_tool_box_floating_x_ratio"

    int-to-float v7, v0

    sub-float v7, v3, v7

    int-to-float v8, v1

    sub-float/2addr v7, v8

    div-float/2addr v7, v3

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2252
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "tw_tool_box_floating_y_ratio"

    add-int v7, v0, v4

    int-to-float v7, v7

    div-float/2addr v7, v2

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2253
    return-void

    .line 2246
    .end local v0    # "defaultHalfWidth":I
    .end local v1    # "rightPadding":I
    .end local v2    # "screenHeight":F
    .end local v3    # "screenWidth":F
    .end local v4    # "topPadding":I
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    goto :goto_0
.end method

.method private screenCapture()V
    .locals 2

    .prologue
    .line 2379
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2393
    return-void
.end method

.method private setEnableVSync(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 1503
    if-eqz p1, :cond_0

    .line 1505
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->pauseGC()V

    .line 1508
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->acquireDVFS()V

    .line 1511
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVSync()V

    .line 1522
    :goto_0
    return-void

    .line 1514
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->stopVSync()V

    .line 1517
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->releaseDVFS()V

    .line 1520
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->resumeGC()V

    goto :goto_0
.end method

.method private setInitVSync()V
    .locals 1

    .prologue
    .line 1498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    .line 1499
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initVSync()V

    .line 1500
    return-void
.end method

.method private startActivityOrTask(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2288
    if-nez p1, :cond_0

    .line 2309
    :goto_0
    return-void

    .line 2291
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 2292
    .local v4, "targetPackageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 2293
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2

    .line 2294
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2295
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2296
    .local v3, "runningPackageName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2297
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    iget v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 2298
    const-string/jumbo v5, "toolbox"

    const-string/jumbo v6, "moveTaskToFront()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2303
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "runningPackageName":Ljava/lang/String;
    .end local v4    # "targetPackageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2307
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2308
    const-string/jumbo v5, "toolbox"

    const-string/jumbo v6, "startActivityAsUser()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopVSync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    .line 1540
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1542
    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    .line 1544
    :cond_0
    return-void
.end method

.method private toggleTorch()V
    .locals 2

    .prologue
    .line 2370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.ASSISTIVELIGHT_OFF"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2371
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2372
    return-void

    .line 2370
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "android.intent.action.ASSISTIVELIGHT_ON"

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 3

    .prologue
    .line 698
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 700
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 701
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    :cond_0
    return-void
.end method

.method private updateVSync()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1531
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    if-nez v0, :cond_0

    .line 1532
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    .line 1533
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initVSync()V

    .line 1534
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1536
    :cond_0
    return-void
.end method

.method private updateVisibility()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 706
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "toolbox_onoff"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisible:Z

    .line 707
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    .line 708
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    .line 709
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableFloatingViewer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    .line 710
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isDisableFloatingViewer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    .line 712
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    .line 715
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v1, :cond_2

    move v0, v3

    .line 716
    .local v0, "visibility":I
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 717
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    .end local v0    # "visibility":I
    :goto_3
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    return v1

    :cond_0
    move v1, v3

    .line 706
    goto :goto_0

    :cond_1
    move v2, v3

    .line 712
    goto :goto_1

    .line 715
    :cond_2
    const/16 v0, 0x8

    goto :goto_2

    .line 719
    .restart local v0    # "visibility":I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 721
    .end local v0    # "visibility":I
    :catch_0
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 839
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 842
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->drawToolBox(Landroid/graphics/Canvas;IIZ)V

    .line 844
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 1003
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 1006
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1009
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 730
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 732
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 733
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 735
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    .line 742
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 750
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    .line 758
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    .line 767
    const-string/jumbo v3, "toolbox_apps"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 768
    const-string v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 769
    const-string/jumbo v3, "touch_exploration_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 770
    const-string v3, "kids_home_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 772
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 773
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 778
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 779
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 780
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    .line 783
    iget-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v3, :cond_0

    .line 784
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 791
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 787
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 788
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x2bc

    add-long/2addr v4, v6

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 824
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 826
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v1, 0x1040865

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v1, 0x10409cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    .line 829
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 830
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 831
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    .line 832
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    .line 833
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 835
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 798
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 799
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x0

    .line 803
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 805
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 806
    .local v0, "orientation":I
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 807
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 808
    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 809
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_x_ratio"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 810
    .local v1, "ratioX":F
    cmpl-float v2, v1, v5

    if-nez v2, :cond_0

    .line 811
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveDefaultCenterPosition()V

    .line 813
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    .line 820
    .end local v1    # "ratioX":F
    :cond_1
    :goto_0
    return-void

    .line 815
    :cond_2
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    if-eq v2, v0, :cond_1

    .line 816
    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 817
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    .line 818
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x1

    .line 1013
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1016
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1023
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    .line 1024
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    .line 1026
    .local v2, "y":I
    if-nez v0, :cond_0

    .line 1027
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchDown(II)V

    .line 1030
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-eqz v5, :cond_5

    .line 1032
    :cond_1
    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_4

    .line 1034
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1035
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v5, v5

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    if-eqz v4, :cond_4

    .line 1036
    :cond_3
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    invoke-direct {p0, v6, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    .line 1037
    const-string/jumbo v4, "toolbox"

    const-string v5, "Recovered LongPressPanel"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_4
    :goto_0
    :pswitch_1
    return v3

    .line 1043
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 1044
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchMove(II)V

    :cond_6
    :goto_1
    move v3, v4

    .line 1050
    goto :goto_0

    .line 1046
    :cond_7
    if-eq v0, v4, :cond_8

    if-ne v0, v6, :cond_6

    .line 1047
    :cond_8
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    goto :goto_1

    .line 1016
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2262
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2264
    if-nez p2, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2266
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2267
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2268
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2275
    :goto_0
    return-void

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2271
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2272
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2273
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionAndromeda()V

    goto :goto_0
.end method

.method public registerCallback()V
    .locals 4

    .prologue
    .line 373
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxManager;->registerCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    .line 376
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setInitVSync()V

    .line 378
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 382
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 383
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    .line 387
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 388
    .local v1, "sipIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    .line 390
    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    .line 414
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    .line 417
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    .line 587
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 589
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    return-void

    .line 591
    :cond_1
    const-wide/16 v0, 0xa

    goto :goto_0
.end method

.method public unregisterCallback()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxManager;->unregisterCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    .line 422
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    .line 432
    return-void
.end method
