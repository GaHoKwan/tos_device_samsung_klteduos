.class public abstract Landroid/widget/AbsHorizontalListView;
.super Landroid/widget/AdapterView;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsHorizontalListView$HoverScrollHandler;,
        Landroid/widget/AbsHorizontalListView$RecycleBin;,
        Landroid/widget/AbsHorizontalListView$RecyclerListener;,
        Landroid/widget/AbsHorizontalListView$LayoutParams;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;,
        Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;,
        Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;,
        Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsHorizontalListView$PositionScroller;,
        Landroid/widget/AbsHorizontalListView$FlingRunnable;,
        Landroid/widget/AbsHorizontalListView$CheckForTap;,
        Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;,
        Landroid/widget/AbsHorizontalListView$CheckForLongPress;,
        Landroid/widget/AbsHorizontalListView$PerformClick;,
        Landroid/widget/AbsHorizontalListView$WindowRunnnable;,
        Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsHorizontalListView$SavedState;,
        Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsHorizontalListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;",
        "Lcom/samsung/android/service/gesture/GestureListener;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsHorizontalListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected AIR_VIEW_WINSET:Z

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private isHoveringUIEnabled:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAirScrollEnable:Z

.field private mAirScrollIRListenerRegistered:Z

.field private mAirScrollUnregisterByLongClick:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public mCurrentKeyCode:I

.field private mDVFSCookie:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/HorizontalFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field public mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

.field private mHoverLeftAreaWidth:I

.field private mHoverLeftAreaWidth_DP:I

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverRightAreaWidth:I

.field private mHoverRightAreaWidth_DP:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoveredOnEllipsizedText:Z

.field private mIsChildViewEnabled:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDragScrolled:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsPnePressed:Z

.field final mIsScrap:[Z

.field private mIsShiftkeyPressed:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

.field mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mOldAdapterItemCount:I

.field public mOldKeyCode:I

.field private mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollLeft:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollingCacheEnabled:Z

.field public mSecondPressedPoint:I

.field mSelectedLeft:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field public mTwCurrentFocusPosition:I

.field private mTwCustomMultiChoiceMode:Z

.field public mTwPressItemListArray:[I

.field public mTwPressItemListIndex:I

.field private final mTwScrollAmount:I

.field private mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

.field private mTwTwScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 813
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsHorizontalListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1036
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 145
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    .line 146
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 147
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 149
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 280
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    .line 313
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 338
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 343
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 353
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 358
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 364
    new-instance v1, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 369
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    .line 374
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    .line 379
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    .line 384
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    .line 389
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 394
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    .line 442
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 473
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 516
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 536
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 538
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 564
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    .line 567
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mScrollProfilingStarted:Z

    .line 570
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFlingProfilingStarted:Z

    .line 578
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 579
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 626
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    .line 645
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    .line 647
    new-array v1, v5, [Z

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    .line 657
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 662
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 669
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 720
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 752
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    .line 754
    const/16 v1, 0x19

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    .line 756
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 758
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 768
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    .line 770
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    .line 772
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 774
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    .line 776
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 778
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 783
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 788
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    .line 793
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 798
    const/16 v1, 0xa

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    .line 803
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 808
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 827
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 828
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollEnable:Z

    .line 829
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollUnregisterByLongClick:Z

    .line 830
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollIRListenerRegistered:Z

    .line 840
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    .line 845
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    .line 850
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 852
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 857
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 859
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 861
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    .line 865
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 867
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 869
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 871
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 939
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 940
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 941
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 942
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 943
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 944
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1026
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    .line 3457
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    .line 4400
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4401
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 5016
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 5018
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 5019
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 5020
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 5021
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    .line 6315
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6316
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6317
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mTwScrollAmount:I

    .line 8497
    new-instance v1, Landroid/widget/AbsHorizontalListView$5;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$5;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8692
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    .line 1037
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initAbsListView()V

    .line 1039
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1041
    invoke-virtual {p0, v5}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1042
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1043
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 1044
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1049
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1050
    const-string v1, "AbsHorizontalListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1055
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 1056
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1059
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1060
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1063
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    .line 146
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 147
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 149
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 280
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    .line 313
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 338
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 343
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 353
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 358
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 364
    new-instance v9, Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 369
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    .line 374
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    .line 379
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    .line 384
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    .line 389
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 394
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHeightMeasureSpec:I

    .line 442
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 473
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 516
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 536
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 538
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 564
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    .line 567
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollProfilingStarted:Z

    .line 570
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mFlingProfilingStarted:Z

    .line 578
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 579
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 626
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    .line 645
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    .line 647
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mIsScrap:[Z

    .line 657
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 662
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 669
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 720
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 752
    const/16 v9, 0xf

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    .line 754
    const/16 v9, 0x19

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    .line 756
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 758
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 768
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    .line 770
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    .line 772
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 774
    const/16 v9, 0x12c

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    .line 776
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 778
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 783
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 788
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    .line 793
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 798
    const/16 v9, 0xa

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    .line 803
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 808
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 827
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 828
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollEnable:Z

    .line 829
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollUnregisterByLongClick:Z

    .line 830
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollIRListenerRegistered:Z

    .line 840
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    .line 845
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    .line 850
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 852
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 857
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 859
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 861
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    .line 865
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 867
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 869
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 871
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    .line 939
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 940
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 941
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 942
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 943
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 944
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1026
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    .line 3457
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    .line 4400
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4401
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 5016
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 5018
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 5019
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 5020
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 5021
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    .line 6315
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6316
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6317
    const/16 v9, 0x1f4

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mTwScrollAmount:I

    .line 8497
    new-instance v9, Landroid/widget/AbsHorizontalListView$5;

    invoke-direct {v9, p0}, Landroid/widget/AbsHorizontalListView$5;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8692
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    .line 1064
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initAbsListView()V

    .line 1066
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1068
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1071
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1072
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 1073
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1076
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 1079
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1080
    .local v6, "stackFromBottom":Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsHorizontalListView;->setStackFromBottom(Z)V

    .line 1082
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1083
    .local v4, "scrollingCacheEnabled":Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 1085
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1086
    .local v8, "useTextFilter":Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsHorizontalListView;->setTextFilterEnabled(Z)V

    .line 1088
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1090
    .local v7, "transcriptMode":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->setTranscriptMode(I)V

    .line 1092
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1093
    .local v1, "color":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setCacheColorHint(I)V

    .line 1095
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1096
    .local v3, "enableFastScroll":Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->setFastScrollEnabled(Z)V

    .line 1098
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1099
    .local v5, "smoothScrollbar":Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->setSmoothScrollbarEnabled(Z)V

    .line 1101
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setChoiceMode(I)V

    .line 1102
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->setFastScrollAlwaysVisible(Z)V

    .line 1105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1110
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v9, :cond_1

    .line 1111
    const-string v9, "AbsHorizontalListView"

    const-string v10, "Get MotionRecognitionManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string/jumbo v9, "motion_recognition"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1116
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    .line 1117
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2282
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1002(Landroid/widget/AbsHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$CheckForLongPress;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    .prologue
    .line 134
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/widget/AbsHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    return-void
.end method

.method static synthetic access$1402(Landroid/widget/AbsHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollUnregisterByLongClick:Z

    return p1
.end method

.method static synthetic access$1702(Landroid/widget/AbsHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 134
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsHorizontalListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsHorizontalListView;)Landroid/view/HapticPreDrawListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 134
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 134
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 134
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsHorizontalListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Landroid/widget/AbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5400(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5500(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5600(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5700(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5800(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    return v0
.end method

.method static synthetic access$5900(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$6000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$6102(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$6200(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$6202(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$6300(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$6400(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$6702(Landroid/widget/AbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$6800(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/AbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$7100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$7202(Landroid/widget/AbsHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$800(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView;

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 6441
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6442
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6443
    new-instance v0, Landroid/widget/AbsHorizontalListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$4;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6459
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6461
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1620
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1621
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return v1

    .line 1622
    :cond_1
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1624
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6433
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6434
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6435
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 6436
    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    .line 6438
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 7500
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 7501
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7502
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7503
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7504
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7505
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7506
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7507
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7508
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7509
    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    .line 7510
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7511
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 7513
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 7514
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10301ef

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7518
    :goto_0
    return-void

    .line 7516
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10301f0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 7148
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7149
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7151
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3009
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3010
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 3011
    .local v2, "selectedPosition":I
    const/4 v1, 0x0

    .line 3012
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3013
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3014
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3015
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3019
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 3021
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v0, v5, :cond_2

    .line 3022
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v2, v5, v0

    .line 3023
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3025
    if-eqz v1, :cond_1

    .line 3026
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3027
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3028
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3021
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3033
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 7741
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 7742
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7743
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7745
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7194
    sparse-switch p2, :sswitch_data_0

    .line 7227
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7196
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7197
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7198
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7199
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7231
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 7232
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7233
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7202
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7203
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7204
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7205
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7206
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7208
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7209
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7210
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7211
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7212
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7214
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7215
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7216
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7217
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7218
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7221
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7222
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7223
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7224
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7225
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7194
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 7521
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 7522
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7523
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x109012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 7528
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 7530
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 7531
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7533
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 1121
    invoke-virtual {p0, v10}, Landroid/view/View;->setClickable(Z)V

    .line 1122
    invoke-virtual {p0, v10}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 1123
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1124
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1125
    invoke-virtual {p0, v10}, Landroid/widget/AbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 1126
    invoke-virtual {p0}, Landroid/view/View;->twEnableHorizontalScrollbar()V

    .line 1128
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 1130
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    .line 1131
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    .line 1132
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    .line 1133
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    .line 1134
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    .line 1137
    .end local v7    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1138
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mDensityScale:F

    .line 1142
    :cond_1
    new-instance v1, Landroid/view/HapticPreDrawListener;

    invoke-direct {v1}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1145
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 1146
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_2

    move v0, v10

    :cond_2
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->AIR_VIEW_WINSET:Z

    .line 1150
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 1151
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 1152
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1154
    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_4

    .line 1155
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 1156
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1161
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1162
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAudioManager:Landroid/media/AudioManager;

    .line 1166
    :cond_5
    const-class v6, Ldalvik/system/VMRuntime;

    .line 1168
    .local v6, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v0, "pauseGc"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1169
    const-string/jumbo v0, "resumeGc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :goto_0
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 1176
    .local v9, "value":Landroid/util/TypedValue;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 1177
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010470

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    .line 1179
    .local v8, "resolved":Z
    if-eqz v8, :cond_6

    .line 1180
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1184
    .end local v8    # "resolved":Z
    :cond_6
    return-void

    .line 1171
    .end local v9    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1170
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 5237
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5238
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5242
    :goto_0
    return-void

    .line 5240
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 5245
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5246
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5248
    :cond_0
    return-void
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1720
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 8796
    const-string v0, "AbsHorizontalListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8797
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5029
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 5030
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 5033
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_3

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 5034
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    .line 5040
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_5

    .line 5041
    const/4 v14, 0x3

    if-ne v11, v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 5151
    :cond_2
    :goto_2
    return-void

    .line 5035
    :cond_3
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 5036
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    goto :goto_0

    .line 5041
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 5044
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 5047
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 5052
    const/16 v14, 0x9

    if-ne v1, v14, :cond_6

    .line 5053
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v14, :cond_2

    .line 5054
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 5059
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_2

    .line 5063
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 5064
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5065
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 5069
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    .line 5074
    .local v6, "isFingerAirView":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v7, 0x1

    .line 5077
    .local v7, "isFingerAirViewPreview":Z
    :goto_4
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 5080
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHovered()Z

    move-result v14

    if-nez v14, :cond_9

    .line 5081
    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setFingerHovered(Z)V

    .line 5082
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setHovered(Z)V

    .line 5084
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 5085
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 5086
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v9

    .line 5087
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    if-eq v14, v9, :cond_e

    const/4 v2, 0x1

    .line 5088
    .local v2, "bChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 5090
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 5092
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_f

    .line 5093
    if-nez v10, :cond_a

    .line 5094
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5097
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_b

    .line 5098
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5099
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5100
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 5102
    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 5147
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 5148
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 5069
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 5074
    .restart local v6    # "isFingerAirView":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 5087
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 5106
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 5108
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5110
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 5112
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 5126
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 5127
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 5128
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 5135
    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_11

    .line 5136
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5137
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5140
    :cond_11
    const/16 v14, 0xa

    if-ne v1, v14, :cond_2

    if-nez v10, :cond_2

    .line 5141
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 5142
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 5143
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5144
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5145
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    .line 5130
    :cond_12
    if-nez v10, :cond_10

    .line 5131
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 5366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 5368
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5369
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 5373
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 5374
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 5375
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 5376
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 5377
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5383
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 5385
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 5373
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4983
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 4996
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4997
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 4998
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4999
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5000
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5002
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 5003
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5004
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 5007
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 5008
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5009
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5011
    :cond_1
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5012
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 5013
    return-void

    .line 4985
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 4986
    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4988
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 4983
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4674
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4675
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 4677
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 4679
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4680
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v4, :cond_0

    .line 4681
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4683
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4686
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4687
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4688
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 4735
    :goto_0
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4737
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4739
    :cond_1
    return-void

    .line 4690
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 4691
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 4692
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 4694
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 4695
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 4697
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->createScrollingCache()V

    .line 4698
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4699
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4700
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v0

    .line 4701
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->flywheelTouch()V

    .line 4723
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 4725
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4726
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4729
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4730
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4731
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4732
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    goto :goto_0

    .line 4702
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4706
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4709
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_6

    .line 4710
    const/16 v4, 0x4e8e

    invoke-virtual {p0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4715
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v4, :cond_7

    .line 4716
    new-instance v4, Landroid/widget/AbsHorizontalListView$CheckForTap;

    invoke-direct {v4, p0}, Landroid/widget/AbsHorizontalListView$CheckForTap;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 4719
    :cond_7
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 4742
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 4743
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 4744
    const/4 v1, 0x0

    .line 4745
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4748
    :cond_0
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 4751
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 4753
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 4754
    .local v2, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .line 4756
    .local v3, "y":I
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 4791
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 4762
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/widget/AbsHorizontalListView;->startScrollIfNeeded(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4767
    int-to-float v4, v2

    int-to-float v5, v3

    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4768
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4769
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4770
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 4771
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4773
    :cond_3
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4775
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4776
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    goto :goto_0

    .line 4773
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    goto :goto_1

    .line 4782
    .end local v0    # "motionView":Landroid/view/View;
    :pswitch_2
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_5

    .line 4783
    iput-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 4788
    :cond_5
    :pswitch_3
    invoke-direct {p0, v2}, Landroid/widget/AbsHorizontalListView;->scrollIfNeeded(I)V

    goto :goto_0

    .line 4756
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4794
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 4944
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4948
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mAirScrollEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 4949
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v14

    .line 4950
    .local v14, "overscrollMode":I
    if-eqz v14, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->twContentFits()Z

    move-result v18

    if-nez v18, :cond_2

    .line 4951
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->registerIRListener()V

    .line 4953
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mAirScrollUnregisterByLongClick:Z

    .line 4956
    .end local v14    # "overscrollMode":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 4957
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4958
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4962
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 4963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4964
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 4966
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4967
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    .line 4976
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 4977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StrictMode$Span;->finish()V

    .line 4978
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4980
    :cond_5
    :goto_1
    return-void

    .line 4798
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4799
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4800
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_10

    .line 4801
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 4802
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4805
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 4806
    .local v17, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v17, v18

    if-gez v18, :cond_b

    const/4 v10, 0x1

    .line 4807
    .local v10, "inList":Z
    :goto_2
    if-eqz v10, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-nez v18, :cond_10

    .line 4808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 4809
    new-instance v18, Landroid/widget/AbsHorizontalListView$PerformClick;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$PerformClick;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    .line 4812
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    .line 4813
    .local v15, "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    iput v13, v15, Landroid/widget/AbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    .line 4814
    invoke-virtual {v15}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 4816
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 4818
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 4819
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v18, v0

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4821
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 4822
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 4823
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4824
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 4825
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 4826
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4827
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 4828
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 4830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4831
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 4832
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4835
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 4836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4838
    :cond_a
    new-instance v18, Landroid/widget/AbsHorizontalListView$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v15}, Landroid/widget/AbsHorizontalListView$3;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Landroid/widget/AbsHorizontalListView$PerformClick;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 4806
    .end local v10    # "inList":Z
    .end local v15    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 4819
    .restart local v10    # "inList":Z
    .restart local v15    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-object/from16 v18, v0

    goto/16 :goto_3

    .line 4853
    :cond_d
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4854
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 4855
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 4856
    invoke-virtual {v15}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    goto/16 :goto_1

    .line 4860
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    move/from16 v18, v0

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 4861
    invoke-virtual {v15}, Landroid/widget/AbsHorizontalListView$PerformClick;->run()V

    .line 4866
    .end local v10    # "inList":Z
    .end local v15    # "performClick":Landroid/widget/AbsHorizontalListView$PerformClick;
    .end local v17    # "x":F
    :cond_10
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4867
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 4870
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 4871
    .local v5, "childCount":I
    if-lez v5, :cond_17

    .line 4872
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 4873
    .local v9, "firstChildLeft":I
    add-int/lit8 v18, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v12

    .line 4874
    .local v12, "lastChildRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 4875
    .local v6, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .line 4876
    .local v7, "contentRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_11

    if-lt v9, v6, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v18

    sub-int v18, v18, v7

    move/from16 v0, v18

    if-gt v12, v0, :cond_11

    .line 4879
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4880
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4882
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 4883
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4885
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v11, v0

    .line 4891
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v18, v0

    sub-int v18, v6, v18

    move/from16 v0, v18

    if-eq v9, v0, :cond_15

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v18, v0

    add-int v18, v18, v7

    move/from16 v0, v18

    if-eq v12, v0, :cond_15

    .line 4896
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_14

    .line 4897
    new-instance v18, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4899
    :cond_14
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v11

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 4903
    :cond_15
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4904
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    .line 4906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4908
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 4909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    goto/16 :goto_0

    .line 4914
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildRight":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_17
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4915
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4922
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    .line 4923
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 4927
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_19

    .line 4928
    new-instance v18, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 4930
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 4931
    .restart local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4932
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v11, v0

    .line 4934
    .restart local v11    # "initialVelocity":I
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4935
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1a

    .line 4936
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v11

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 4938
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4794
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7167
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7168
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7169
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7172
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7173
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7174
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7179
    :goto_0
    return-void

    .line 7177
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2899
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2901
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 5251
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5252
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5255
    :cond_0
    return-void
.end method

.method private registerIRListener()V
    .locals 2

    .prologue
    .line 8612
    const-string v0, "AbsHorizontalListView"

    const-string/jumbo v1, "registerIRListener() is called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8614
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollEnable:Z

    if-nez v0, :cond_1

    .line 8628
    :cond_0
    :goto_0
    return-void

    .line 8617
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollIRListenerRegistered:Z

    if-nez v0, :cond_0

    .line 8620
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_2

    .line 8621
    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 8626
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollIRListenerRegistered:Z

    goto :goto_0

    .line 8623
    :cond_2
    const-string v0, "AbsHorizontalListView"

    const-string/jumbo v1, "registerIRListener() : mGestureManager object null, so call mGestureManager.registerListener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8624
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private registerMotionListener()V
    .locals 3

    .prologue
    .line 8522
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    .line 8523
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8524
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 8527
    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    .line 948
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 951
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 954
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 956
    :cond_2
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 8477
    .local p0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8478
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 8480
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8481
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8482
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 8484
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8490
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-object v2

    .line 8480
    .restart local v0    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8488
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 8490
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 30
    .param p1, "x"    # I

    .prologue
    .line 3899
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    sub-int v29, p1, v3

    .line 3900
    .local v29, "rawDeltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    sub-int v16, v29, v3

    .line 3901
    .local v16, "deltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    sub-int v17, p1, v3

    .line 3903
    .local v17, "incrementalDeltaX":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_f

    .line 3911
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3913
    const-string v3, "AbsHorizontalListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3916
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    .line 3920
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x80000

    and-int/2addr v3, v5

    if-nez v3, :cond_1

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    if-le v3, v5, :cond_1

    .line 3922
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3923
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_1

    .line 3924
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3929
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    if-ltz v3, :cond_c

    .line 3930
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v18, v3, v5

    .line 3937
    .local v18, "motionIndex":I
    :goto_1
    const/16 v21, 0x0

    .line 3938
    .local v21, "motionViewPrevLeft":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3939
    .local v20, "motionView":Landroid/view/View;
    if-eqz v20, :cond_2

    .line 3940
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v21

    .line 3944
    :cond_2
    const/4 v15, 0x0

    .line 3945
    .local v15, "atEdge":Z
    if-eqz v17, :cond_3

    .line 3946
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v15

    .line 3950
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 3951
    if-eqz v20, :cond_9

    .line 3954
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v22

    .line 3955
    .local v22, "motionViewRealLeft":I
    if-eqz v15, :cond_8

    .line 3958
    move/from16 v0, v17

    neg-int v3, v0

    sub-int v5, v22, v21

    sub-int v4, v3, v5

    .line 3960
    .local v4, "overscroll":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mScrollX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 3962
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mScrollX:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 3964
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3965
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3969
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v27

    .line 3970
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3973
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 3976
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    move/from16 v26, v0

    .line 3979
    .local v26, "oldTouchMode":I
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3980
    if-lez v29, :cond_d

    .line 3983
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v3, :cond_6

    .line 3984
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    if-nez v3, :cond_6

    const/4 v3, 0x6

    move/from16 v0, v26

    if-eq v0, v3, :cond_6

    .line 3985
    const/16 v3, 0x4eac

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3986
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AbsHorizontalListView;->mHapticOverScroll:Z

    .line 3991
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3992
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3993
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3995
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4005
    .end local v4    # "overscroll":I
    .end local v26    # "oldTouchMode":I
    .end local v27    # "overscrollMode":I
    :cond_8
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4007
    .end local v22    # "motionViewRealLeft":I
    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4075
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    :cond_a
    :goto_3
    return-void

    .end local v17    # "incrementalDeltaX":I
    :cond_b
    move/from16 v17, v16

    .line 3901
    goto/16 :goto_0

    .line 3934
    .restart local v17    # "incrementalDeltaX":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    div-int/lit8 v18, v3, 0x2

    .restart local v18    # "motionIndex":I
    goto/16 :goto_1

    .line 3996
    .restart local v4    # "overscroll":I
    .restart local v15    # "atEdge":Z
    .restart local v20    # "motionView":Landroid/view/View;
    .restart local v21    # "motionViewPrevLeft":I
    .restart local v22    # "motionViewRealLeft":I
    .restart local v26    # "oldTouchMode":I
    .restart local v27    # "overscrollMode":I
    :cond_d
    if-gez v29, :cond_8

    .line 3997
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3998
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e

    .line 3999
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4001
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 4009
    .end local v4    # "overscroll":I
    .end local v15    # "atEdge":Z
    .end local v18    # "motionIndex":I
    .end local v20    # "motionView":Landroid/view/View;
    .end local v21    # "motionViewPrevLeft":I
    .end local v22    # "motionViewRealLeft":I
    .end local v26    # "oldTouchMode":I
    .end local v27    # "overscrollMode":I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_a

    .line 4010
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    .line 4011
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    .line 4012
    .local v25, "oldScroll":I
    sub-int v24, v25, v17

    .line 4013
    .local v24, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_18

    const/16 v23, 0x1

    .line 4015
    .local v23, "newDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsHorizontalListView;->mDirection:I

    if-nez v3, :cond_10

    .line 4016
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mDirection:I

    .line 4019
    :cond_10
    move/from16 v0, v17

    neg-int v6, v0

    .line 4020
    .local v6, "overScrollDistance":I
    if-gez v24, :cond_11

    if-gez v25, :cond_12

    :cond_11
    if-lez v24, :cond_19

    if-gtz v25, :cond_19

    .line 4021
    :cond_12
    move/from16 v0, v25

    neg-int v6, v0

    .line 4022
    add-int v17, v17, v6

    .line 4027
    :goto_5
    if-eqz v6, :cond_15

    .line 4028
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/View;->mScrollX:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsHorizontalListView;->mOverscrollDistance:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 4030
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v27

    .line 4031
    .restart local v27    # "overscrollMode":I
    if-eqz v27, :cond_13

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_15

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_15

    .line 4034
    :cond_13
    if-lez v29, :cond_1a

    .line 4035
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4036
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_14

    .line 4037
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4039
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4050
    .end local v27    # "overscrollMode":I
    :cond_15
    :goto_6
    if-eqz v17, :cond_17

    .line 4052
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    if-eqz v3, :cond_16

    .line 4053
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollX:I

    .line 4054
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 4057
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    .line 4059
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4063
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->findClosestMotionRow(I)I

    move-result v19

    .line 4065
    .local v19, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4066
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v19, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 4067
    .restart local v20    # "motionView":Landroid/view/View;
    if-eqz v20, :cond_1c

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4068
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4069
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4071
    .end local v19    # "motionPosition":I
    .end local v20    # "motionView":Landroid/view/View;
    :cond_17
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4072
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mDirection:I

    goto/16 :goto_3

    .line 4013
    .end local v6    # "overScrollDistance":I
    .end local v23    # "newDirection":I
    :cond_18
    const/16 v23, -0x1

    goto/16 :goto_4

    .line 4024
    .restart local v6    # "overScrollDistance":I
    .restart local v23    # "newDirection":I
    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 4040
    .restart local v27    # "overscrollMode":I
    :cond_1a
    if-gez v29, :cond_15

    .line 4041
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4042
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 4043
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4045
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 4067
    .end local v27    # "overscrollMode":I
    .restart local v19    # "motionPosition":I
    .restart local v20    # "motionView":Landroid/view/View;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1711
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setAlwaysShow(Z)V

    .line 1714
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1661
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_2

    .line 1662
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    .line 1668
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 1670
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 1671
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->updateLayout()V

    .line 1673
    :cond_1
    return-void

    .line 1663
    :cond_2
    if-eqz p1, :cond_0

    .line 1664
    new-instance v0, Landroid/widget/HorizontalFastScroller;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalFastScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    .line 1665
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 7158
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7160
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->positionPopup()V

    .line 7162
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 7164
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 11
    .param p1, "x"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3854
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    sub-int v1, p1, v7

    .line 3855
    .local v1, "deltaX":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3856
    .local v2, "distance":I
    iget v7, p0, Landroid/view/View;->mScrollX:I

    if-eqz v7, :cond_2

    move v5, v9

    .line 3857
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 3858
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->createScrollingCache()V

    .line 3859
    if-eqz v5, :cond_3

    .line 3860
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3861
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 3866
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3867
    invoke-virtual {p0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3868
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3869
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 3870
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3873
    :cond_1
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    if-le v7, v9, :cond_5

    .line 3879
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3880
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 3881
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3880
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v8

    .line 3856
    goto :goto_0

    .line 3863
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3864
    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 3884
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v9}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 3887
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 3888
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 3889
    invoke-interface {v6, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3891
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->scrollIfNeeded(I)V

    move v7, v9

    .line 3895
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_4
    return v7

    :cond_7
    move v7, v8

    goto :goto_4
.end method

.method private twContentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8543
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8544
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 8546
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private unregisterIRListener()V
    .locals 2

    .prologue
    .line 8634
    const-string v0, "AbsHorizontalListView"

    const-string/jumbo v1, "unregisterIRListener() is called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8637
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollIRListenerRegistered:Z

    if-nez v0, :cond_1

    .line 8646
    :cond_0
    :goto_0
    return-void

    .line 8640
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v0, :cond_0

    .line 8641
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 8642
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollIRListenerRegistered:Z

    .line 8643
    const-string v0, "AbsHorizontalListView"

    const-string/jumbo v1, "unregisterIRListener() : mGestureManager.unregisterListener() is called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterMotionListener()V
    .locals 2

    .prologue
    .line 8533
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->log(Ljava/lang/String;)V

    .line 8534
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8535
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 8537
    :cond_0
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1509
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1510
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1511
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1513
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1514
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1515
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1517
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1518
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1513
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1511
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1519
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1520
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1523
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2006
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2008
    return-void
.end method


# virtual methods
.method public addToPressItemListArray(II)V
    .locals 7
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 8808
    const/4 v2, 0x0

    .line 8809
    .local v2, "isSameValueExist":Z
    const/4 v0, 0x0

    .line 8811
    .local v0, "checkCount":I
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-nez v4, :cond_0

    .line 8891
    :goto_0
    return-void

    .line 8815
    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    .line 8816
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_3

    .line 8817
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_2

    .line 8818
    const/4 v2, 0x1

    .line 8820
    move v3, v1

    .local v3, "j":I
    :goto_2
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 8821
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    .line 8820
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8823
    :cond_1
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8816
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8828
    :cond_3
    if-nez v2, :cond_4

    .line 8829
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8830
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8889
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 8834
    .end local v1    # "i":I
    :cond_5
    if-ge p1, p2, :cond_9

    .line 8835
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 8837
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 8838
    const/4 v2, 0x0

    .line 8840
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_7

    .line 8841
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_6

    .line 8842
    const/4 v2, 0x1

    .line 8840
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 8847
    :cond_7
    if-nez v2, :cond_8

    .line 8848
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8849
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8851
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 8837
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8854
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_9
    if-le p1, p2, :cond_d

    .line 8855
    sub-int v4, p1, p2

    add-int/lit8 v0, v4, 0x1

    .line 8856
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v0, :cond_4

    .line 8857
    const/4 v2, 0x0

    .line 8859
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_7
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_b

    .line 8860
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_a

    .line 8861
    const/4 v2, 0x1

    .line 8859
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 8866
    :cond_b
    if-nez v2, :cond_c

    .line 8867
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8868
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8871
    :cond_c
    add-int/lit8 p1, p1, -0x1

    .line 8856
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 8874
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_f

    .line 8875
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_e

    .line 8876
    const/4 v2, 0x1

    .line 8874
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8881
    :cond_f
    if-nez v2, :cond_4

    .line 8882
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8883
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    goto :goto_3
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5392
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5393
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5394
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5396
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 5407
    :cond_0
    return-void

    .line 5400
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 5401
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5402
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5403
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5405
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5400
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 7619
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 7578
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6483
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6484
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 6496
    :cond_0
    :goto_0
    return v6

    .line 6488
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6489
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 6490
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 6491
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6492
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 6493
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 6495
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6496
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7491
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7647
    instance-of v0, p1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1331
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1334
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1335
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 7540
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 7541
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    .line 7543
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7544
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 7547
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2387
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2388
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 2389
    iget-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2390
    mul-int/lit8 v1, v0, 0x64

    .line 2392
    .local v1, "extent":I
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2393
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2394
    .local v2, "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2395
    .local v5, "width":I
    if-lez v5, :cond_0

    .line 2396
    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    .line 2399
    :cond_0
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2400
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2401
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2402
    if-lez v5, :cond_1

    .line 2403
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v5

    sub-int/2addr v1, v6

    .line 2411
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "width":I
    :cond_1
    :goto_0
    return v1

    .line 2408
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v6

    .line 2411
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2416
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2417
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2418
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2419
    iget-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2420
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2421
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2422
    .local v4, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2423
    .local v6, "width":I
    if-lez v6, :cond_0

    .line 2424
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v6

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2440
    .end local v4    # "left":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_0
    :goto_0
    return v7

    .line 2429
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2430
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2431
    const/4 v3, 0x0

    .line 2437
    .local v3, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2432
    .end local v3    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2433
    move v3, v1

    .restart local v3    # "index":I
    goto :goto_1

    .line 2435
    .end local v3    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v3, v2, v7

    .restart local v3    # "index":I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 2446
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2447
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2448
    .local v0, "result":I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_0

    .line 2450
    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2455
    :cond_0
    :goto_0
    return v0

    .line 2453
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 6932
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6934
    const/4 v7, 0x0

    .line 6935
    .local v7, "checkedCountChanged":Z
    const/4 v8, 0x0

    .local v8, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 6936
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 6937
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6939
    .local v3, "lastPos":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 6940
    .local v11, "lastPosId":J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 6942
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 6943
    .local v16, "start":I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 6944
    .local v9, "end":I
    const/4 v10, 0x0

    .line 6945
    .local v10, "found":Z
    move/from16 v15, v16

    .local v15, "searchPos":I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 6946
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 6947
    .local v13, "searchId":J
    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    .line 6948
    const/4 v10, 0x1

    .line 6949
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6950
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6955
    .end local v13    # "searchId":J
    :cond_0
    if-nez v10, :cond_1

    .line 6956
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 6957
    add-int/lit8 v8, v8, -0x1

    .line 6958
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 6959
    const/4 v7, 0x1

    .line 6960
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 6961
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 6935
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 6945
    .restart local v9    # "end":I
    .restart local v10    # "found":Z
    .restart local v13    # "searchId":J
    .restart local v15    # "searchPos":I
    .restart local v16    # "start":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 6966
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v13    # "searchId":J
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 6970
    .end local v3    # "lastPos":I
    .end local v4    # "id":J
    .end local v11    # "lastPosId":J
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 6971
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 6973
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3420
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 7792
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 7793
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 15
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4405
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 4407
    .local v0, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 4408
    .local v3, "cd":Landroid/content/ClipDescription;
    if-eqz v3, :cond_0

    const-string v12, "cropUri"

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 4409
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    .line 4565
    :goto_0
    return v12

    .line 4413
    :cond_1
    const/4 v12, 0x1

    if-ne v0, v12, :cond_4

    .line 4414
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gtz v12, :cond_2

    .line 4415
    const/4 v12, 0x1

    const/high16 v13, 0x41c80000    # 25.0f

    iget-object v14, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4419
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 4422
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 4423
    .local v10, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 4424
    .local v11, "y":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 4425
    .local v5, "childCount":I
    const/4 v6, 0x0

    .line 4426
    .local v6, "contentRight":I
    const/4 v8, 0x0

    .line 4427
    .local v8, "lastChildRight":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 4431
    .local v7, "count":I
    if-eqz v5, :cond_5

    .line 4432
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 4436
    :cond_5
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v12, v7

    iget v13, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v12, v13, :cond_f

    const/4 v2, 0x1

    .line 4438
    .local v2, "canScrollRight":Z
    :goto_1
    if-nez v2, :cond_7

    if-lez v7, :cond_7

    .line 4439
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4440
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, p0, Landroid/view/View;->mRight:I

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v13

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    if-le v12, v13, :cond_10

    :cond_6
    const/4 v2, 0x1

    .line 4445
    .end local v4    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v12, :cond_11

    const/4 v1, 0x1

    .line 4447
    .local v1, "canScrollLeft":Z
    :goto_3
    if-nez v1, :cond_8

    .line 4448
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_8

    .line 4449
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4450
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-ge v12, v13, :cond_12

    const/4 v1, 0x1

    .line 4455
    .end local v4    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-le v10, v12, :cond_9

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_a

    :cond_9
    if-lez v11, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v12

    if-gt v11, v12, :cond_a

    if-nez v1, :cond_13

    if-nez v2, :cond_13

    .line 4458
    :cond_a
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-eqz v12, :cond_b

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 4459
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 4462
    :cond_b
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_c

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    if-eqz v12, :cond_d

    .line 4463
    :cond_c
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4466
    :cond_d
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4467
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4468
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4471
    const/4 v12, 0x2

    if-ne v0, v12, :cond_e

    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_e

    .line 4472
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4473
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4476
    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4436
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4440
    .restart local v2    # "canScrollRight":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_10
    const/4 v2, 0x0

    goto :goto_2

    .line 4445
    .end local v4    # "child":Landroid/view/View;
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 4450
    .restart local v1    # "canScrollLeft":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_12
    const/4 v1, 0x0

    goto :goto_4

    .line 4480
    .end local v4    # "child":Landroid/view/View;
    :cond_13
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    if-nez v12, :cond_14

    .line 4481
    new-instance v12, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    .line 4483
    :cond_14
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_15

    .line 4484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4486
    :cond_15
    packed-switch v0, :pswitch_data_0

    .line 4565
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v12

    goto/16 :goto_0

    .line 4488
    :pswitch_0
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4489
    if-ltz v10, :cond_17

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_17

    .line 4491
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4492
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4495
    .local v9, "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4496
    const/4 v12, 0x2

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4497
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4499
    .end local v9    # "msg":Landroid/os/Message;
    :cond_17
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_16

    if-gt v10, v6, :cond_16

    .line 4501
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4502
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4504
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4505
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4506
    const/4 v12, 0x1

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4507
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4513
    .end local v9    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v12, :cond_18

    .line 4514
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4517
    :cond_18
    if-ltz v10, :cond_19

    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v10, v12, :cond_19

    .line 4519
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4520
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4522
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4523
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4524
    const/4 v12, 0x2

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4525
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4527
    .end local v9    # "msg":Landroid/os/Message;
    :cond_19
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v12, v6, v12

    if-lt v10, v12, :cond_16

    if-gt v10, v6, :cond_16

    .line 4529
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-nez v12, :cond_16

    .line 4530
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4532
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 4533
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v9, Landroid/os/Message;->what:I

    .line 4534
    const/4 v12, 0x1

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4535
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4542
    .end local v9    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v12, :cond_1a

    .line 4543
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4544
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4550
    :cond_1a
    :pswitch_3
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 4551
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 4553
    :cond_1b
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsDragScrolled:Z

    .line 4555
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4556
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4557
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4558
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4486
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2905
    const/4 v2, 0x0

    .line 2906
    .local v2, "saveCount":I
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2907
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2908
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2909
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 2910
    .local v3, "scrollX":I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 2911
    .local v4, "scrollY":I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2914
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2917
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 2918
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 2919
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2922
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2924
    if-eqz v1, :cond_2

    .line 2925
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2928
    :cond_2
    if-eqz v0, :cond_3

    .line 2929
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2930
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2932
    :cond_3
    return-void

    .line 2906
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pen_hovering"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v11, 0x1

    .line 4166
    .local v11, "isHoveringOn":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pen_hovering_list_scroll"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .line 4169
    .local v10, "isHoverListScrollOn":Z
    :goto_1
    const/4 v13, 0x0

    .line 4170
    .local v13, "isMouseHoveringOn":Z
    const/4 v12, 0x0

    .line 4179
    .local v12, "isMouseHoverListScrollOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 4180
    new-instance v19, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    .line 4182
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->isHoveringUIEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    if-eqz v13, :cond_2

    if-nez v12, :cond_5

    .line 4188
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    .line 4395
    :goto_2
    return v19

    .line 4165
    .end local v10    # "isHoverListScrollOn":Z
    .end local v11    # "isHoveringOn":Z
    .end local v12    # "isMouseHoverListScrollOn":Z
    .end local v13    # "isMouseHoveringOn":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 4166
    .restart local v11    # "isHoveringOn":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 4191
    .restart local v10    # "isHoverListScrollOn":Z
    .restart local v12    # "isMouseHoverListScrollOn":Z
    .restart local v13    # "isMouseHoveringOn":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 4192
    .local v17, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 4193
    .local v18, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4194
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 4195
    .local v7, "contentRight":I
    const/4 v15, 0x0

    .line 4196
    .local v15, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 4200
    .local v8, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v19, v0

    if-gtz v19, :cond_7

    .line 4201
    :cond_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth_DP:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 4209
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth_DP:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 4218
    :cond_7
    if-eqz v6, :cond_8

    .line 4219
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 4223
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    const/4 v4, 0x1

    .line 4225
    .local v4, "canScrollRight":Z
    :goto_3
    if-nez v4, :cond_a

    if-lez v8, :cond_a

    .line 4226
    add-int/lit8 v19, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4227
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    :cond_9
    const/4 v4, 0x1

    .line 4232
    .end local v5    # "child":Landroid/view/View;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-lez v19, :cond_15

    const/4 v3, 0x1

    .line 4234
    .local v3, "canScrollLeft":Z
    :goto_5
    if-nez v3, :cond_b

    .line 4235
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    if-lez v19, :cond_b

    .line 4236
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4237
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    const/4 v3, 0x1

    .line 4241
    .end local v5    # "child":Landroid/view/View;
    :cond_b
    :goto_6
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    const/4 v14, 0x1

    .line 4249
    .local v14, "isPossibleTooltype":Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    :cond_c
    if-lez v18, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_f

    if-nez v3, :cond_d

    if-eqz v4, :cond_f

    :cond_d
    if-eqz v14, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    :cond_e
    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isLockScreenMode()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 4252
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 4253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 4255
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_0
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4261
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 4262
    :cond_11
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4264
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_1
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4270
    :cond_12
    :goto_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4271
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4272
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4274
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_2

    .line 4223
    .end local v3    # "canScrollLeft":Z
    .end local v4    # "canScrollRight":Z
    .end local v14    # "isPossibleTooltype":Z
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 4227
    .restart local v4    # "canScrollRight":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 4232
    .end local v5    # "child":Landroid/view/View;
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 4237
    .restart local v3    # "canScrollLeft":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 4241
    .end local v5    # "child":Landroid/view/View;
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 4256
    .restart local v14    # "isPossibleTooltype":Z
    :catch_0
    move-exception v9

    .line 4257
    .local v9, "e":Landroid/os/RemoteException;
    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4265
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 4266
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4277
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_19

    .line 4278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    .line 4281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 4286
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 4395
    :cond_1a
    :goto_a
    :pswitch_0
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 4288
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4290
    if-ltz v17, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_1b

    .line 4292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 4293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4295
    const/16 v19, 0x11

    const/16 v20, -0x1

    :try_start_2
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4299
    :goto_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4300
    .local v16, "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4301
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 4296
    .end local v16    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v9

    .line 4297
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4304
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_1a

    move/from16 v0, v17

    if-gt v0, v7, :cond_1a

    .line 4306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 4307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4309
    const/16 v19, 0xd

    const/16 v20, -0x1

    :try_start_3
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4313
    :goto_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4314
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4315
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4310
    .end local v16    # "msg":Landroid/os/Message;
    :catch_3
    move-exception v9

    .line 4311
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4323
    .end local v9    # "e":Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_1c

    .line 4324
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4325
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4326
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_2

    .line 4329
    :cond_1c
    if-ltz v17, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_1f

    .line 4331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 4332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 4337
    :cond_1d
    const/16 v19, 0x11

    const/16 v20, -0x1

    :try_start_4
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4343
    :cond_1e
    :goto_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4344
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4345
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4338
    .end local v16    # "msg":Landroid/os/Message;
    :catch_4
    move-exception v9

    .line 4339
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_LEFT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4348
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_1a

    move/from16 v0, v17

    if-gt v0, v7, :cond_1a

    .line 4350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 4351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4354
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    .line 4356
    :cond_20
    const/16 v19, 0xd

    const/16 v20, -0x1

    :try_start_5
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4362
    :cond_21
    :goto_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4363
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4364
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I

    .line 4365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4357
    .end local v16    # "msg":Landroid/os/Message;
    :catch_5
    move-exception v9

    .line 4358
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_RIGHT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4371
    .end local v9    # "e":Landroid/os/RemoteException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 4372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 4376
    :cond_22
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_6
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 4381
    :goto_f
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I

    .line 4382
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I

    .line 4383
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4384
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_23

    .line 4387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 4390
    :cond_23
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_2

    .line 4377
    :catch_6
    move-exception v9

    .line 4378
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsHorizontalListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4286
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3747
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 5186
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5187
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_3

    .line 5188
    iget v5, p0, Landroid/view/View;->mScrollX:I

    .line 5189
    .local v5, "scrollX":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1

    .line 5190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5191
    .local v4, "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    add-int v6, v8, v9

    .line 5192
    .local v6, "topPadding":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    add-int v0, v8, v9

    .line 5193
    .local v0, "bottomPadding":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    .line 5195
    .local v3, "height":I
    neg-int v8, v3

    add-int v2, v8, v6

    .line 5196
    .local v2, "edgeY":I
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v5

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5197
    .local v1, "edgeX":I
    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5198
    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5199
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v8, v3, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5200
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5201
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v6, v1}, Landroid/widget/EdgeEffect;->setPosition(II)V

    .line 5202
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v10}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 5204
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5206
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v6    # "topPadding":I
    :cond_1
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 5207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5208
    .restart local v4    # "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    add-int v6, v8, v9

    .line 5209
    .restart local v6    # "topPadding":I
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    add-int v0, v8, v9

    .line 5210
    .restart local v0    # "bottomPadding":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    sub-int v3, v8, v0

    .line 5211
    .restart local v3    # "height":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 5213
    .local v7, "width":I
    neg-int v2, v6

    .line 5214
    .restart local v2    # "edgeY":I
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    add-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v1, v8

    .line 5215
    .restart local v1    # "edgeX":I
    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5216
    int-to-float v8, v2

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5217
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v3, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5218
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5220
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    add-int v9, v2, v3

    invoke-virtual {v8, v1, v9}, Landroid/widget/EdgeEffect;->setPosition(II)V

    .line 5221
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 5223
    :cond_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5226
    .end local v0    # "bottomPadding":I
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollX":I
    .end local v6    # "topPadding":I
    .end local v7    # "width":I
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3155
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 3156
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 3157
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8678
    :try_start_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterMotionListener()V

    .line 8679
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8681
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8683
    return-void

    .line 8681
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 6785
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6786
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 6791
    :cond_0
    :goto_0
    return v1

    .line 6790
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 6791
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1917
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1927
    .end local p0    # "this":Landroid/widget/AbsHorizontalListView;
    :goto_0
    return-object p0

    .line 1924
    .restart local p0    # "this":Landroid/widget/AbsHorizontalListView;
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1925
    const/4 p0, 0x0

    goto :goto_0

    .line 1927
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 7631
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7637
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsHorizontalListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7642
    new-instance v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsHorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2956
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 7708
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1245
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1309
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1310
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1321
    :cond_1
    return-object v3

    .line 1313
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1314
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1315
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1317
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1318
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1277
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1278
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1281
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1294
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1297
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1531
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3599
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1993
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1994
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1997
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1998
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2003
    :goto_0
    return-void

    .line 2001
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 6728
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 6718
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1740
    invoke-super {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v1}, Landroid/widget/HorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1742
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2460
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2461
    .local v0, "count":I
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 2462
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2471
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2465
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2466
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2469
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2470
    .local v3, "left":I
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2471
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2941
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2646
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2658
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2670
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2634
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2477
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2478
    .local v0, "count":I
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v1

    .line 2479
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2489
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2482
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2483
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2486
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2487
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2488
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 2489
    .local v2, "fadeLength":F
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2951
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2618
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2619
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2621
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3082
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 7676
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2319
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2322
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2946
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 7671
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 6977
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 6978
    .local v1, "count":I
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    .line 6979
    .local v3, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    .line 6982
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 6984
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    new-array v10, v10, [I

    iput-object v10, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    .line 6985
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 6986
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 6990
    :cond_0
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6991
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->confirmCheckedPositionsById()V

    .line 6995
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clearTransientStateViews()V

    .line 6997
    if-lez v1, :cond_f

    .line 7002
    iget-boolean v10, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 7004
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 7005
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 7007
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 7008
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 7124
    :cond_2
    :goto_0
    return-void

    .line 7010
    :cond_3
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 7011
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 7012
    iput-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    .line 7013
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    .line 7016
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7017
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    .line 7018
    .local v5, "listRight":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7019
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 7020
    .local v4, "lastRight":I
    :goto_1
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_6

    if-gt v4, v5, :cond_6

    .line 7022
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    .end local v4    # "lastRight":I
    :cond_5
    move v4, v5

    .line 7019
    goto :goto_1

    .line 7027
    .restart local v4    # "lastRight":I
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 7030
    .end local v0    # "childCount":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    .end local v5    # "listRight":I
    :cond_7
    iget v10, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 7078
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 7080
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 7083
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 7084
    add-int/lit8 v6, v1, -0x1

    .line 7086
    :cond_9
    if-gez v6, :cond_a

    .line 7087
    const/4 v6, 0x0

    .line 7091
    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7093
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 7094
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7032
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 7037
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 7038
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_0

    .line 7044
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v6

    .line 7045
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 7047
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7048
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 7050
    iput v6, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 7052
    iget-wide v8, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 7055
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 7063
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7059
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    goto :goto_2

    .line 7071
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 7072
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto/16 :goto_0

    .line 7098
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7099
    if-ltz v7, :cond_f

    .line 7100
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7107
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 7115
    :cond_f
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 7116
    iput v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 7117
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 7118
    iput v13, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 7119
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 7120
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 7121
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 7122
    iput v13, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 7123
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    .line 7115
    goto :goto_3

    .line 7030
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 7553
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 6742
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 6743
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 6744
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6746
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 6747
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6749
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 6750
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 6751
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 6753
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 6798
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 6799
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 6800
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 6801
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6802
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1840
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1841
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalFastScroller;->onScroll(III)V

    .line 1843
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1844
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScroll(Landroid/widget/AbsHorizontalListView;III)V

    .line 1846
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1847
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1730
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v2, :cond_2

    .line 1731
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1731
    goto :goto_0

    .line 1733
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v2}, Landroid/widget/HorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1753
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1754
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    .line 1756
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7238
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1260
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 8

    .prologue
    .line 4115
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 4116
    .local v4, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v3, 0x0

    .line 4117
    .local v3, "isLockState":Z
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 4119
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 4120
    .local v5, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 4121
    .local v1, "isCoverOpen":Z
    if-eqz v5, :cond_0

    .line 4123
    :try_start_0
    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4129
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 4130
    .local v2, "isLockScreenAndCoverOpen":Z
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 4132
    :goto_1
    return v2

    .line 4124
    .end local v2    # "isLockScreenAndCoverOpen":Z
    :catch_0
    move-exception v0

    .line 4125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "AbsHorizontalListView"

    const-string v7, "isLockScreenMode() : failed to windowManager.isCoverOpen()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4130
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "isLockScreenAndCoverOpen":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 8804
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 1811
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2936
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1941
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1823
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2018
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1988
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwHorizontalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1782
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .locals 1

    .prologue
    .line 6321
    invoke-super {p0}, Landroid/view/View;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTwUsingAdapterView()Z
    .locals 1

    .prologue
    .line 6332
    const/4 v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3200
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 3201
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3202
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3090
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3125
    :cond_0
    :goto_0
    return-void

    .line 3094
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3095
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3096
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3099
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3101
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3102
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3103
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3105
    :cond_3
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3107
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    .line 3108
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3109
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3110
    if-eqz v1, :cond_6

    .line 3111
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3117
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3118
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 3119
    new-instance v5, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    .line 3121
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3122
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3114
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2579
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const-wide/16 v8, 0x8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2686
    const-string/jumbo v5, "obtainView"

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2688
    aput-boolean v6, p2, v6

    .line 2691
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v2

    .line 2692
    .local v2, "scrapView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 2693
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2697
    :cond_0
    if-eqz v2, :cond_a

    .line 2698
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2700
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_2

    .line 2763
    :cond_1
    :goto_0
    return-object v4

    .line 2703
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 2704
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2707
    :cond_3
    if-eq v0, v2, :cond_8

    .line 2708
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v4, v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2709
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eqz v4, :cond_4

    .line 2710
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2738
    :cond_4
    :goto_1
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_5

    .line 2739
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2741
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_c

    .line 2742
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 2748
    .local v1, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    .line 2749
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2752
    .end local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2753
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    if-nez v4, :cond_6

    .line 2754
    new-instance v4, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    .line 2756
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    if-nez v4, :cond_7

    .line 2757
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAccessibilityDelegate:Landroid/widget/AbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2761
    :cond_7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move-object v4, v0

    .line 2763
    goto :goto_0

    .line 2713
    :cond_8
    aput-boolean v7, p2, v6

    .line 2717
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2718
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2721
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    .line 2724
    .end local v0    # "child":Landroid/view/View;
    :cond_a
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2726
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2729
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 2730
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2733
    :cond_b
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eqz v4, :cond_4

    .line 2734
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_1

    .line 2743
    .restart local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2744
    invoke-virtual {p0, v3}, Landroid/widget/AbsHorizontalListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    goto :goto_2

    .end local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_d
    move-object v1, v3

    .line 2746
    check-cast v1, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3206
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 3208
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 3209
    .local v1, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3212
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    .line 3213
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3217
    :cond_0
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v2, :cond_1

    .line 3218
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3221
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-nez v2, :cond_2

    .line 3222
    new-instance v2, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 3223
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3226
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3227
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v2, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 3228
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 3233
    :cond_2
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollEnable:Z

    if-eqz v2, :cond_5

    .line 3234
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 3235
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_3

    if-ne v0, v4, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->twContentFits()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3236
    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->registerIRListener()V

    .line 3244
    .end local v0    # "overscrollMode":I
    :goto_0
    return-void

    .line 3238
    .restart local v0    # "overscrollMode":I
    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    goto :goto_0

    .line 3241
    .end local v0    # "overscrollMode":I
    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3425
    invoke-super {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 3426
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3427
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3429
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3430
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3432
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3433
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3435
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3436
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3438
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 3162
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3164
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3190
    :cond_0
    :goto_0
    return-object v3

    .line 3170
    :cond_1
    sget-object v4, Landroid/widget/AbsHorizontalListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3175
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3176
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3177
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3178
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3179
    move v0, v2

    .line 3185
    :cond_2
    if-ltz v0, :cond_0

    .line 3186
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3177
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7333
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7334
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7335
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7336
    new-instance v0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

    .line 7338
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7339
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7340
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPublicInputConnection:Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;

    .line 7342
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3248
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3249
    const-string v1, "AbsHorizontalListView"

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    .line 3256
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v1, :cond_0

    .line 3257
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/gesture/GestureManager;->unbindFromService()V

    .line 3258
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 3262
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 3265
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clear()V

    .line 3267
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3268
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3269
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 3270
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3271
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3274
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_2

    .line 3275
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3276
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 3279
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3280
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3281
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3284
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_4

    .line 3285
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3286
    iput-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3289
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_5

    .line 3290
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3293
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_6

    .line 3294
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3297
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 3298
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3301
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    if-eqz v1, :cond_8

    .line 3302
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPerformClick:Landroid/widget/AbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3305
    :cond_8
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    .line 3306
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3307
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3310
    :cond_9
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-eq v1, v4, :cond_a

    .line 3311
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3315
    :cond_a
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_b

    .line 3316
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3320
    :cond_b
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    .line 3321
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 7128
    invoke-super {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 7129
    sparse-switch p1, :sswitch_data_0

    .line 7141
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    .line 7142
    return-void

    .line 7131
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7132
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    goto :goto_0

    .line 7136
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7137
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    goto :goto_0

    .line 7141
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7129
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 7623
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 7624
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 7625
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    .line 7627
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2327
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2328
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2329
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2333
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 2334
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2336
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    .line 2339
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    .line 2343
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChangedForAccessibility()V

    .line 2346
    :cond_2
    if-nez p1, :cond_3

    .line 2347
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    .line 2349
    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 5167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5181
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 5169
    :pswitch_0
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 5170
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 5171
    .local v1, "hscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 5172
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 5173
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5174
    const/4 v2, 0x1

    goto :goto_0

    .line 5167
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/samsung/android/service/gesture/GestureEvent;

    .prologue
    .line 8557
    const-string v2, "AbsHorizontalListView"

    const-string v3, " onGestureEvent is called! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8559
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 8582
    :cond_0
    :goto_0
    return-void

    .line 8562
    :cond_1
    if-eqz p1, :cond_0

    .line 8565
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 8566
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 8568
    .local v1, "visibleItemsCount":I
    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 8569
    const-string v2, "AbsHorizontalListView"

    const-string v3, "gesture sweep up event!! - Go to the bottom "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8570
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_2

    .line 8571
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 8573
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 8574
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 8575
    const-string v2, "AbsHorizontalListView"

    const-string v3, "gesture sweep down event!! - Go to the Top  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8576
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_4

    .line 8577
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 8579
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 7558
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7560
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 7561
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    .line 7570
    :cond_0
    :goto_0
    return-void

    .line 7565
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7566
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1870
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1871
    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1872
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 1876
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1877
    const-class v0, Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1878
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1879
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1880
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1881
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1883
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1884
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1885
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1888
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2847
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2848
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2874
    :cond_0
    :goto_0
    return-void

    .line 2853
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2854
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 2858
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 2859
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2860
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2865
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2866
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2867
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2870
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2871
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2872
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2862
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5267
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5268
    const/4 v0, 0x1

    .line 5271
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5279
    .local v0, "action":I
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v9, :cond_0

    .line 5280
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 5283
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_2

    .line 5362
    :cond_1
    :goto_0
    return v7

    .line 5291
    :cond_2
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/HorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v8

    .line 5292
    goto :goto_0

    .line 5295
    :cond_3
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5297
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5298
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_4

    const/4 v9, 0x5

    if-ne v3, v9, :cond_5

    .line 5299
    :cond_4
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    move v7, v8

    .line 5300
    goto :goto_0

    .line 5303
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 5304
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 5305
    .local v6, "y":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5307
    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 5308
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_6

    if-ltz v1, :cond_6

    .line 5311
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5312
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5313
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 5314
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 5315
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 5316
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5317
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 5319
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    const/high16 v9, -0x80000000

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 5320
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initOrResetVelocityTracker()V

    .line 5321
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5322
    if-ne v3, v11, :cond_1

    move v7, v8

    .line 5323
    goto :goto_0

    .line 5329
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 5331
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 5332
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_7

    .line 5333
    const/4 v2, 0x0

    .line 5334
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5336
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 5337
    .restart local v5    # "x":I
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 5338
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5339
    invoke-direct {p0, v5}, Landroid/widget/AbsHorizontalListView;->startScrollIfNeeded(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 5340
    goto/16 :goto_0

    .line 5349
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    :pswitch_4
    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5350
    iput v10, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 5351
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 5352
    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5357
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 5295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 5329
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 3644
    sparse-switch p1, :sswitch_data_0

    .line 3655
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3647
    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 3651
    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 3644
    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 3660
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3661
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3663
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3664
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3740
    :goto_0
    return v3

    .line 3667
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3671
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3672
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3673
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v5, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/widget/AbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3674
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3676
    :cond_1
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 3681
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3740
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 3687
    :sswitch_0
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_4

    .line 3688
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    if-nez v4, :cond_6

    .line 3689
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 3695
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 3699
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3701
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_5

    if-eqz v1, :cond_5

    .line 3702
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 3703
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3704
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3705
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    .line 3706
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 3714
    :cond_5
    :goto_3
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 3715
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    goto :goto_1

    .line 3691
    :cond_6
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 3708
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 3709
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3710
    iget v3, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 3722
    :sswitch_1
    iput-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 3726
    :sswitch_2
    iput-boolean v7, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 3727
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 3728
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 3729
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 3730
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    goto :goto_1

    .line 3733
    :sswitch_3
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_3

    .line 3734
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    goto/16 :goto_1

    .line 3681
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x1

    .line 2523
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2524
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2525
    if-eqz p1, :cond_1

    .line 2526
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2527
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2528
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 2527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2530
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView$RecycleBin;->markChildrenDirty()V

    .line 2533
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v4, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v3, :cond_3

    .line 2534
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalFastScroller;->onItemCountChanged(I)V

    .line 2537
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 2538
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2541
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollEnable:Z

    if-eqz v3, :cond_6

    .line 2542
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    .line 2543
    .local v2, "overscrollMode":I
    if-eqz v2, :cond_4

    if-ne v2, v5, :cond_5

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->twContentFits()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollUnregisterByLongClick:Z

    if-nez v3, :cond_5

    .line 2544
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->registerIRListener()V

    .line 2552
    .end local v2    # "overscrollMode":I
    :goto_1
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x3

    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mOverscrollMax:I

    .line 2553
    return-void

    .line 2546
    .restart local v2    # "overscrollMode":I
    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    goto :goto_1

    .line 2549
    .end local v2    # "overscrollMode":I
    :cond_6
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2496
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2497
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->useDefaultSelector()V

    .line 2499
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 2500
    .local v3, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 2501
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 2502
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 2503
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 2506
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2507
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2508
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 2509
    .local v4, "listRight":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2510
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2511
    .local v2, "lastRight":I
    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v2, v4, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mForceTranscriptScroll:Z

    .line 2515
    .end local v0    # "childCount":I
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v4    # "listRight":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v1    # "lastChild":Landroid/view/View;
    .restart local v4    # "listRight":I
    :cond_2
    move v2, v4

    .line 2510
    goto :goto_0

    .line 2511
    .restart local v2    # "lastRight":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 5155
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 5156
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 5157
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 5158
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 5160
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 5162
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7800
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 7801
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7802
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 7803
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7804
    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 7811
    :cond_0
    :goto_0
    return v0

    .line 7807
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 7808
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7809
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 7824
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2234
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2236
    .local v0, "ss":Landroid/widget/AbsHorizontalListView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2237
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2239
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 2241
    iget-wide v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    .line 2242
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2243
    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2244
    iget-wide v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2245
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2246
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2247
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 2261
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsHorizontalListView;->setFilterText(Ljava/lang/String;)V

    .line 2263
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2264
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2267
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2268
    iget-object v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2271
    :cond_2
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 2273
    iget-boolean v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2275
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2278
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 2279
    return-void

    .line 2248
    :cond_4
    iget-wide v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 2249
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2251
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2252
    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 2253
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2254
    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2255
    iget-wide v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2256
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2257
    iget v1, v0, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2258
    iput v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3402
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 3403
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 3404
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->getTwHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    .line 3406
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 2142
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 2144
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2146
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsHorizontalListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsHorizontalListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2148
    .local v8, "ss":Landroid/widget/AbsHorizontalListView$SavedState;
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    if-eqz v12, :cond_1

    .line 2150
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    .line 2151
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2152
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2153
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2154
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    .line 2155
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2156
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2157
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2158
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2159
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2229
    :cond_0
    :goto_0
    return-object v8

    .line 2163
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_4

    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v12, :cond_4

    const/4 v3, 0x1

    .line 2164
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v6

    .line 2165
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsHorizontalListView$SavedState;->selectedId:J

    .line 2166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->width:I

    .line 2168
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_5

    .line 2170
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2171
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2172
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2199
    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2200
    iget-boolean v12, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v12, :cond_2

    .line 2201
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 2202
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 2203
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2204
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_2

    .line 2205
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2210
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_2
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2212
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_3

    .line 2213
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2215
    :cond_3
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_a

    .line 2216
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2217
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2218
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_9

    .line 2219
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2218
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2163
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2174
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_5
    if-eqz v3, :cond_7

    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v12, :cond_7

    .line 2184
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2185
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2186
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2187
    .local v2, "firstPos":I
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v2, v12, :cond_6

    .line 2188
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2190
    :cond_6
    iput v2, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    .line 2191
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    goto :goto_2

    .line 2193
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->viewLeft:I

    .line 2194
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->firstId:J

    .line 2195
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2210
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 2221
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iput-object v5, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2223
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_a
    iget v12, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2225
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_0

    .line 2226
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_0
.end method

.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 8589
    const-string v0, "AbsHorizontalListView"

    const-string/jumbo v1, "onServiceConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8591
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_0

    .line 8596
    :goto_0
    return-void

    .line 8594
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 8603
    const-string v0, "AbsHorizontalListView"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8605
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2961
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2962
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2963
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 2966
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 2967
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/HorizontalFastScroller;->onSizeChanged(IIII)V

    .line 2969
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 7587
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7588
    invoke-direct {p0, v4}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7589
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7590
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7591
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 7593
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    .line 7594
    iput-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    .line 7600
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 7601
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7603
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 7604
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 7611
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 7595
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 7597
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 7598
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    goto :goto_0

    .line 7606
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 4575
    iget-boolean v10, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    if-eqz v10, :cond_0

    .line 4576
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v10, :cond_0

    .line 4577
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v11, p0, Landroid/widget/AbsHorizontalListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v10, v11, v9}, Landroid/hardware/motion/MotionRecognitionManager;->setMotionAngle(Landroid/hardware/motion/MRListener;I)V

    .line 4581
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 4584
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move v8, v9

    .line 4670
    :cond_2
    :goto_0
    return v8

    .line 4587
    :cond_3
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v10, :cond_4

    .line 4588
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v10}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4591
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4599
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v10, :cond_5

    .line 4600
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/HorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 4601
    .local v4, "intercepted":Z
    if-eqz v4, :cond_5

    move v8, v9

    .line 4602
    goto :goto_0

    .line 4606
    .end local v4    # "intercepted":Z
    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 4607
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4610
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v8, v9

    .line 4670
    goto :goto_0

    .line 4612
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4617
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4622
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4627
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->onTouchCancel()V

    goto :goto_1

    .line 4632
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4633
    iget v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4634
    .local v6, "x":I
    iget v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4635
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    .line 4636
    .local v5, "motionPosition":I
    if-ltz v5, :cond_6

    .line 4638
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4639
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4640
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4642
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4643
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    goto :goto_1

    .line 4649
    .end local v5    # "motionPosition":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 4650
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 4651
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v6, v10

    .line 4652
    .restart local v6    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 4653
    .restart local v7    # "y":I
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionCorrection:I

    .line 4654
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mActivePointerId:I

    .line 4655
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mMotionX:I

    .line 4656
    iput v7, p0, Landroid/widget/AbsHorizontalListView;->mMotionY:I

    .line 4657
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    .line 4658
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_7

    .line 4660
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4661
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4662
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 4664
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    iput v6, p0, Landroid/widget/AbsHorizontalListView;->mLastX:I

    .line 4665
    iget v8, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mPointerCount:I

    goto :goto_1

    .line 4610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 4079
    if-eqz p1, :cond_2

    .line 4081
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 4085
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4088
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 4090
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 4109
    :cond_1
    :goto_0
    return-void

    .line 4092
    :cond_2
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 4093
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4094
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4095
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4097
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 4098
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 4101
    :cond_5
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_1

    .line 4102
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 4103
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 4104
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->finishGlows()V

    .line 4105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8653
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8654
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mHoverPosition:I

    .line 8656
    const-string v1, "AbsHorizontalListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVisibilityChanged() is called, visibility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8658
    if-nez p2, :cond_3

    .line 8659
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollEnable:Z

    if-eqz v1, :cond_2

    .line 8660
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 8661
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8662
    :cond_0
    const-string v1, "AbsHorizontalListView"

    const-string/jumbo v2, "onVisibilityChanged() : registerIRListener() is called, visibility "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8663
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->registerIRListener()V

    .line 8674
    .end local v0    # "overscrollMode":I
    :goto_0
    return-void

    .line 8665
    .restart local v0    # "overscrollMode":I
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    goto :goto_0

    .line 8668
    .end local v0    # "overscrollMode":I
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    goto :goto_0

    .line 8671
    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    .line 8672
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3325
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 3330
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 3332
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 3334
    .local v1, "touchMode":I
    :goto_0
    if-nez p1, :cond_6

    .line 3335
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 3336
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-eqz v4, :cond_1

    .line 3337
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3340
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 3341
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v4, :cond_0

    .line 3342
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 3344
    :cond_0
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eqz v4, :cond_1

    .line 3345
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 3346
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 3347
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->finishGlows()V

    .line 3348
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3352
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->dismissPopup()V

    .line 3354
    if-ne v1, v3, :cond_2

    .line 3356
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 3380
    :cond_2
    :goto_1
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    .line 3383
    if-eqz p1, :cond_a

    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollEnable:Z

    if-eqz v4, :cond_a

    .line 3384
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 3385
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_9

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->twContentFits()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3386
    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->registerIRListener()V

    .line 3395
    .end local v0    # "overscrollMode":I
    :goto_2
    if-nez p1, :cond_4

    .line 3396
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->releaseAllBoosters()V

    .line 3398
    :cond_4
    return-void

    .end local v1    # "touchMode":I
    :cond_5
    move v1, v3

    .line 3332
    goto :goto_0

    .line 3359
    .restart local v1    # "touchMode":I
    :cond_6
    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/widget/AbsHorizontalListView;->mPopupHidden:Z

    if-nez v4, :cond_7

    .line 3361
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->showPopup()V

    .line 3365
    :cond_7
    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    if-eq v1, v4, :cond_2

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mLastTouchMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 3367
    if-ne v1, v3, :cond_8

    .line 3369
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    goto :goto_1

    .line 3373
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 3374
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 3375
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    goto :goto_1

    .line 3388
    .restart local v0    # "overscrollMode":I
    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    goto :goto_2

    .line 3391
    .end local v0    # "overscrollMode":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterIRListener()V

    .line 3392
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAirScrollUnregisterByLongClick:Z

    goto :goto_2
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1892
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1911
    :goto_0
    return v1

    .line 1895
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1911
    goto :goto_0

    .line 1897
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 1898
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1899
    .local v0, "viewportWidth":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_1
    move v1, v2

    .line 1902
    goto :goto_0

    .line 1904
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 1905
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1906
    .restart local v0    # "viewportWidth":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_2
    move v1, v2

    .line 1909
    goto :goto_0

    .line 1895
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/16 v3, 0x4e84

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1417
    const/4 v8, 0x0

    .line 1418
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1419
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1421
    .local v7, "dispatchItemClick":Z
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v2, :cond_11

    .line 1422
    const/4 v8, 0x1

    .line 1423
    const/4 v6, 0x0

    .line 1426
    .local v6, "checkedStateChanged":Z
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    .line 1427
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_7

    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_7

    .line 1430
    invoke-virtual {p1}, Landroid/view/View;->performHapticFeedback()Z

    .line 1437
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_b

    .line 1439
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_8

    move v5, v0

    .line 1440
    .local v5, "checked":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1441
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1442
    if-eqz v5, :cond_9

    .line 1443
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1448
    :cond_2
    :goto_2
    if-eqz v5, :cond_a

    .line 1449
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1453
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 1454
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1456
    const/4 v7, 0x0

    .line 1458
    :cond_3
    const/4 v6, 0x1

    .line 1475
    .end local v5    # "checked":Z
    :cond_4
    :goto_4
    if-eqz v6, :cond_5

    .line 1476
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->updateOnScreenCheckedViews()V

    .line 1486
    .end local v6    # "checkedStateChanged":Z
    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    .line 1487
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v8, v0

    .line 1490
    :cond_6
    return v8

    .line 1432
    .restart local v6    # "checkedStateChanged":Z
    :cond_7
    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_8
    move v5, v1

    .line 1439
    goto :goto_1

    .line 1445
    .restart local v5    # "checked":Z
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_2

    .line 1451
    :cond_a
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1459
    .end local v5    # "checked":Z
    :cond_b
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v2, v0, :cond_4

    .line 1460
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_e

    move v5, v0

    .line 1461
    .restart local v5    # "checked":Z
    :goto_6
    if-eqz v5, :cond_f

    .line 1462
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1463
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1464
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1465
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1466
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1468
    :cond_c
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1472
    :cond_d
    :goto_7
    const/4 v6, 0x1

    goto :goto_4

    .end local v5    # "checked":Z
    :cond_e
    move v5, v1

    .line 1460
    goto :goto_6

    .line 1469
    .restart local v5    # "checked":Z
    :cond_f
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1470
    :cond_10
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_7

    .line 1478
    .end local v5    # "checked":Z
    .end local v6    # "checkedStateChanged":Z
    :cond_11
    if-eqz p1, :cond_5

    .line 1480
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_5

    .line 1481
    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3573
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3574
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3576
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsHorizontalListView;->setItemChecked(IZ)V

    .line 3577
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3594
    :cond_0
    :goto_0
    return v6

    .line 3582
    :cond_1
    const/4 v6, 0x0

    .line 3583
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3584
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3587
    :cond_2
    if-nez v6, :cond_3

    .line 3588
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3589
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3591
    :cond_3
    if-eqz v6, :cond_0

    .line 3592
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3758
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3759
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3760
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3761
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3764
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3765
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3766
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3767
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3768
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3769
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3770
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3774
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 3765
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3774
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3787
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 3788
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3789
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3791
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 2877
    if-eq p1, v6, :cond_0

    .line 2878
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 2881
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2882
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2883
    instance-of v2, p2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2884
    check-cast v2, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Landroid/widget/AbsHorizontalListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2886
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->positionSelector(IIII)V

    .line 2889
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 2890
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2891
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 2892
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2893
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2896
    :cond_2
    return-void

    .line 2891
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7719
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7720
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    # getter for: Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$5000(Landroid/widget/AbsHorizontalListView$RecycleBin;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    move-result-object v3

    .line 7723
    .local v3, "listener":Landroid/widget/AbsHorizontalListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7724
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7725
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7727
    .local v4, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7728
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7729
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7730
    if-eqz v3, :cond_0

    .line 7732
    invoke-interface {v3, v0}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7723
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7736
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7737
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 7738
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 6761
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6762
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 6763
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6765
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6766
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6767
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 992
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->registerMotionListener()V

    .line 993
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setMotionEvent(Z)V

    .line 994
    return-void
.end method

.method public registerIRMotion()V
    .locals 0

    .prologue
    .line 962
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5417
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-eq p1, v0, :cond_a

    .line 5419
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_2

    .line 5420
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 5422
    :try_start_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

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
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 5426
    :goto_0
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 5428
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5429
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 5430
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5432
    :cond_1
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 5434
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Landroid/view/View;->mTwScrollingByScrollbar:Z

    if-nez v0, :cond_9

    .line 5435
    if-eqz p1, :cond_6

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-nez v0, :cond_6

    .line 5437
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 5439
    :try_start_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 5443
    :goto_1
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 5445
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 5447
    :try_start_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodPauseGc:Ljava/lang/reflect/Method;

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

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5452
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5453
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_5

    .line 5454
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5456
    :cond_5
    iput-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 5458
    :cond_6
    if-nez p1, :cond_9

    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    if-eqz v0, :cond_9

    .line 5460
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_9

    .line 5461
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 5463
    :try_start_3
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5467
    :goto_3
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSCookie:I

    .line 5469
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5470
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_8

    .line 5471
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5473
    :cond_8
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 5478
    :cond_9
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mLastScrollState:I

    .line 5479
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_a

    .line 5481
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsHorizontalListView;I)V

    .line 5484
    :cond_a
    return-void

    .line 5465
    :catch_0
    move-exception v0

    goto :goto_3

    .line 5464
    :catch_1
    move-exception v0

    goto :goto_3

    .line 5449
    :catch_2
    move-exception v0

    goto :goto_2

    .line 5448
    :catch_3
    move-exception v0

    goto :goto_2

    .line 5441
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 5440
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .line 5424
    :catch_6
    move-exception v0

    goto/16 :goto_0

    .line 5423
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 5259
    if-eqz p1, :cond_0

    .line 5260
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->recycleVelocityTracker()V

    .line 5262
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 5263
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2353
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2354
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 2356
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2036
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2037
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetList()V

    .line 2038
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 2039
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2041
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2362
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2363
    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2366
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2367
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    .line 2371
    :cond_0
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2372
    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2373
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2374
    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPendingSync:Landroid/widget/AbsHorizontalListView$SavedState;

    .line 2375
    iput v2, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 2376
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 2377
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2378
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2379
    iput v3, p0, Landroid/widget/AbsHorizontalListView;->mSelectedLeft:I

    .line 2380
    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    .line 2381
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2382
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2383
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 4

    .prologue
    .line 8894
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 8908
    :cond_0
    :goto_0
    return-void

    .line 8897
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 8899
    .local v0, "checkCount":I
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    if-eqz v2, :cond_0

    .line 8902
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 8903
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 8902
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8906
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    .line 8907
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 6829
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 6831
    .local v2, "childCount":I
    if-gtz v2, :cond_0

    .line 6832
    const/16 v17, 0x0

    .line 6927
    :goto_0
    return v17

    .line 6835
    :cond_0
    const/4 v12, 0x0

    .line 6837
    .local v12, "selectedLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 6838
    .local v3, "childrenLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 6839
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6840
    .local v5, "firstPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6841
    .local v15, "toPosition":I
    const/4 v10, 0x1

    .line 6843
    .local v10, "rightSide":Z
    if-lt v15, v5, :cond_4

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 6844
    move v13, v15

    .line 6846
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 6847
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 6848
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 6851
    .local v14, "selectedRight":I
    if-ge v12, v3, :cond_3

    .line 6852
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 6908
    .end local v11    # "selected":Landroid/view/View;
    .end local v14    # "selectedRight":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mResurrectToPosition:I

    .line 6909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 6913
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 6914
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 6915
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 6916
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 6917
    if-lt v13, v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_c

    .line 6918
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 6919
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 6920
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsHorizontalListView;->setSelectionInt(I)V

    .line 6921
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 6925
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6927
    if-ltz v13, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 6853
    .restart local v11    # "selected":Landroid/view/View;
    .restart local v14    # "selectedRight":I
    :cond_3
    if-le v14, v4, :cond_1

    .line 6854
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    goto :goto_1

    .line 6858
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    .end local v14    # "selectedRight":I
    :cond_4
    if-ge v15, v5, :cond_8

    .line 6860
    move v13, v5

    .line 6861
    .restart local v13    # "selectedPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_1

    .line 6862
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6863
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6865
    .local v8, "left":I
    if-nez v6, :cond_6

    .line 6867
    move v12, v8

    .line 6869
    if-gtz v5, :cond_5

    if-ge v8, v3, :cond_6

    .line 6872
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 6875
    :cond_6
    if-lt v8, v3, :cond_7

    .line 6877
    add-int v13, v5, v6

    .line 6878
    move v12, v8

    .line 6879
    goto/16 :goto_1

    .line 6861
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 6883
    .end local v6    # "i":I
    .end local v8    # "left":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 6884
    .local v7, "itemCount":I
    const/4 v10, 0x0

    .line 6885
    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    .line 6887
    .restart local v13    # "selectedPos":I
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "i":I
    :goto_4
    if-ltz v6, :cond_1

    .line 6888
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6889
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6890
    .restart local v8    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 6892
    .local v9, "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    .line 6893
    move v12, v8

    .line 6894
    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_9

    if-le v9, v4, :cond_a

    .line 6895
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 6899
    :cond_a
    if-gt v9, v4, :cond_b

    .line 6900
    add-int v13, v5, v6

    .line 6901
    move v12, v8

    .line 6902
    goto/16 :goto_1

    .line 6887
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 6923
    .end local v6    # "i":I
    .end local v7    # "itemCount":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v13, -0x1

    goto :goto_2

    .line 6927
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 6809
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6810
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 6811
    const/4 v0, 0x1

    .line 6813
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 6470
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    .line 6471
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1854
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1855
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 1856
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    .line 1857
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1866
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 1861
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1862
    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1865
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 7250
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7325
    :cond_0
    :goto_0
    return v2

    .line 7254
    :cond_1
    const/4 v2, 0x0

    .line 7255
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7256
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 7288
    :goto_1
    if-eqz v3, :cond_0

    .line 7289
    invoke-direct {p0, v8}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 7291
    move-object v1, p3

    .line 7292
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7293
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7296
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7297
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7299
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7300
    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    .line 7301
    :cond_3
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 7263
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 7264
    goto :goto_1

    .line 7266
    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7267
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 7269
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7270
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_4

    .line 7271
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7273
    :cond_4
    const/4 v2, 0x1

    .line 7280
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 7281
    goto :goto_1

    .line 7274
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 7276
    const/4 v2, 0x1

    .line 7277
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7284
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    goto :goto_1

    .line 7302
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    .line 7303
    :cond_8
    iput-boolean v8, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7308
    :pswitch_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7309
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 7310
    :cond_9
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 7311
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mOldKeyCode:I

    .line 7312
    iput v5, p0, Landroid/widget/AbsHorizontalListView;->mCurrentKeyCode:I

    .line 7313
    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    .line 7314
    iput v9, p0, Landroid/widget/AbsHorizontalListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 7315
    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    .line 7316
    :cond_b
    iput-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7321
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7256
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 7297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 134
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1206
    if-eqz p1, :cond_0

    .line 1207
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    .line 1208
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1210
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1214
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1218
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1219
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1223
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 1224
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    .line 1225
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 1226
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mOldAdapterItemCount:I

    .line 1229
    :cond_3
    return-void
.end method

.method public setAirScrollEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 986
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 5024
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 5025
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 7690
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 7691
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mCacheColorHint:I

    .line 7692
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7693
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7694
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7693
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7696
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->setCacheColorHint(I)V

    .line 7698
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1544
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    .line 1545
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1547
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1549
    :cond_0
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1550
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1551
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1553
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1554
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1557
    :cond_2
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1558
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->clearChoices()V

    .line 1559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 1562
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3045
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 3046
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 8800
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 8801
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1690
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1691
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1692
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setFastScrollEnabled(Z)V

    .line 1695
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    .line 1697
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1698
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1708
    :cond_1
    :goto_0
    return-void

    .line 1700
    :cond_2
    new-instance v0, Landroid/widget/AbsHorizontalListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$2;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1644
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1645
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mFastScrollEnabled:Z

    .line 1647
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1650
    :cond_1
    new-instance v0, Landroid/widget/AbsHorizontalListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsHorizontalListView$1;-><init>(Landroid/widget/AbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2294
    iget-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2295
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsHorizontalListView;->createTextFilter(Z)V

    .line 2298
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2299
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2300
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2302
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2303
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2304
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2308
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    .line 2309
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 2312
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3466
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    .line 3467
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2560
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 2562
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2566
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2567
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2568
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->positionPopup()V

    .line 2572
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2566
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 6208
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6209
    new-instance v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6211
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    # getter for: Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->access$2000(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 6212
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4158
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 4159
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4140
    if-eqz p1, :cond_0

    .line 4141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    .line 4145
    :goto_0
    return-void

    .line 4143
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4151
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I

    .line 4152
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1346
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    if-eqz p2, :cond_4

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_4

    .line 1352
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1354
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsHorizontalListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1361
    :cond_4
    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    if-ne v1, v5, :cond_c

    .line 1362
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1363
    .local v6, "oldValue":Z
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1364
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1365
    if-eqz p2, :cond_a

    .line 1366
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1371
    :cond_6
    :goto_1
    if-eq v6, p2, :cond_7

    .line 1372
    if-eqz p2, :cond_b

    .line 1373
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    .line 1378
    :cond_7
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8

    .line 1379
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1380
    .local v3, "id":J
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1407
    .end local v3    # "id":J
    .end local v6    # "oldValue":Z
    :cond_8
    :goto_3
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1408
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mForcedClick:Z

    if-nez v0, :cond_9

    .line 1409
    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1410
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 1411
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    goto/16 :goto_0

    .line 1368
    .restart local v6    # "oldValue":Z
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1375
    :cond_b
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1384
    .end local v6    # "oldValue":Z
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_10

    move v7, v8

    .line 1387
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1388
    :cond_d
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1389
    if-eqz v7, :cond_e

    .line 1390
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1395
    :cond_e
    if-eqz p2, :cond_11

    .line 1396
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1397
    if-eqz v7, :cond_f

    .line 1398
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1400
    :cond_f
    iput v8, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_10
    move v7, v0

    .line 1384
    goto :goto_4

    .line 1401
    .restart local v7    # "updateIds":Z
    :cond_11
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1402
    :cond_12
    iput v0, p0, Landroid/widget/AbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1009
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mMotionEnable:Z

    .line 1010
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    .prologue
    .line 1574
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1575
    new-instance v0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    .line 1577
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V

    .line 1578
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 8912
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mTwPressItemListArray:[I

    if-nez v0, :cond_0

    .line 8918
    :goto_0
    return-void

    .line 8915
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 8916
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsHorizontalListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsHorizontalListView$OnScrollListener;

    .prologue
    .line 1832
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mOnScrollListener:Landroid/widget/AbsHorizontalListView$OnScrollListener;

    .line 1833
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 1834
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 5232
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingTop:I

    .line 5233
    iput p2, p0, Landroid/widget/AbsHorizontalListView;->mGlowPaddingBottom:I

    .line 5234
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1188
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1189
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1190
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1191
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1192
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1198
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1199
    return-void

    .line 1195
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1196
    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsHorizontalListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .prologue
    .line 7848
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    # setter for: Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->access$5002(Landroid/widget/AbsHorizontalListView$RecycleBin;Landroid/widget/AbsHorizontalListView$RecyclerListener;)Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .line 7849
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7755
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 7756
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7757
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7759
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7769
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 7763
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mDeferNotifyDataSetChanged:Z

    .line 7765
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7766
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7767
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 7781
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7782
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 7784
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1770
    invoke-super {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 1771
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollBarStyle(I)V

    .line 1774
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 3128
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    .line 3129
    iput-object p2, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    .line 3130
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1958
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1959
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V

    .line 1961
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mScrollingCacheEnabled:Z

    .line 1962
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3056
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3057
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3060
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3061
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3062
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3064
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3065
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3066
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3067
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionLeftPadding:I

    .line 3068
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionTopPadding:I

    .line 3069
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionRightPadding:I

    .line 3070
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsHorizontalListView;->mSelectionBottomPadding:I

    .line 3071
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3072
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->updateSelectorState()V

    .line 3073
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1804
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 1805
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2029
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2030
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mStackFromBottom:Z

    .line 2031
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->requestLayoutIfNecessary()V

    .line 2033
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 1975
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mTextFilterEnabled:Z

    .line 1976
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1023
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mTouchSlop:I

    .line 1024
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 7661
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mTranscriptMode:I

    .line 7662
    return-void
.end method

.method public setTwHorizontalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1762
    invoke-super {p0, p1}, Landroid/view/View;->setTwHorizontalScrollbarPosition(I)V

    .line 1763
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalFastScroller;->setScrollbarPosition(I)V

    .line 1766
    :cond_0
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 6221
    iput p1, p0, Landroid/widget/AbsHorizontalListView;->mVelocityScale:F

    .line 6222
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7831
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7832
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 7834
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2994
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 2995
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    .line 3000
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFingerHovered()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    return v3

    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_4
    move v0, v3

    .line 2994
    goto :goto_0

    .restart local v0    # "isFingerAirView":Z
    :cond_5
    move v1, v3

    .line 2995
    goto :goto_1
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3005
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

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

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3605
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsHorizontalListView;->pointToPosition(II)I

    move-result v3

    .line 3606
    .local v3, "position":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 3607
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3608
    .local v1, "id":J
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3609
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3610
    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3611
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3616
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "id":J
    :goto_0
    return v4

    .line 3614
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3616
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3621
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3622
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3623
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3624
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3626
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3627
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3630
    :cond_0
    if-nez v6, :cond_1

    .line 3631
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3634
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3639
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 6296
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 6371
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 6372
    new-instance v5, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6376
    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6377
    .local v1, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6378
    .local v0, "childCount":I
    add-int v2, v1, v0

    .line 6379
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 6380
    .local v3, "leftLimit":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 6382
    .local v4, "rightLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v5, v3, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v2, v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ne v5, v4, :cond_4

    if-lez p1, :cond_4

    .line 6386
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 6387
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 6388
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 6394
    :cond_3
    :goto_0
    return-void

    .line 6391
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6392
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 6400
    const/4 v2, -0x1

    .line 6401
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 6402
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 6407
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 6408
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6409
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 6410
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6411
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6413
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6414
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6415
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6416
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 6417
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 6420
    add-int/lit8 v2, v2, 0x1

    .line 6427
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    .line 6430
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 6403
    :cond_3
    if-lez p1, :cond_0

    .line 6404
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 6421
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 6424
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6230
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6231
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6233
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(I)V

    .line 6234
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6283
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6284
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6286
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(II)V

    .line 6287
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6267
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6268
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6270
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(II)V

    .line 6271
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6249
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6250
    new-instance v0, Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    .line 6252
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(III)V

    .line 6253
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2977
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2982
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2980
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2977
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 32
    .param p1, "deltaX"    # I
    .param p2, "incrementalDeltaX"    # I

    .prologue
    .line 6509
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 6510
    .local v7, "childCount":I
    if-nez v7, :cond_0

    .line 6511
    const/16 v30, 0x1

    .line 6708
    :goto_0
    return v30

    .line 6514
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 6515
    .local v13, "firstLeft":I
    add-int/lit8 v30, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getRight()I

    move-result v19

    .line 6517
    .local v19, "lastRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 6522
    .local v21, "listPadding":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 6523
    .local v10, "effectivePaddingLeft":I
    const/4 v11, 0x0

    .line 6524
    .local v11, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 6525
    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 6526
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 6530
    :cond_1
    sub-int v26, v10, v13

    .line 6531
    .local v26, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v12, v30, v11

    .line 6532
    .local v12, "end":I
    sub-int v27, v19, v12

    .line 6534
    .local v27, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v31, v0

    sub-int v29, v30, v31

    .line 6535
    .local v29, "width":I
    if-gez p1, :cond_3

    .line 6536
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6541
    :goto_1
    if-gez p2, :cond_4

    .line 6542
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6547
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6550
    .local v14, "firstPosition":I
    if-nez v14, :cond_5

    .line 6551
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v30, v13, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    .line 6555
    :goto_3
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 6556
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    .line 6561
    :goto_4
    if-nez v14, :cond_7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v13, v0, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 6563
    .local v5, "cannotScrollRight":Z
    :goto_5
    add-int v30, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v19

    move/from16 v1, v30

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v4, 0x1

    .line 6566
    .local v4, "cannotScrollLeft":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v4, :cond_a

    .line 6567
    :cond_2
    if-eqz p2, :cond_9

    const/16 v30, 0x1

    goto/16 :goto_0

    .line 6538
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    .end local v14    # "firstPosition":I
    :cond_3
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 6544
    :cond_4
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 6553
    .restart local v14    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 6558
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 6561
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 6563
    .restart local v5    # "cannotScrollRight":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .line 6567
    .restart local v4    # "cannotScrollLeft":Z
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 6570
    :cond_a
    if-gez p2, :cond_14

    const/16 v25, 0x1

    .line 6572
    .local v25, "rightSide":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v18

    .line 6573
    .local v18, "inTouchMode":Z
    if-eqz v18, :cond_b

    .line 6574
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->hideSelector()V

    .line 6577
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getHeaderViewsCount()I

    move-result v16

    .line 6578
    .local v16, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->getFooterViewsCount()I

    move-result v31

    sub-int v15, v30, v31

    .line 6580
    .local v15, "footerViewsStart":I
    const/16 v28, 0x0

    .line 6581
    .local v28, "start":I
    const/4 v9, 0x0

    .line 6584
    .local v9, "count":I
    const/16 v22, 0x1

    .line 6587
    .local v22, "performHaptic":Z
    if-eqz v25, :cond_1b

    .line 6588
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v20, v0

    .line 6589
    .local v20, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 6590
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    add-int v20, v20, v30

    .line 6592
    :cond_c
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8
    move/from16 v0, v17

    if-ge v0, v7, :cond_d

    .line 6593
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6594
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    .line 6664
    .end local v6    # "child":Landroid/view/View;
    .end local v20    # "left":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mMotionViewNewLeft:I

    .line 6666
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 6668
    if-lez v9, :cond_e

    .line 6669
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 6670
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/AbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    .line 6675
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v30

    if-nez v30, :cond_f

    .line 6676
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 6679
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->twOffsetChildrenLeftAndRight(I)V

    .line 6681
    if-eqz v25, :cond_10

    .line 6682
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v9

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6685
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6686
    .local v3, "absIncrementalDeltaX":I
    move/from16 v0, v26

    if-lt v0, v3, :cond_11

    move/from16 v0, v27

    if-ge v0, v3, :cond_12

    .line 6687
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->fillGap(Z)V

    .line 6690
    :cond_12
    if-nez v18, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_22

    .line 6691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 6692
    .local v8, "childIndex":I
    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    .line 6693
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 6704
    .end local v8    # "childIndex":I
    :cond_13
    :goto_9
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 6706
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 6708
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 6570
    .end local v3    # "absIncrementalDeltaX":I
    .end local v9    # "count":I
    .end local v15    # "footerViewsStart":I
    .end local v16    # "headerViewsCount":I
    .end local v17    # "i":I
    .end local v18    # "inTouchMode":Z
    .end local v22    # "performHaptic":Z
    .end local v25    # "rightSide":Z
    .end local v28    # "start":I
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 6597
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "count":I
    .restart local v15    # "footerViewsStart":I
    .restart local v16    # "headerViewsCount":I
    .restart local v17    # "i":I
    .restart local v18    # "inTouchMode":Z
    .restart local v20    # "left":I
    .restart local v22    # "performHaptic":Z
    .restart local v25    # "rightSide":Z
    .restart local v28    # "start":I
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 6598
    add-int v23, v14, v17

    .line 6599
    .local v23, "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_1a

    move/from16 v0, v23

    if-ge v0, v15, :cond_1a

    .line 6602
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_16

    .line 6603
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6607
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_19

    .line 6608
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_19

    .line 6609
    if-eqz v22, :cond_18

    .line 6610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_17

    .line 6611
    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6612
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 6614
    :cond_17
    const/16 v22, 0x0

    .line 6616
    :cond_18
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    .line 6620
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6592
    :cond_1a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 6625
    .end local v6    # "child":Landroid/view/View;
    .end local v17    # "i":I
    .end local v20    # "left":I
    .end local v23    # "position":I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v24, v30, p2

    .line 6626
    .local v24, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 6627
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v24, v24, v30

    .line 6629
    :cond_1c
    add-int/lit8 v17, v7, -0x1

    .restart local v17    # "i":I
    :goto_a
    if-ltz v17, :cond_d

    .line 6630
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6631
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v24

    if-le v0, v1, :cond_d

    .line 6634
    move/from16 v28, v17

    .line 6635
    add-int/lit8 v9, v9, 0x1

    .line 6636
    add-int v23, v14, v17

    .line 6637
    .restart local v23    # "position":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_21

    move/from16 v0, v23

    if-ge v0, v15, :cond_21

    .line 6640
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 6641
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6645
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_20

    .line 6646
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_20

    .line 6647
    if-eqz v22, :cond_1f

    .line 6648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    .line 6649
    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 6652
    :cond_1e
    const/16 v22, 0x0

    .line 6654
    :cond_1f
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView;->mLastPosition:I

    .line 6658
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6629
    :cond_21
    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    .line 6695
    .end local v6    # "child":Landroid/view/View;
    .end local v23    # "position":I
    .end local v24    # "right":I
    .restart local v3    # "absIncrementalDeltaX":I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_23

    .line 6696
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v8, v30, v31

    .line 6697
    .restart local v8    # "childIndex":I
    if-ltz v8, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_13

    .line 6698
    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 6701
    .end local v8    # "childIndex":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected twGetItemCount()I
    .locals 2

    .prologue
    .line 6326
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6327
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public twIsSetCustomMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 1613
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1495
    const/4 v6, 0x0

    .line 1497
    .local v6, "handledNotifyKeyPress":Z
    iget-boolean v0, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-eqz v0, :cond_0

    .line 1498
    iget-boolean v5, p0, Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Landroid/widget/AdapterView;->twNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v6

    .line 1500
    :cond_0
    return v6
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1604
    iput-boolean p1, p0, Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z

    .line 1605
    return-void
.end method

.method public twSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6337
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6338
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1586
    if-eqz p1, :cond_1

    .line 1587
    iget v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mMultiChoiceModeCallback:Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1593
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public twSmoothScrollBy(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/16 v5, -0x1f4

    const/16 v4, 0x1f4

    .line 6342
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6343
    new-instance v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .line 6346
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 6347
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6348
    new-instance v1, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    .line 6351
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    monitor-enter v2

    .line 6352
    :try_start_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 6353
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v4, :cond_3

    .line 6354
    if-lez p1, :cond_2

    .line 6355
    :goto_0
    if-le p1, v4, :cond_3

    .line 6356
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6355
    add-int/lit16 p1, p1, -0x1f4

    goto :goto_0

    .line 6359
    :cond_2
    :goto_1
    if-ge p1, v5, :cond_3

    .line 6360
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    const/16 v3, -0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6359
    add-int/lit16 p1, p1, 0x1f4

    goto :goto_1

    .line 6364
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6365
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView;->mTwSmoothScrollByMove:Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6366
    :cond_4
    monitor-exit v2

    .line 6367
    return-void

    .line 6366
    .end local v0    # "isEmpty":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1000
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView;->unregisterMotionListener()V

    .line 1001
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsHorizontalListView;->setMotionEvent(Z)V

    .line 1002
    return-void
.end method

.method public unregisterIRMotion()V
    .locals 0

    .prologue
    .line 968
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1031
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1033
    :cond_0
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2582
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2585
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v0, v4

    .line 2588
    .local v0, "canScrollLeft":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2589
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2590
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2591
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_5

    move v0, v4

    .line 2595
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2598
    .end local v0    # "canScrollLeft":Z
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2600
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2603
    .local v3, "count":I
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v1, v4

    .line 2606
    .local v1, "canScrollRight":Z
    :goto_3
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 2607
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2608
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    iget v8, p0, Landroid/view/View;->mRight:I

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v1, v4

    .line 2611
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2613
    .end local v1    # "canScrollRight":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    :cond_4
    move v0, v5

    .line 2585
    goto :goto_0

    .restart local v0    # "canScrollLeft":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    move v0, v5

    .line 2591
    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2595
    goto :goto_2

    .end local v0    # "canScrollLeft":Z
    .restart local v3    # "count":I
    :cond_7
    move v1, v5

    .line 2603
    goto :goto_3

    .restart local v1    # "canScrollRight":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_8
    move v1, v5

    .line 2608
    goto :goto_4

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2611
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3133
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3134
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3135
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    .line 3136
    iget v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3137
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3138
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mIsPnePressed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3139
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3140
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3151
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3142
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3145
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3148
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3195
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
