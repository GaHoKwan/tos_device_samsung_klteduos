.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$TwSmoothScrollByMove;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
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
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_UP:I = 0x1

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

.field private static final TAG:Ljava/lang/String; = "AbsListView"

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

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

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

.field private mCurrentKeyCode:I

.field private mDVFSCookie:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperBUS:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSHelperGPU:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverBottomAreaHeight_DP:I

.field private mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoverTopAreaHeight_DP:I

.field private mHoveredOnEllipsizedText:Z

.field private mIsChildViewEnabled:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field final mIsScrap:[Z

.field private mIsShiftkeyPressed:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mMotionPosition:I

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mMultiSelectionStart:Z

.field private mOldAdapterItemCount:I

.field private mOldKeyCode:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedTop:I

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

.field private mTwDragBlockBottom:I

.field private mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mTwDragBlockLeft:I

.field private mTwDragBlockRect:Landroid/graphics/Rect;

.field private mTwDragBlockRight:I

.field private mTwDragBlockTop:I

.field private mTwDragEndX:I

.field private mTwDragEndY:I

.field private mTwDragSelectedItemArray:[I

.field private mTwDragSelectedItemCount:I

.field private mTwDragSelectedViewIndex:I

.field private mTwDragStartX:I

.field private mTwDragStartY:I

.field private mTwPressItemListArray:[I

.field private mTwPressItemListIndex:I

.field private final mTwScrollAmount:I

.field private mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

.field private mTwTrackedChild:Landroid/view/View;

.field private mTwTrackedChildPrevPosition:I

.field private mTwTrackedChildPrevTop:I

.field private mTwTrackedChildScrolldeltaY:I

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

.field mWidthMeasureSpec:I

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 808
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1045
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 139
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 140
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 141
    iput-object v4, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 143
    iput-boolean v3, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 274
    iput v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 307
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 332
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 337
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 347
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 352
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 358
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 363
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 368
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 373
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 378
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 383
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 388
    iput v3, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 436
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 467
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 510
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 530
    iput v5, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 532
    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 558
    iput v5, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 561
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 564
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 572
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 573
    iput-object v4, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 620
    iput v3, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 639
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 641
    new-array v1, v6, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 651
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 656
    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 663
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 714
    iput v3, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 746
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight_DP:I

    .line 748
    const/16 v1, 0x19

    iput v1, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight_DP:I

    .line 750
    iput v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 752
    iput v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 762
    iput-wide v7, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 764
    iput-wide v7, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 766
    iput-wide v7, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 768
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 770
    iput-wide v7, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 772
    iput v5, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 777
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 782
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 788
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 793
    const/16 v1, 0xa

    iput v1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I

    .line 798
    iput v3, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 803
    iput-boolean v3, p0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    .line 826
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 831
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 832
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 833
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 834
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 836
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 840
    iput v3, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    .line 841
    iput v5, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 842
    iput v5, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 843
    iput v3, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 844
    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 845
    iput v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 846
    iput v5, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 849
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mMultiSelectionStart:Z

    .line 851
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    .line 852
    iput v5, p0, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    .line 855
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 856
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 857
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 858
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 859
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 861
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 862
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 863
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 864
    iput v3, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 866
    iput-object v4, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 867
    iput v5, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevPosition:I

    .line 868
    iput v3, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevTop:I

    .line 869
    iput v3, p0, Landroid/widget/AbsListView;->mTwTrackedChildScrolldeltaY:I

    .line 872
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 940
    iput-object v4, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 941
    iput-object v4, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    .line 942
    iput-object v4, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    .line 943
    iput-object v4, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 944
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 945
    iput v3, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 946
    iput-object v4, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 947
    iput-object v4, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1031
    iput-boolean v3, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 3483
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 4435
    iput v3, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 4436
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5219
    iput v5, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5221
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5222
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5223
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6536
    iput-object v4, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6537
    iput-object v4, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6538
    const/16 v1, 0x1f4

    iput v1, p0, Landroid/widget/AbsListView;->mTwScrollAmount:I

    .line 8722
    new-instance v1, Landroid/widget/AbsListView$5;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8791
    iput v3, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 1046
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1048
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1050
    invoke-virtual {p0, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1051
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1052
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 1053
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1058
    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1059
    const-string v1, "AbsListView"

    const-string v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1064
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    .line 1065
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1068
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1069
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1072
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 140
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 141
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 143
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 274
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 307
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 332
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 337
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 347
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 352
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 358
    new-instance v9, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 363
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 368
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 373
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 378
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 383
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 388
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 436
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 467
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 510
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 530
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 532
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 558
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 561
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 564
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 572
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 573
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 620
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 639
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 641
    const/4 v9, 0x1

    new-array v9, v9, [Z

    iput-object v9, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 651
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 656
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 663
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 714
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 746
    const/16 v9, 0xf

    iput v9, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight_DP:I

    .line 748
    const/16 v9, 0x19

    iput v9, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight_DP:I

    .line 750
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 752
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 762
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 764
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 766
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 768
    const-wide/16 v9, 0x12c

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 770
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 772
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 777
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 782
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 788
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 793
    const/16 v9, 0xa

    iput v9, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I

    .line 798
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 803
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    .line 826
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 831
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 832
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 833
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 834
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 836
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 840
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    .line 841
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 842
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 843
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 844
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 845
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 846
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 849
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mMultiSelectionStart:Z

    .line 851
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    .line 852
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    .line 855
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 856
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 857
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 858
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 859
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 861
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 862
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 863
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 864
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 866
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 867
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevPosition:I

    .line 868
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevTop:I

    .line 869
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mTwTrackedChildScrolldeltaY:I

    .line 872
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    .line 940
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 941
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    .line 942
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    .line 943
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 944
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 945
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 946
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 947
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 1031
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 3483
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 4435
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 4436
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5219
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5221
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5222
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5223
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6536
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6537
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6538
    const/16 v9, 0x1f4

    iput v9, p0, Landroid/widget/AbsListView;->mTwScrollAmount:I

    .line 8722
    new-instance v9, Landroid/widget/AbsListView$5;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 8791
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 1073
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1075
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1077
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1080
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1081
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 1082
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1085
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1088
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1089
    .local v6, "stackFromBottom":Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 1091
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1092
    .local v4, "scrollingCacheEnabled":Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1094
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1095
    .local v8, "useTextFilter":Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 1097
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1099
    .local v7, "transcriptMode":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 1101
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1102
    .local v1, "color":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 1104
    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1105
    .local v3, "enableFastScroll":Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1107
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1108
    .local v5, "smoothScrollbar":Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1110
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1111
    const/16 v9, 0xa

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1119
    iget-object v9, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v9, :cond_1

    .line 1120
    const-string v9, "AbsListView"

    const-string v10, "Get MotionRecognitionManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string/jumbo v9, "motion_recognition"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v9, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1125
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    .line 1126
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2317
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

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

.method static synthetic access$000(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/AbsListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1402(Landroid/widget/AbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/widget/AbsListView$CheckForLongPress;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1902(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)Landroid/view/HapticPreDrawListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/os/StrictMode$Span;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
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
    .line 128
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;
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
    .line 128
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4800(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5700(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5800(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5900(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$6000(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    return v0
.end method

.method static synthetic access$6200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/widget/AbsListView;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$6302(Landroid/widget/AbsListView;J)J
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$6400(Landroid/widget/AbsListView;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    return-wide v0
.end method

.method static synthetic access$6402(Landroid/widget/AbsListView;J)J
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    return-wide p1
.end method

.method static synthetic access$6500(Landroid/widget/AbsListView;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    return-wide v0
.end method

.method static synthetic access$6600(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/AbsListView;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$6800(Landroid/widget/AbsListView;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-wide v0, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$6900(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$7002(Landroid/widget/AbsListView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 128
    iput p1, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$7100(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$7200(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    return v0
.end method

.method static synthetic access$7300(Landroid/widget/AbsListView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$7400(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$HoverScrollHandler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$7502(Landroid/widget/AbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$800(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private addToPressItemListArray(II)V
    .locals 7
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 8925
    const/4 v2, 0x0

    .line 8926
    .local v2, "isSameValueExist":Z
    const/4 v0, 0x0

    .line 8928
    .local v0, "checkCount":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-nez v4, :cond_0

    .line 9008
    :goto_0
    return-void

    .line 8932
    :cond_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    .line 8933
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_3

    .line 8934
    iget-object v4, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_2

    .line 8935
    const/4 v2, 0x1

    .line 8937
    move v3, v1

    .local v3, "j":I
    :goto_2
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 8938
    iget-object v4, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    iget-object v5, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    .line 8937
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8940
    :cond_1
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    .line 8933
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8945
    :cond_3
    if-nez v2, :cond_4

    .line 8946
    iget-object v4, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8947
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    .line 9006
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 8951
    .end local v1    # "i":I
    :cond_5
    if-ge p1, p2, :cond_9

    .line 8952
    sub-int v4, p2, p1

    add-int/lit8 v0, v4, 0x1

    .line 8954
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 8955
    const/4 v2, 0x0

    .line 8957
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_7

    .line 8958
    iget-object v4, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_6

    .line 8959
    const/4 v2, 0x1

    .line 8957
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 8964
    :cond_7
    if-nez v2, :cond_8

    .line 8965
    iget-object v4, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8966
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    .line 8968
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 8954
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8971
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_9
    if-le p1, p2, :cond_d

    .line 8972
    sub-int v4, p1, p2

    add-int/lit8 v0, v4, 0x1

    .line 8973
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v0, :cond_4

    .line 8974
    const/4 v2, 0x0

    .line 8976
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_7
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    if-ge v3, v4, :cond_b

    .line 8977
    iget-object v4, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_a

    .line 8978
    const/4 v2, 0x1

    .line 8976
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 8983
    :cond_b
    if-nez v2, :cond_c

    .line 8984
    iget-object v4, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 8985
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    .line 8988
    :cond_c
    add-int/lit8 p1, p1, -0x1

    .line 8973
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 8991
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    if-ge v1, v4, :cond_f

    .line 8992
    iget-object v4, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_e

    .line 8993
    const/4 v2, 0x1

    .line 8991
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8998
    :cond_f
    if-nez v2, :cond_4

    .line 8999
    iget-object v4, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    iget v5, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    aput p1, v4, v5

    .line 9000
    iget v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    goto :goto_3
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 6666
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6667
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6668
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6684
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6686
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1654
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1655
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1658
    :cond_0
    :goto_0
    return v1

    .line 1656
    :cond_1
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1658
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

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

    .line 6658
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6659
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6660
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 6661
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 6663
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 7725
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 7726
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7727
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7728
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7729
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7730
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7731
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7732
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7733
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7734
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 7735
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7736
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 7738
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 7739
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10301ef

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7743
    :goto_0
    return-void

    .line 7741
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10301f0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 7373
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7374
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7376
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3072
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3073
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 3074
    .local v2, "selectedPosition":I
    const/4 v1, 0x0

    .line 3075
    .local v1, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3076
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3077
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3078
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3082
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 3084
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    if-ge v0, v5, :cond_2

    .line 3085
    iget-object v5, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    aget v2, v5, v0

    .line 3086
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3088
    if-eqz v1, :cond_1

    .line 3089
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3090
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3091
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3084
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3096
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 7966
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 7967
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7968
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7970
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7419
    sparse-switch p2, :sswitch_data_0

    .line 7452
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7421
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7422
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7423
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7424
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7456
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 7457
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7458
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7427
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

    .line 7428
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7429
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7430
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7431
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7433
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7434
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7435
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7436
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7437
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7439
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

    .line 7440
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7441
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7442
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7443
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7446
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

    .line 7447
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7448
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7449
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7450
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7419
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
    .line 7746
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 7747
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7748
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x109012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 7753
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 7755
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 7756
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7758
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 1130
    invoke-virtual {p0, v10}, Landroid/view/View;->setClickable(Z)V

    .line 1131
    invoke-virtual {p0, v10}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 1132
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1133
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1134
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1136
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1137
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 1138
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1139
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 1140
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 1141
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 1142
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 1145
    .end local v7    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 1150
    :cond_1
    new-instance v1, Landroid/view/HapticPreDrawListener;

    invoke-direct {v1}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1153
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 1154
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_2

    move v0, v10

    :cond_2
    iput-boolean v0, p0, Landroid/widget/AbsListView;->AIR_VIEW_WINSET:Z

    .line 1158
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 1159
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 1160
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_GPU"

    const/16 v3, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    .line 1163
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1165
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_BUS"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    .line 1166
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1168
    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_4

    .line 1169
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 1170
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1175
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1176
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/widget/AbsListView;->mAudioManager:Landroid/media/AudioManager;

    .line 1180
    :cond_5
    const-class v6, Ldalvik/system/VMRuntime;

    .line 1182
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

    iput-object v0, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 1183
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

    iput-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :goto_0
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 1190
    .local v9, "value":Landroid/util/TypedValue;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 1191
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010470

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    .line 1193
    .local v8, "resolved":Z
    if-eqz v8, :cond_6

    .line 1194
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1198
    :cond_6
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010477

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    .line 1200
    if-eqz v8, :cond_7

    .line 1201
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1206
    .end local v8    # "resolved":Z
    :cond_7
    return-void

    .line 1185
    .end local v9    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1184
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 5442
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5443
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5447
    :goto_0
    return-void

    .line 5445
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 5450
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5451
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5453
    :cond_0
    return-void
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1754
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

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
    .line 8896
    const-string v0, "AbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8897
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5235
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 5236
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 5239
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_3

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 5240
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 5246
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_5

    .line 5247
    const/4 v14, 0x3

    if-ne v11, v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5358
    :cond_2
    :goto_2
    return-void

    .line 5241
    :cond_3
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 5242
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 5247
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 5250
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 5253
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 5258
    const/16 v14, 0x9

    if-ne v1, v14, :cond_6

    .line 5259
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_2

    .line 5260
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 5265
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isMultiWindows()Z

    move-result v14

    if-nez v14, :cond_2

    .line 5269
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 5270
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5271
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 5275
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

    .line 5280
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

    .line 5283
    .local v7, "isFingerAirViewPreview":Z
    :goto_4
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 5286
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHovered()Z

    move-result v14

    if-nez v14, :cond_9

    .line 5287
    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setFingerHovered(Z)V

    .line 5288
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setHovered(Z)V

    .line 5290
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 5291
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 5292
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    .line 5293
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    if-eq v14, v9, :cond_e

    const/4 v2, 0x1

    .line 5294
    .local v2, "bChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 5296
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 5298
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_f

    .line 5299
    if-nez v10, :cond_a

    .line 5300
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5303
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_b

    .line 5304
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5305
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5306
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5308
    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 5354
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 5355
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 5275
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_3

    .line 5280
    .restart local v6    # "isFingerAirView":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    .line 5293
    .restart local v7    # "isFingerAirViewPreview":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 5312
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5314
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5316
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 5318
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 5332
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 5333
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5334
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5341
    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_11

    .line 5342
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5343
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5346
    :cond_11
    const/16 v14, 0xa

    if-ne v1, v14, :cond_2

    if-nez v10, :cond_2

    .line 5347
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 5348
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 5349
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 5350
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5351
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5352
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_2

    .line 5336
    :cond_12
    if-nez v10, :cond_10

    .line 5337
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

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

    .line 5571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 5573
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 5574
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 5578
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 5579
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5580
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5581
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5582
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5588
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5590
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 5578
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5186
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 5199
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5200
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5201
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5202
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5203
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5205
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5206
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5207
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5210
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 5211
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5212
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5214
    :cond_1
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5215
    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 5216
    return-void

    .line 5188
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 5189
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5191
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 5186
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

    .line 4886
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4887
    iget v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 4889
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 4891
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4892
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v4, :cond_0

    .line 4893
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4895
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4896
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4898
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4899
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4900
    iput v6, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 4947
    :goto_0
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4949
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4951
    :cond_1
    return-void

    .line 4902
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 4903
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 4904
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 4906
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 4907
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 4909
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4910
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4911
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4912
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 4913
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 4935
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 4937
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4938
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4941
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4942
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4943
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4944
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 4914
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4918
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4921
    iget-boolean v4, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_6

    .line 4922
    const/16 v4, 0x4e8e

    invoke-virtual {p0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4927
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v4, :cond_7

    .line 4928
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 4931
    :cond_7
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4954
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 4955
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 4956
    const/4 v1, 0x0

    .line 4957
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4960
    :cond_0
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 4963
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4966
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .line 4968
    .local v3, "y":I
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 5004
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 4974
    :pswitch_1
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4979
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 4980
    .local v2, "x":F
    int-to-float v4, v3

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v2, v4, v5}, Landroid/view/View;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4981
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4982
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4983
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 4984
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4986
    :cond_3
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4988
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4989
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 4986
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_1

    .line 4995
    .end local v0    # "motionView":Landroid/view/View;
    .end local v2    # "x":F
    :pswitch_2
    iget-boolean v4, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v4, :cond_5

    .line 4996
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 5001
    :cond_5
    :pswitch_3
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    goto :goto_0

    .line 4968
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
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5007
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 5157
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 5159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 5160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5165
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5167
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5169
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5170
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mPointerCount:I

    .line 5179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 5181
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 5183
    :cond_2
    :goto_1
    return-void

    .line 5011
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5012
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5013
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_d

    .line 5014
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 5015
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5018
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 5019
    .local v16, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_8

    const/4 v10, 0x1

    .line 5020
    .local v10, "inList":Z
    :goto_2
    if-eqz v10, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_d

    .line 5021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 5022
    new-instance v17, Landroid/widget/AbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 5025
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 5026
    .local v14, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v13, v14, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 5027
    invoke-virtual {v14}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 5029
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5031
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 5032
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5034
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5035
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 5036
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5037
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 5038
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5039
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5040
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5041
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 5042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 5043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5044
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 5045
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5048
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 5049
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5051
    :cond_7
    new-instance v17, Landroid/widget/AbsListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 5063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 5019
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 5032
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 5066
    :cond_a
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5067
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5068
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5069
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_1

    .line 5073
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 5074
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 5079
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v16    # "x":F
    :cond_d
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5080
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 5083
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 5084
    .local v5, "childCount":I
    if-lez v5, :cond_14

    .line 5085
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v9

    .line 5086
    .local v9, "firstChildTop":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 5087
    .local v12, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 5088
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 5089
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_e

    if-lt v9, v7, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    if-gt v12, v0, :cond_e

    .line 5092
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5093
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5095
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5096
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5098
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5104
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_12

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    if-eq v12, v0, :cond_12

    .line 5109
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 5110
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5112
    :cond_11
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 5116
    :cond_12
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5117
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 5119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5121
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 5122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto/16 :goto_0

    .line 5127
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildBottom":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_14
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5128
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5135
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 5136
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 5140
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_16

    .line 5141
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5143
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5144
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5145
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5147
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5148
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_17

    .line 5149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 5151
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 5007
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

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7392
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7393
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7394
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7397
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7398
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7399
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7404
    :goto_0
    return-void

    .line 7402
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

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
    .line 2926
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2928
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 5456
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5457
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5458
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5460
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 3

    .prologue
    .line 8747
    const-string v0, "[registerDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    .line 8748
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8749
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 8752
    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_4

    .line 951
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 954
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 957
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 958
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 960
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 961
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 963
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 965
    :cond_4
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
    .line 8702
    .local p0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8703
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 8705
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8706
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8707
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 8709
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8715
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-object v2

    .line 8705
    .restart local v0    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8713
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 8715
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 31
    .param p1, "y"    # I

    .prologue
    .line 3928
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v30, p1, v3

    .line 3929
    .local v30, "rawDeltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v17, v30, v3

    .line 3930
    .local v17, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v18, p1, v3

    .line 3932
    .local v18, "incrementalDeltaY":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 3940
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3942
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3945
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    .line 3949
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_1

    .line 3951
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    .line 3952
    .local v29, "parent":Landroid/view/ViewParent;
    if-eqz v29, :cond_1

    .line 3953
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3958
    .end local v29    # "parent":Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_c

    .line 3959
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v19, v3, v4

    .line 3966
    .local v19, "motionIndex":I
    :goto_1
    const/16 v22, 0x0

    .line 3967
    .local v22, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3968
    .local v21, "motionView":Landroid/view/View;
    if-eqz v21, :cond_2

    .line 3969
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3973
    :cond_2
    const/16 v16, 0x0

    .line 3974
    .local v16, "atEdge":Z
    if-eqz v18, :cond_3

    .line 3975
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3979
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3980
    if-eqz v21, :cond_9

    .line 3983
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3984
    .local v23, "motionViewRealTop":I
    if-eqz v16, :cond_8

    .line 3987
    move/from16 v0, v18

    neg-int v3, v0

    sub-int v4, v23, v22

    sub-int v5, v3, v4

    .line 3989
    .local v5, "overscroll":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 3991
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 3993
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3994
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3998
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v28

    .line 3999
    .local v28, "overscrollMode":I
    if-eqz v28, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_8

    .line 4002
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 4005
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v27, v0

    .line 4008
    .local v27, "oldTouchMode":I
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4009
    if-lez v30, :cond_d

    .line 4012
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v3, :cond_6

    .line 4013
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    if-nez v3, :cond_6

    const/4 v3, 0x6

    move/from16 v0, v27

    if-eq v0, v3, :cond_6

    .line 4014
    const/16 v3, 0x4eac

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4015
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 4020
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4021
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    .line 4022
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4024
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4034
    .end local v5    # "overscroll":I
    .end local v27    # "oldTouchMode":I
    .end local v28    # "overscrollMode":I
    :cond_8
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 4036
    .end local v23    # "motionViewRealTop":I
    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 4104
    .end local v16    # "atEdge":Z
    .end local v19    # "motionIndex":I
    .end local v21    # "motionView":Landroid/view/View;
    .end local v22    # "motionViewPrevTop":I
    :cond_a
    :goto_3
    return-void

    .end local v18    # "incrementalDeltaY":I
    :cond_b
    move/from16 v18, v17

    .line 3930
    goto/16 :goto_0

    .line 3963
    .restart local v18    # "incrementalDeltaY":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .restart local v19    # "motionIndex":I
    goto/16 :goto_1

    .line 4025
    .restart local v5    # "overscroll":I
    .restart local v16    # "atEdge":Z
    .restart local v21    # "motionView":Landroid/view/View;
    .restart local v22    # "motionViewPrevTop":I
    .restart local v23    # "motionViewRealTop":I
    .restart local v27    # "oldTouchMode":I
    .restart local v28    # "overscrollMode":I
    :cond_d
    if-gez v30, :cond_8

    .line 4026
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4027
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e

    .line 4028
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4030
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 4038
    .end local v5    # "overscroll":I
    .end local v16    # "atEdge":Z
    .end local v19    # "motionIndex":I
    .end local v21    # "motionView":Landroid/view/View;
    .end local v22    # "motionViewPrevTop":I
    .end local v23    # "motionViewRealTop":I
    .end local v27    # "oldTouchMode":I
    .end local v28    # "overscrollMode":I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    .line 4039
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    .line 4040
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    .line 4041
    .local v26, "oldScroll":I
    sub-int v25, v26, v18

    .line 4042
    .local v25, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-le v0, v3, :cond_18

    const/16 v24, 0x1

    .line 4044
    .local v24, "newDirection":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_10

    .line 4045
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 4048
    :cond_10
    move/from16 v0, v18

    neg-int v8, v0

    .line 4049
    .local v8, "overScrollDistance":I
    if-gez v25, :cond_11

    if-gez v26, :cond_12

    :cond_11
    if-lez v25, :cond_19

    if-gtz v26, :cond_19

    .line 4050
    :cond_12
    move/from16 v0, v26

    neg-int v8, v0

    .line 4051
    add-int v18, v18, v8

    .line 4056
    :goto_5
    if-eqz v8, :cond_15

    .line 4057
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 4059
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v28

    .line 4060
    .restart local v28    # "overscrollMode":I
    if-eqz v28, :cond_13

    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_15

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_15

    .line 4063
    :cond_13
    if-lez v30, :cond_1a

    .line 4064
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4065
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_14

    .line 4066
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4068
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4079
    .end local v28    # "overscrollMode":I
    :cond_15
    :goto_6
    if-eqz v18, :cond_17

    .line 4081
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_16

    .line 4082
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollY:I

    .line 4083
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 4086
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 4088
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4092
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v20

    .line 4094
    .local v20, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4095
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v20, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 4096
    .restart local v21    # "motionView":Landroid/view/View;
    if-eqz v21, :cond_1c

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4097
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 4098
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4100
    .end local v20    # "motionPosition":I
    .end local v21    # "motionView":Landroid/view/View;
    :cond_17
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 4101
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_3

    .line 4042
    .end local v8    # "overScrollDistance":I
    .end local v24    # "newDirection":I
    :cond_18
    const/16 v24, -0x1

    goto/16 :goto_4

    .line 4053
    .restart local v8    # "overScrollDistance":I
    .restart local v24    # "newDirection":I
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 4069
    .restart local v28    # "overscrollMode":I
    :cond_1a
    if-gez v30, :cond_15

    .line 4070
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 4071
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 4072
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4074
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 4096
    .end local v28    # "overscrollMode":I
    .restart local v20    # "motionPosition":I
    .restart local v21    # "motionView":Landroid/view/View;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1745
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1748
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1695
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1696
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1702
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 1704
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1705
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1707
    :cond_1
    return-void

    .line 1697
    :cond_2
    if-eqz p1, :cond_0

    .line 1698
    new-instance v0, Landroid/widget/FastScroller;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 1699
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 7383
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7384
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7385
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 7387
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 7389
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 11
    .param p1, "y"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3883
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v1, p1, v7

    .line 3884
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3885
    .local v2, "distance":I
    iget v7, p0, Landroid/view/View;->mScrollY:I

    if-eqz v7, :cond_2

    move v5, v9

    .line 3886
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 3887
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3888
    if-eqz v5, :cond_3

    .line 3889
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3890
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3895
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3896
    invoke-virtual {p0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3897
    iget v7, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3898
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 3899
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3902
    :cond_1
    iget v7, p0, Landroid/widget/AbsListView;->mPointerCount:I

    if-le v7, v9, :cond_5

    .line 3908
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3909
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 3910
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3909
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v8

    .line 3885
    goto :goto_0

    .line 3892
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3893
    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 3913
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3916
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 3917
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 3918
    invoke-interface {v6, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3920
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    move v7, v9

    .line 3924
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_4
    return v7

    :cond_7
    move v7, v8

    goto :goto_4
.end method

.method private twNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1531
    const/4 v8, 0x0

    .line 1532
    .local v8, "handledNotifyMultiSelect":Z
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v7}, Landroid/widget/AdapterView;->twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v8

    .line 1534
    return v8
.end method

.method private unregisterMotionListener()V
    .locals 2

    .prologue
    .line 8758
    const-string v0, "[unregisterDoubleTapMotionListener]"

    invoke-static {v0}, Landroid/widget/AbsListView;->log(Ljava/lang/String;)V

    .line 8759
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 8760
    iget-object v0, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 8762
    :cond_0
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1543
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1544
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1545
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1547
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1548
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1549
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1551
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1552
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1547
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1545
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1553
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1554
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1557
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2043
    return-void
.end method


# virtual methods
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
    .line 5597
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5598
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5599
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5601
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 5612
    :cond_0
    return-void

    .line 5605
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 5606
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5607
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5608
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5610
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 5605
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 7844
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 7803
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6708
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6709
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 6721
    :cond_0
    :goto_0
    return v6

    .line 6713
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6714
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 6715
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 6716
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6717
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 6718
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

    .line 6720
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6721
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
    .line 7716
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 7872
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1353
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1356
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1357
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 7765
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 7766
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7767
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7768
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7769
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7772
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2422
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2423
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2424
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2425
    mul-int/lit8 v2, v1, 0x64

    .line 2427
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2428
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2429
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2430
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2431
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2434
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2435
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2436
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2437
    if-lez v3, :cond_1

    .line 2438
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2446
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 2443
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 2446
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2451
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2452
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2453
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2454
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2455
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2456
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2457
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2458
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2459
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

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

    .line 2475
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 2464
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2465
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2466
    const/4 v4, 0x0

    .line 2472
    .local v4, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2467
    .end local v4    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2468
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_1

    .line 2470
    .end local v4    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2481
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2482
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2483
    .local v0, "result":I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2485
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

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

    .line 2490
    :cond_0
    :goto_0
    return v0

    .line 2488
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 7157
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7159
    const/4 v7, 0x0

    .line 7160
    .local v7, "checkedCountChanged":Z
    const/4 v8, 0x0

    .local v8, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 7161
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 7162
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 7164
    .local v3, "lastPos":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 7165
    .local v11, "lastPosId":J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 7167
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 7168
    .local v16, "start":I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 7169
    .local v9, "end":I
    const/4 v10, 0x0

    .line 7170
    .local v10, "found":Z
    move/from16 v15, v16

    .local v15, "searchPos":I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 7171
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 7172
    .local v13, "searchId":J
    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    .line 7173
    const/4 v10, 0x1

    .line 7174
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7175
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7180
    .end local v13    # "searchId":J
    :cond_0
    if-nez v10, :cond_1

    .line 7181
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7182
    add-int/lit8 v8, v8, -0x1

    .line 7183
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 7184
    const/4 v7, 0x1

    .line 7185
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 7186
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7160
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 7170
    .restart local v9    # "end":I
    .restart local v10    # "found":Z
    .restart local v13    # "searchId":J
    .restart local v15    # "searchPos":I
    .restart local v16    # "start":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 7191
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v13    # "searchId":J
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 7195
    .end local v3    # "lastPos":I
    .end local v4    # "id":J
    .end local v11    # "lastPosId":J
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 7196
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 7198
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3446
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 8017
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8018
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4443
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 4445
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 4446
    .local v4, "cd":Landroid/content/ClipDescription;
    if-eqz v4, :cond_0

    const-string v13, "cropUri"

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 4447
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    .line 4603
    :goto_0
    return v13

    .line 4451
    :cond_1
    const/4 v13, 0x1

    if-ne v1, v13, :cond_4

    .line 4452
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_2

    .line 4453
    const/4 v13, 0x1

    const/high16 v14, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 4457
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    .line 4460
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 4461
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 4462
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4463
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 4464
    .local v7, "contentBottom":I
    const/4 v9, 0x0

    .line 4465
    .local v9, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 4469
    .local v8, "count":I
    if-eqz v6, :cond_5

    .line 4470
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 4474
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v13, v14, :cond_f

    const/4 v2, 0x1

    .line 4476
    .local v2, "canScrollDown":Z
    :goto_1
    if-nez v2, :cond_7

    if-lez v8, :cond_7

    .line 4477
    add-int/lit8 v13, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4478
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_10

    :cond_6
    const/4 v2, 0x1

    .line 4483
    .end local v5    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v13, :cond_11

    const/4 v3, 0x1

    .line 4485
    .local v3, "canScrollUp":Z
    :goto_3
    if-nez v3, :cond_8

    .line 4486
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 4487
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4488
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_12

    const/4 v3, 0x1

    .line 4493
    .end local v5    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-le v12, v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v7, v13

    if-lt v12, v13, :cond_a

    :cond_9
    if-lez v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v13

    if-gt v11, v13, :cond_a

    if-nez v3, :cond_13

    if-nez v2, :cond_13

    .line 4496
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 4497
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 4500
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_d

    .line 4501
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4504
    :cond_d
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4505
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4506
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4509
    const/4 v13, 0x2

    if-ne v1, v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_e

    .line 4510
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4511
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4514
    :cond_e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4474
    .end local v2    # "canScrollDown":Z
    .end local v3    # "canScrollUp":Z
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4478
    .restart local v2    # "canScrollDown":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 4483
    .end local v5    # "child":Landroid/view/View;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 4488
    .restart local v3    # "canScrollUp":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_12
    const/4 v3, 0x0

    goto :goto_4

    .line 4518
    .end local v5    # "child":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v13, :cond_14

    .line 4519
    new-instance v13, Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4521
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_15

    .line 4522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4524
    :cond_15
    packed-switch v1, :pswitch_data_0

    .line 4603
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4526
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4527
    if-ltz v12, :cond_17

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_17

    .line 4529
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4530
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4532
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 4533
    .local v10, "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->what:I

    .line 4534
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4535
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4537
    .end local v10    # "msg":Landroid/os/Message;
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v7, v13

    if-lt v12, v13, :cond_16

    if-gt v12, v7, :cond_16

    .line 4539
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4540
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4542
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 4543
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->what:I

    .line 4544
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4545
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 4551
    .end local v10    # "msg":Landroid/os/Message;
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_18

    .line 4552
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4555
    :cond_18
    if-ltz v12, :cond_19

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_19

    .line 4557
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4558
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4560
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 4561
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->what:I

    .line 4562
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4563
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4565
    .end local v10    # "msg":Landroid/os/Message;
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v7, v13

    if-lt v12, v13, :cond_16

    if-gt v12, v7, :cond_16

    .line 4567
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4568
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4570
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 4571
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v10, Landroid/os/Message;->what:I

    .line 4572
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4573
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 4580
    .end local v10    # "msg":Landroid/os/Message;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_1a

    .line 4581
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4582
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 4588
    :cond_1a
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 4589
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 4591
    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 4593
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4594
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4595
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4596
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4524
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
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 2932
    const/4 v3, 0x0

    .line 2933
    .local v3, "saveCount":I
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_5

    move v1, v7

    .line 2934
    .local v1, "clipToPadding":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2935
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2936
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 2937
    .local v4, "scrollX":I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 2938
    .local v5, "scrollY":I
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/view/View;->mRight:I

    add-int/2addr v10, v4

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v11, v5

    iget v12, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2941
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, -0x23

    iput v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2944
    .end local v4    # "scrollX":I
    .end local v5    # "scrollY":I
    :cond_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2945
    .local v2, "drawSelectorOnTop":Z
    if-nez v2, :cond_1

    .line 2946
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2949
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2951
    if-eqz v2, :cond_2

    .line 2952
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2955
    :cond_2
    if-eqz v1, :cond_3

    .line 2956
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2957
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v8, v8, 0x22

    iput v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2960
    :cond_3
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-ne v8, v7, :cond_4

    .line 2961
    iget v8, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    if-nez v8, :cond_6

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    if-nez v8, :cond_6

    .line 2995
    :cond_4
    :goto_1
    return-void

    .end local v1    # "clipToPadding":Z
    .end local v2    # "drawSelectorOnTop":Z
    :cond_5
    move v1, v0

    .line 2933
    goto :goto_0

    .line 2964
    .restart local v1    # "clipToPadding":Z
    .restart local v2    # "drawSelectorOnTop":Z
    :cond_6
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    if-nez v8, :cond_8

    .line 2965
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_7

    .line 2966
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 2967
    iget-object v7, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevTop:I

    .line 2968
    iget-object v7, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevPosition:I

    .line 2990
    :cond_7
    :goto_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    iget v8, p0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    iget v9, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    iget v10, p0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    iget v11, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2991
    iget-object v7, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/AbsListView;->mTwDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2992
    iget-object v7, p0, Landroid/widget/AbsListView;->mTwDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 2971
    :cond_8
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, p0, :cond_9

    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    iget v9, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevPosition:I

    if-ne v8, v9, :cond_9

    move v0, v7

    .line 2972
    .local v0, "childIsSafeToTrack":Z
    :cond_9
    if-eqz v0, :cond_d

    .line 2973
    iget-object v8, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2974
    .local v6, "top":I
    iget v8, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v8, v7, :cond_a

    iget v8, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-ne v8, v13, :cond_7

    .line 2975
    :cond_a
    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevTop:I

    if-eq v6, v8, :cond_7

    .line 2976
    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevTop:I

    sub-int v8, v6, v8

    iput v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildScrolldeltaY:I

    .line 2977
    iput v6, p0, Landroid/widget/AbsListView;->mTwTrackedChildPrevTop:I

    .line 2979
    iget v8, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v8, v13, :cond_b

    iget v8, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-ne v8, v7, :cond_7

    :cond_b
    iget v7, p0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_c

    iget v7, p0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    if-ltz v7, :cond_7

    .line 2980
    :cond_c
    iget v7, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    iget v8, p0, Landroid/widget/AbsListView;->mTwTrackedChildScrolldeltaY:I

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mTwDragStartY:I

    goto :goto_2

    .line 2986
    .end local v6    # "top":I
    :cond_d
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    goto :goto_2
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4200
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

    .line 4201
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

    .line 4204
    .local v10, "isHoverListScrollOn":Z
    :goto_1
    const/4 v13, 0x0

    .line 4205
    .local v13, "isMouseHoveringOn":Z
    const/4 v12, 0x0

    .line 4214
    .local v12, "isMouseHoverListScrollOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 4215
    new-instance v19, Landroid/widget/AbsListView$HoverScrollHandler;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4217
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->isHoveringUIEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

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

    .line 4223
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    .line 4430
    :goto_2
    return v19

    .line 4200
    .end local v10    # "isHoverListScrollOn":Z
    .end local v11    # "isHoveringOn":Z
    .end local v12    # "isMouseHoverListScrollOn":Z
    .end local v13    # "isMouseHoveringOn":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 4201
    .restart local v11    # "isHoveringOn":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 4226
    .restart local v10    # "isHoverListScrollOn":Z
    .restart local v12    # "isMouseHoverListScrollOn":Z
    .restart local v13    # "isMouseHoveringOn":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 4227
    .local v17, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 4228
    .local v18, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 4229
    .local v6, "childCount":I
    const/4 v7, 0x0

    .line 4230
    .local v7, "contentBottom":I
    const/4 v15, 0x0

    .line 4231
    .local v15, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 4235
    .local v8, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    if-gtz v19, :cond_7

    .line 4236
    :cond_6
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight_DP:I

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

    iput v0, v1, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 4244
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight_DP:I

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

    iput v0, v1, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 4253
    :cond_7
    if-eqz v6, :cond_8

    .line 4254
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 4258
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

    const/4 v3, 0x1

    .line 4260
    .local v3, "canScrollDown":Z
    :goto_3
    if-nez v3, :cond_a

    if-lez v8, :cond_a

    .line 4261
    add-int/lit8 v19, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4262
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_14

    :cond_9
    const/4 v3, 0x1

    .line 4267
    .end local v5    # "child":Landroid/view/View;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-lez v19, :cond_15

    const/4 v4, 0x1

    .line 4269
    .local v4, "canScrollUp":Z
    :goto_5
    if-nez v4, :cond_b

    .line 4270
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    if-lez v19, :cond_b

    .line 4271
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4272
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    const/4 v4, 0x1

    .line 4276
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

    .line 4284
    .local v14, "isPossibleTooltype":Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    :cond_c
    if-lez v17, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_f

    if-nez v4, :cond_d

    if-eqz v3, :cond_f

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

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLockScreenMode()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 4287
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 4288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 4290
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_0
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4296
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_12

    .line 4297
    :cond_11
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4299
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_1
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4305
    :cond_12
    :goto_9
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4306
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4307
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4309
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_2

    .line 4258
    .end local v3    # "canScrollDown":Z
    .end local v4    # "canScrollUp":Z
    .end local v14    # "isPossibleTooltype":Z
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 4262
    .restart local v3    # "canScrollDown":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 4267
    .end local v5    # "child":Landroid/view/View;
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 4272
    .restart local v4    # "canScrollUp":Z
    .restart local v5    # "child":Landroid/view/View;
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 4276
    .end local v5    # "child":Landroid/view/View;
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 4291
    .restart local v14    # "isPossibleTooltype":Z
    :catch_0
    move-exception v9

    .line 4292
    .local v9, "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4300
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 4301
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4312
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_19

    .line 4313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    .line 4316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4321
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 4430
    :cond_1a
    :goto_a
    :pswitch_0
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 4323
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4325
    if-ltz v18, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1b

    .line 4327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 4328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4330
    const/16 v19, 0xb

    const/16 v20, -0x1

    :try_start_2
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4334
    :goto_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4335
    .local v16, "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4336
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 4331
    .end local v16    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v9

    .line 4332
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 4339
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1a

    move/from16 v0, v18

    if-gt v0, v7, :cond_1a

    .line 4341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 4342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4344
    const/16 v19, 0xf

    const/16 v20, -0x1

    :try_start_3
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4348
    :goto_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4349
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4350
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4345
    .end local v16    # "msg":Landroid/os/Message;
    :catch_3
    move-exception v9

    .line 4346
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4358
    .end local v9    # "e":Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_1c

    .line 4359
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4360
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4361
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_2

    .line 4364
    :cond_1c
    if-ltz v18, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1f

    .line 4366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 4367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4370
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 4372
    :cond_1d
    const/16 v19, 0xb

    const/16 v20, -0x1

    :try_start_4
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4378
    :cond_1e
    :goto_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4379
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4380
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4373
    .end local v16    # "msg":Landroid/os/Message;
    :catch_4
    move-exception v9

    .line 4374
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_UP"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4383
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1a

    move/from16 v0, v18

    if-gt v0, v7, :cond_1a

    .line 4385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 4386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    .line 4391
    :cond_20
    const/16 v19, 0xf

    const/16 v20, -0x1

    :try_start_5
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4397
    :cond_21
    :goto_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 4398
    .restart local v16    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 4399
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a

    .line 4392
    .end local v16    # "msg":Landroid/os/Message;
    :catch_5
    move-exception v9

    .line 4393
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SCROLL_DOWN"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4406
    .end local v9    # "e":Landroid/os/RemoteException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 4407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 4411
    :cond_22
    const/16 v19, 0x1

    const/16 v20, -0x1

    :try_start_6
    invoke-static/range {v19 .. v20}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 4416
    :goto_f
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 4417
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 4418
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 4419
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 4421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_23

    .line 4422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4425
    :cond_23
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    goto/16 :goto_2

    .line 4412
    :catch_6
    move-exception v9

    .line 4413
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v19, "AbsListView"

    const-string v20, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4321
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
    .line 3780
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4610
    const/4 v12, 0x0

    .line 4612
    .local v12, "isSameValueExist":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 4613
    .local v16, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 4614
    .local v17, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 4616
    .local v9, "contentBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 4617
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:[I

    .line 4619
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 4620
    new-instance v18, Landroid/widget/AbsListView$HoverScrollHandler;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 4622
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    .line 4778
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    return v18

    .line 4624
    :sswitch_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 4625
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 4626
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart()V

    .line 4627
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 4629
    if-ltz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    .line 4631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_2

    .line 4632
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4633
    .local v15, "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4634
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4635
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4637
    .end local v15    # "msg":Landroid/os/Message;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    move/from16 v0, v17

    if-gt v0, v9, :cond_2

    .line 4639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_2

    .line 4640
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4641
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4642
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 4650
    .end local v15    # "msg":Landroid/os/Message;
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 4651
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 4652
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 4653
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStart()V

    .line 4654
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 4657
    :cond_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 4658
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 4659
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    .line 4660
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 4662
    .local v10, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 4663
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 4664
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 4665
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v18, v0

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 4667
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v10, :cond_16

    .line 4668
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4669
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 4670
    .local v6, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4671
    .local v8, "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    .line 4672
    .local v7, "childRight":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 4674
    .local v5, "childBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v6, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v8, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v7, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v0, v5, :cond_b

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v6, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v0, v7, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v6, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v6, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v7, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v7, :cond_13

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v8, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v0, v5, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v8, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v0, v8, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v5, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v5, :cond_13

    .line 4678
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    .line 4680
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_11

    .line 4681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:[I

    move-object/from16 v18, v0

    aget v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 4682
    const/4 v12, 0x1

    .line 4680
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 4662
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    .end local v11    # "i":I
    .end local v13    # "j":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndX:I

    move/from16 v18, v0

    goto/16 :goto_1

    .line 4663
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragEndY:I

    move/from16 v18, v0

    goto/16 :goto_2

    .line 4664
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartX:I

    move/from16 v18, v0

    goto/16 :goto_3

    .line 4665
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragStartY:I

    move/from16 v18, v0

    goto/16 :goto_4

    .line 4687
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childBottom":I
    .restart local v6    # "childLeft":I
    .restart local v7    # "childRight":I
    .restart local v8    # "childTop":I
    .restart local v11    # "i":I
    .restart local v13    # "j":I
    :cond_11
    if-nez v12, :cond_12

    .line 4688
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 4689
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/AdapterView;->mSelectedRowId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 4690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    move/from16 v20, v0

    aput v20, v18, v19

    .line 4691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    .line 4712
    :cond_12
    const/4 v12, 0x0

    .line 4667
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 4695
    .end local v13    # "j":I
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    .line 4698
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_12

    .line 4699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:[I

    move-object/from16 v18, v0

    aget v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 4700
    const/4 v12, 0x1

    .line 4702
    move v14, v13

    .local v14, "k":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_14

    .line 4703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemArray:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, 0x1

    aget v19, v19, v20

    aput v19, v18, v14

    .line 4702
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 4705
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    .line 4706
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 4707
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/AdapterView;->mSelectedRowId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 4698
    .end local v14    # "k":I
    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 4715
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    .end local v13    # "j":I
    :cond_16
    if-ltz v17, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_18

    .line 4717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_17

    .line 4718
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4719
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4720
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4738
    .end local v15    # "msg":Landroid/os/Message;
    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 4739
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 4723
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_19

    move/from16 v0, v17

    if-gt v0, v9, :cond_19

    .line 4725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_17

    .line 4726
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v15

    .line 4727
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 4728
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 4729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 4733
    .end local v15    # "msg":Landroid/os/Message;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 4734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9

    .line 4745
    .end local v10    # "count":I
    .end local v11    # "i":I
    :sswitch_2
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->twNotifyMultiSelectedStop()V

    .line 4746
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 4748
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedViewIndex:I

    .line 4750
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartX:I

    .line 4751
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragStartY:I

    .line 4752
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndX:I

    .line 4753
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragEndY:I

    .line 4755
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockLeft:I

    .line 4756
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockTop:I

    .line 4757
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockRight:I

    .line 4758
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragBlockBottom:I

    .line 4760
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwDragSelectedItemCount:I

    .line 4761
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTwTrackedChild:Landroid/view/View;

    .line 4762
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTwTrackedChildScrolldeltaY:I

    .line 4765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 4766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 4769
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 4770
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 4622
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 5393
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5394
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v8, :cond_3

    .line 5395
    iget v6, p0, Landroid/view/View;->mScrollY:I

    .line 5396
    .local v6, "scrollY":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_1

    .line 5397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5398
    .local v4, "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v3, v8, v9

    .line 5399
    .local v3, "leftPadding":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int v5, v8, v9

    .line 5400
    .local v5, "rightPadding":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int v7, v8, v5

    .line 5402
    .local v7, "width":I
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v6

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5403
    .local v1, "edgeY":I
    int-to-float v8, v3

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5404
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5405
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5406
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v3, v1}, Landroid/widget/EdgeEffect;->setPosition(II)V

    .line 5407
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v10}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 5409
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5411
    .end local v1    # "edgeY":I
    .end local v3    # "leftPadding":I
    .end local v4    # "restoreCount":I
    .end local v5    # "rightPadding":I
    .end local v7    # "width":I
    :cond_1
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 5412
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 5413
    .restart local v4    # "restoreCount":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v3, v8, v9

    .line 5414
    .restart local v3    # "leftPadding":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget v9, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int v5, v8, v9

    .line 5415
    .restart local v5    # "rightPadding":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    sub-int v7, v8, v5

    .line 5416
    .restart local v7    # "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 5418
    .local v2, "height":I
    neg-int v8, v7

    add-int v0, v8, v3

    .line 5419
    .local v0, "edgeX":I
    iget v8, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5420
    .restart local v1    # "edgeY":I
    int-to-float v8, v0

    int-to-float v9, v1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5421
    const/high16 v8, 0x43340000    # 180.0f

    int-to-float v9, v7

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5422
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, v7, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5423
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5425
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    add-int v9, v0, v7

    invoke-virtual {v8, v9, v1}, Landroid/widget/EdgeEffect;->setPosition(II)V

    .line 5426
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EdgeEffect;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 5428
    :cond_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5431
    .end local v0    # "edgeX":I
    .end local v1    # "edgeY":I
    .end local v2    # "height":I
    .end local v3    # "leftPadding":I
    .end local v4    # "restoreCount":I
    .end local v5    # "rightPadding":I
    .end local v6    # "scrollY":I
    .end local v7    # "width":I
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3218
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 3219
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3220
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 8779
    .line 8780
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8782
    return-void
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 7010
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7011
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 7016
    :cond_0
    :goto_0
    return v1

    .line 7015
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 7016
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
    .line 1952
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1962
    .end local p0    # "this":Landroid/widget/AbsListView;
    :goto_0
    return-object p0

    .line 1959
    .restart local p0    # "this":Landroid/widget/AbsListView;
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1960
    const/4 p0, 0x0

    goto :goto_0

    .line 1962
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 7856
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 7862
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 7867
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2512
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2513
    .local v1, "count":I
    invoke-super {p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2514
    .local v2, "fadeEdge":F
    if-nez v1, :cond_1

    .line 2524
    .end local v2    # "fadeEdge":F
    :cond_0
    :goto_0
    return v2

    .line 2517
    .restart local v2    # "fadeEdge":F
    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2518
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2521
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2522
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2523
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2524
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 3019
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
    .line 7933
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1331
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1332
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1343
    :cond_1
    return-object v3

    .line 1335
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1336
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1337
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1339
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1340
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1299
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1300
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1303
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1316
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1565
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3629
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2028
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2029
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2032
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2033
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2038
    :goto_0
    return-void

    .line 2036
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 6953
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 6943
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 3004
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
    .line 2669
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2681
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2693
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2657
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 3014
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
    .line 2641
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2642
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2644
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3145
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 7901
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2354
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2357
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2495
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2496
    .local v0, "count":I
    invoke-super {p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2497
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2506
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2500
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2501
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2504
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2505
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2506
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 3009
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
    .line 1020
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 7896
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1773
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1776
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 7202
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 7203
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 7204
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 7207
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 7209
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    new-array v10, v10, [I

    iput-object v10, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    .line 7210
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 7211
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 7215
    :cond_0
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7216
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 7220
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7222
    if-lez v1, :cond_f

    .line 7227
    iget-boolean v10, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 7229
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 7230
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7232
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 7233
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7349
    :cond_2
    :goto_0
    return-void

    .line 7235
    :cond_3
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 7236
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 7237
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 7238
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .line 7241
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7242
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 7243
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7244
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7245
    .local v2, "lastBottom":I
    :goto_1
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_6

    if-gt v2, v5, :cond_6

    .line 7247
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2    # "lastBottom":I
    :cond_5
    move v2, v5

    .line 7244
    goto :goto_1

    .line 7252
    .restart local v2    # "lastBottom":I
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 7255
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_7
    iget v10, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 7303
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 7305
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 7308
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 7309
    add-int/lit8 v6, v1, -0x1

    .line 7311
    :cond_9
    if-gez v6, :cond_a

    .line 7312
    const/4 v6, 0x0

    .line 7316
    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7318
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 7319
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7257
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 7262
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7263
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_0

    .line 7269
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v6

    .line 7270
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 7272
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7273
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 7275
    iput v6, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 7277
    iget-wide v8, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 7280
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7288
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7284
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_2

    .line 7296
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7297
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto/16 :goto_0

    .line 7323
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7324
    if-ltz v7, :cond_f

    .line 7325
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7332
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 7340
    :cond_f
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7341
    iput v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 7342
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 7343
    iput v13, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 7344
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 7345
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 7346
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 7347
    iput v13, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 7348
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    .line 7340
    goto :goto_3

    .line 7255
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
    .line 7778
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 6967
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 6968
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 6969
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6971
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 6972
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6974
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 6975
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 6976
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 6978
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7023
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 7024
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 7025
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7026
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7027
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1875
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1878
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1879
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1881
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1882
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1764
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v2, :cond_2

    .line 1765
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1767
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1765
    goto :goto_0

    .line 1767
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v2}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

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
    .line 1787
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1788
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1790
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7463
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1282
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 8

    .prologue
    .line 4147
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 4148
    .local v4, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v3, 0x0

    .line 4149
    .local v3, "isLockState":Z
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 4151
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 4152
    .local v5, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 4153
    .local v1, "isCoverOpen":Z
    if-eqz v5, :cond_0

    .line 4155
    :try_start_0
    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4161
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 4162
    .local v2, "isLockScreenAndCoverOpen":Z
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 4164
    :goto_1
    return v2

    .line 4156
    .end local v2    # "isLockScreenAndCoverOpen":Z
    :catch_0
    move-exception v0

    .line 4157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "AbsListView"

    const-string v7, "isLockScreenMode() : failed to windowManager.isCoverOpen()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4162
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "isLockScreenAndCoverOpen":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 8921
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 1846
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
    .line 2999
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
    .line 1976
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1858
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2053
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2023
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isTwShowingScrollbar()Z
    .locals 1

    .prologue
    .line 6542
    invoke-super {p0}, Landroid/view/View;->isTwShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

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
    .line 6553
    const/4 v0, 0x1

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1816
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3263
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 3264
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3265
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3153
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3188
    :cond_0
    :goto_0
    return-void

    .line 3157
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3158
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3159
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3162
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3164
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3165
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3166
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3168
    :cond_3
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3170
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    .line 3171
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3172
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3173
    if-eqz v1, :cond_6

    .line 3174
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3180
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3181
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5

    .line 3182
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 3184
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3185
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3177
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
    .line 2602
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

    .line 2709
    const-string/jumbo v5, "obtainView"

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2711
    aput-boolean v6, p2, v6

    .line 2714
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v2

    .line 2715
    .local v2, "scrapView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 2716
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2720
    :cond_0
    if-eqz v2, :cond_b

    .line 2721
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2723
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_2

    .line 2790
    :cond_1
    :goto_0
    return-object v4

    .line 2726
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 2727
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2730
    :cond_3
    if-eq v0, v2, :cond_9

    .line 2731
    invoke-virtual {v2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2732
    invoke-virtual {v2}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2733
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2735
    :cond_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v4, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2736
    iget v4, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v4, :cond_5

    .line 2737
    iget v4, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2765
    :cond_5
    :goto_1
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_6

    .line 2766
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2768
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_d

    .line 2769
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2775
    .local v1, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2776
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2779
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2780
    iget-object v4, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v4, :cond_7

    .line 2781
    new-instance v4, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2783
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    if-nez v4, :cond_8

    .line 2784
    iget-object v4, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2788
    :cond_8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move-object v4, v0

    .line 2790
    goto :goto_0

    .line 2740
    :cond_9
    aput-boolean v7, p2, v6

    .line 2744
    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2745
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2748
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    .line 2751
    .end local v0    # "child":Landroid/view/View;
    :cond_b
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2753
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2756
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_c

    .line 2757
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2760
    :cond_c
    iget v4, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v4, :cond_5

    .line 2761
    iget v4, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_1

    .line 2770
    .restart local v3    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 2771
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_2

    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    move-object v1, v3

    .line 2773
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3269
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 3271
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3272
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3275
    iget-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 3276
    iget-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3280
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_1

    .line 3281
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3284
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_2

    .line 3285
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3286
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3289
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3290
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 3291
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 3293
    :cond_2
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3451
    invoke-super {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    .line 3452
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3453
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3455
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3456
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3458
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3459
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3461
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3462
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3464
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 3225
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3227
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3253
    :cond_0
    :goto_0
    return-object v3

    .line 3233
    :cond_1
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3238
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3239
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3240
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3241
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3242
    move v0, v2

    .line 3248
    :cond_2
    if-ltz v0, :cond_0

    .line 3249
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3240
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7558
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7559
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7560
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7561
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 7563
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7564
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7565
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 7567
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

    .line 3297
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3298
    const-string v1, "AbsListView"

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3304
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3306
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3307
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3308
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3309
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3310
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3313
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3314
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3315
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3318
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3319
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3320
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3323
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3324
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3325
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3328
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3329
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3332
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3333
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3336
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3337
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3340
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3341
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3344
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3345
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3346
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3349
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v1, v4, :cond_9

    .line 3350
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3354
    :cond_9
    iget-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3355
    iget-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3359
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3360
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 7353
    invoke-super {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 7354
    sparse-switch p1, :sswitch_data_0

    .line 7366
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 7367
    return-void

    .line 7356
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7357
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 7361
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7362
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 7366
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7354
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
    .line 7848
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 7849
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7850
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 7852
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2362
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2363
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2364
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2368
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 2369
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2371
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2374
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    .line 2378
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChangedForAccessibility()V

    .line 2381
    :cond_2
    if-nez p1, :cond_3

    .line 2382
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 2384
    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 5374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5388
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 5376
    :pswitch_0
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 5377
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 5378
    .local v1, "vscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 5379
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 5380
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5381
    const/4 v2, 0x1

    goto :goto_0

    .line 5374
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 7783
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7785
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 7786
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 7795
    :cond_0
    :goto_0
    return-void

    .line 7790
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7791
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1905
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1906
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1907
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 1911
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1912
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1913
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1914
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1915
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1916
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1918
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1919
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1920
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1923
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

    .line 2874
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2875
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2901
    :cond_0
    :goto_0
    return-void

    .line 2880
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2881
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 2885
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 2886
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2887
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2892
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2893
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2894
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2897
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2898
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2899
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2889
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5472
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5473
    const/4 v0, 0x1

    .line 5476
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

    .line 5481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5484
    .local v0, "action":I
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v9, :cond_0

    .line 5485
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 5488
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_2

    .line 5567
    :cond_1
    :goto_0
    return v7

    .line 5496
    :cond_2
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v8

    .line 5497
    goto :goto_0

    .line 5500
    :cond_3
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5502
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5503
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_4

    const/4 v9, 0x5

    if-ne v3, v9, :cond_5

    .line 5504
    :cond_4
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move v7, v8

    .line 5505
    goto :goto_0

    .line 5508
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 5509
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 5510
    .local v6, "y":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5512
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 5513
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_6

    if-ltz v1, :cond_6

    .line 5516
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5517
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5518
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 5519
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5520
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5521
    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5522
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5524
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    const/high16 v9, -0x80000000

    iput v9, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 5525
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 5526
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5527
    if-ne v3, v11, :cond_1

    move v7, v8

    .line 5528
    goto :goto_0

    .line 5534
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 5536
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 5537
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_7

    .line 5538
    const/4 v2, 0x0

    .line 5539
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5541
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 5542
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 5543
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5544
    invoke-direct {p0, v6}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 5545
    goto/16 :goto_0

    .line 5554
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    iput v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5555
    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 5556
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5557
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5562
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 5500
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

    .line 5534
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

    .line 3674
    sparse-switch p1, :sswitch_data_0

    .line 3685
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3677
    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 3681
    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 3674
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

    .line 3690
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3691
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3693
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3694
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3773
    :goto_0
    return v3

    .line 3697
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3701
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3702
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3703
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v5, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3704
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3706
    :cond_1
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 3711
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 3773
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 3717
    :sswitch_0
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_4

    .line 3718
    iget v4, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    if-nez v4, :cond_6

    .line 3719
    iput p1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3725
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 3729
    iget v4, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3731
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-ne v4, v3, :cond_5

    if-eqz v1, :cond_5

    .line 3732
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 3733
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3734
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3735
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 3736
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 3737
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 3738
    iget v3, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 3747
    :cond_5
    :goto_3
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 3748
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    goto :goto_1

    .line 3721
    :cond_6
    iput p1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 3740
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3741
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3742
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->twNotifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 3743
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 3755
    :sswitch_1
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_1

    .line 3759
    :sswitch_2
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 3760
    iput v7, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 3761
    iput v7, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 3762
    iput v6, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 3763
    iput v6, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto/16 :goto_1

    .line 3766
    :sswitch_3
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-ne v4, v3, :cond_3

    .line 3767
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto/16 :goto_1

    .line 3711
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
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2558
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2559
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2560
    if-eqz p1, :cond_1

    .line 2561
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2562
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2563
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2565
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2568
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v3, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_3

    .line 2569
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/FastScroller;->onItemCountChanged(I)V

    .line 2572
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2573
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2575
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2576
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2531
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2532
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2534
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2535
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2536
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2537
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2538
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2541
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2542
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2543
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2544
    .local v3, "listBottom":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2545
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2546
    .local v1, "lastBottom":I
    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2550
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .line 2545
    goto :goto_0

    .line 2546
    .restart local v1    # "lastBottom":I
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
    .line 5362
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 5363
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 5364
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 5365
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 5367
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 5369
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8025
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 8026
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8027
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 8028
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 8029
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 8036
    :cond_0
    :goto_0
    return v0

    .line 8032
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 8033
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 8034
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 8049
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2269
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 2271
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2272
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2274
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 2276
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    .line 2277
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2278
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2279
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2280
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2281
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2282
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 2296
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2298
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2299
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2302
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2303
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2306
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 2308
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2310
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2313
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2314
    return-void

    .line 2283
    :cond_4
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 2284
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2286
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2287
    iput v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2288
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2289
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2290
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2291
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2292
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2293
    iput v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3428
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 3429
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3430
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3432
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 2177
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2179
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2181
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2183
    .local v8, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v12, :cond_1

    .line 2185
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2186
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v12, v12, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2187
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2188
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->position:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2189
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->height:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2190
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2191
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v12, v12, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2192
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v12, v12, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2193
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2194
    iget-object v12, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v12, v12, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2264
    :cond_0
    :goto_0
    return-object v8

    .line 2198
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_4

    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v12, :cond_4

    const/4 v3, 0x1

    .line 2199
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v6

    .line 2200
    .local v6, "selectedId":J
    iput-wide v6, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2201
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2203
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_5

    .line 2205
    iget v12, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2206
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2207
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2234
    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2235
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v12, :cond_2

    .line 2236
    iget-object v10, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2237
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 2238
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2239
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_2

    .line 2240
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2245
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_2
    iget v12, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    iget-object v12, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2247
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_3

    .line 2248
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2250
    :cond_3
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_a

    .line 2251
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2252
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2253
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_9

    .line 2254
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2253
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2198
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2209
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_5
    if-eqz v3, :cond_7

    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v12, :cond_7

    .line 2219
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2220
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2221
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2222
    .local v2, "firstPos":I
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v2, v12, :cond_6

    .line 2223
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2225
    :cond_6
    iput v2, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2226
    iget-object v12, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_2

    .line 2228
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2229
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2230
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2245
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 2256
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iput-object v5, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2258
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_a
    iget v12, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2260
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v12, :cond_0

    .line 2261
    iget-object v12, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3024
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3025
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3026
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 3029
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 3030
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 3032
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

    .line 7812
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7813
    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7814
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7815
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 7816
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 7818
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 7819
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 7825
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 7826
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 7828
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 7829
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 7836
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 7820
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 7822
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 7823
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 7831
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

    .line 4787
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    if-eqz v10, :cond_0

    .line 4788
    iget-object v10, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v10, :cond_0

    .line 4789
    iget-object v10, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v11, p0, Landroid/widget/AbsListView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v10, v11, v9}, Landroid/hardware/motion/MotionRecognitionManager;->setMotionAngle(Landroid/hardware/motion/MRListener;I)V

    .line 4793
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 4796
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move v8, v9

    .line 4882
    :cond_2
    :goto_0
    return v8

    .line 4799
    :cond_3
    iget-object v10, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v10, :cond_4

    .line 4800
    iget-object v10, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v10}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4803
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4811
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v10, :cond_5

    .line 4812
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 4813
    .local v4, "intercepted":Z
    if-eqz v4, :cond_5

    move v8, v9

    .line 4814
    goto :goto_0

    .line 4818
    .end local v4    # "intercepted":Z
    :cond_5
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4819
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4822
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v8, v9

    .line 4882
    goto :goto_0

    .line 4824
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4829
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4834
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 4839
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_1

    .line 4844
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4845
    iget v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4846
    .local v6, "x":I
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4847
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 4848
    .local v5, "motionPosition":I
    if-ltz v5, :cond_6

    .line 4850
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4851
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4852
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4854
    .end local v1    # "child":Landroid/view/View;
    :cond_6
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4855
    iget v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_1

    .line 4861
    .end local v5    # "motionPosition":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 4862
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 4863
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v6, v10

    .line 4864
    .restart local v6    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 4865
    .restart local v7    # "y":I
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4866
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4867
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4868
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4869
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 4870
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_7

    .line 4872
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4873
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4874
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4876
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4877
    iget v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_1

    .line 4822
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
    .line 4108
    if-eqz p1, :cond_2

    .line 4110
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4114
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4117
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4119
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4138
    :cond_1
    :goto_0
    return-void

    .line 4121
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4122
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4123
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4124
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4126
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 4127
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4130
    :cond_5
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_1

    .line 4131
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 4132
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 4133
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 4134
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8766
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8767
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 8769
    if-nez p2, :cond_0

    .line 8774
    :goto_0
    return-void

    .line 8772
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3364
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 3369
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 3371
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 3373
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_5

    .line 3374
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 3375
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3376
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3379
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3380
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 3381
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3383
    :cond_0
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_1

    .line 3384
    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 3385
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 3386
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3387
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3391
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3393
    if-ne v0, v2, :cond_2

    .line 3395
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3419
    :cond_2
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3421
    if-nez p1, :cond_3

    .line 3422
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3424
    :cond_3
    return-void

    .end local v0    # "touchMode":I
    :cond_4
    move v0, v2

    .line 3371
    goto :goto_0

    .line 3398
    .restart local v0    # "touchMode":I
    :cond_5
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_6

    .line 3400
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3404
    :cond_6
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 3406
    if-ne v0, v2, :cond_7

    .line 3408
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3412
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3413
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3414
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1927
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1946
    :goto_0
    return v1

    .line 1930
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1946
    goto :goto_0

    .line 1932
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

    .line 1933
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1934
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportHeight":I
    :cond_1
    move v1, v2

    .line 1937
    goto :goto_0

    .line 1939
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 1940
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 1941
    .restart local v0    # "viewportHeight":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportHeight":I
    :cond_2
    move v1, v2

    .line 1944
    goto :goto_0

    .line 1930
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

    .line 1439
    const/4 v8, 0x0

    .line 1440
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1441
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1443
    .local v7, "dispatchItemClick":Z
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_11

    .line 1444
    const/4 v8, 0x1

    .line 1445
    const/4 v6, 0x0

    .line 1448
    .local v6, "checkedStateChanged":Z
    iget-boolean v2, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    .line 1449
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_7

    instance-of v2, p1, Landroid/widget/Checkable;

    if-eqz v2, :cond_7

    .line 1452
    invoke-virtual {p1}, Landroid/view/View;->performHapticFeedback()Z

    .line 1459
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_b

    .line 1461
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_8

    move v5, v0

    .line 1462
    .local v5, "checked":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1463
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1464
    if-eqz v5, :cond_9

    .line 1465
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1470
    :cond_2
    :goto_2
    if-eqz v5, :cond_a

    .line 1471
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1475
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 1476
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1478
    const/4 v7, 0x0

    .line 1480
    :cond_3
    const/4 v6, 0x1

    .line 1497
    .end local v5    # "checked":Z
    :cond_4
    :goto_4
    if-eqz v6, :cond_5

    .line 1498
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1508
    .end local v6    # "checkedStateChanged":Z
    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    .line 1509
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v8, v0

    .line 1512
    :cond_6
    return v8

    .line 1454
    .restart local v6    # "checkedStateChanged":Z
    :cond_7
    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_8
    move v5, v1

    .line 1461
    goto :goto_1

    .line 1467
    .restart local v5    # "checked":Z
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_2

    .line 1473
    :cond_a
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1481
    .end local v5    # "checked":Z
    :cond_b
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v0, :cond_4

    .line 1482
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_e

    move v5, v0

    .line 1483
    .restart local v5    # "checked":Z
    :goto_6
    if-eqz v5, :cond_f

    .line 1484
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1485
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1486
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1487
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1488
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1490
    :cond_c
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1494
    :cond_d
    :goto_7
    const/4 v6, 0x1

    goto :goto_4

    .end local v5    # "checked":Z
    :cond_e
    move v5, v1

    .line 1482
    goto :goto_6

    .line 1491
    .restart local v5    # "checked":Z
    :cond_f
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1492
    :cond_10
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_7

    .line 1500
    .end local v5    # "checked":Z
    .end local v6    # "checkedStateChanged":Z
    :cond_11
    if-eqz p1, :cond_5

    .line 1502
    iget-boolean v0, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_5

    .line 1503
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

    .line 3603
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3604
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3606
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3607
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 3624
    :cond_0
    :goto_0
    return v6

    .line 3612
    :cond_1
    const/4 v6, 0x0

    .line 3613
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3614
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3617
    :cond_2
    if-nez v6, :cond_3

    .line 3618
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3619
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3621
    :cond_3
    if-eqz v6, :cond_0

    .line 3622
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3791
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3792
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3793
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3794
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3797
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3798
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3799
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3800
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3801
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3802
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3803
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3807
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 3798
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3807
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
    .line 3820
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3821
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3822
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3824
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

    .line 2904
    if-eq p1, v6, :cond_0

    .line 2905
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2908
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2909
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

    .line 2910
    instance-of v2, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 2911
    check-cast v2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2913
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 2916
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2917
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 2918
    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2919
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 2920
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2923
    :cond_2
    return-void

    .line 2918
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
    .line 7944
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7945
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$5200(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 7948
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7949
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7950
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 7952
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7953
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7954
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7955
    if-eqz v3, :cond_0

    .line 7957
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7948
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7961
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7962
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 7963
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 6986
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6987
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 6988
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6990
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6991
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6992
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 993
    invoke-direct {p0}, Landroid/widget/AbsListView;->registerMotionListener()V

    .line 994
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 995
    return-void
.end method

.method public registerIRMotion()V
    .locals 0

    .prologue
    .line 972
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5622
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_10

    .line 5624
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_4

    .line 5625
    iget v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 5627
    :try_start_0
    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

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

    .line 5631
    :goto_0
    iput v5, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 5633
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5634
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 5635
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5637
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 5638
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5640
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 5641
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5643
    :cond_3
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5645
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/view/View;->mTwScrollingByScrollbar:Z

    if-nez v0, :cond_f

    .line 5646
    if-eqz p1, :cond_a

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-nez v0, :cond_a

    .line 5648
    iget v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 5650
    :try_start_1
    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

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

    .line 5654
    :goto_1
    iput v5, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 5656
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 5658
    :try_start_2
    iget-object v0, p0, Landroid/widget/AbsListView;->methodPauseGc:Ljava/lang/reflect/Method;

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

    iput v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5663
    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5664
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_7

    .line 5665
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5667
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_8

    .line 5668
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5670
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_9

    .line 5671
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 5673
    :cond_9
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5675
    :cond_a
    if-nez p1, :cond_f

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_f

    .line 5677
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_f

    .line 5678
    iget v0, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    .line 5680
    :try_start_3
    iget-object v0, p0, Landroid/widget/AbsListView;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

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

    .line 5684
    :goto_3
    iput v5, p0, Landroid/widget/AbsListView;->mDVFSCookie:I

    .line 5686
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5687
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_c

    .line 5688
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperGPU:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5690
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_d

    .line 5691
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperBUS:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5693
    :cond_d
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_e

    .line 5694
    iget-object v0, p0, Landroid/widget/AbsListView;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 5696
    :cond_e
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 5701
    :cond_f
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 5702
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_10

    .line 5704
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5707
    :cond_10
    return-void

    .line 5682
    :catch_0
    move-exception v0

    goto :goto_3

    .line 5681
    :catch_1
    move-exception v0

    goto :goto_3

    .line 5660
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 5659
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 5652
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 5651
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .line 5629
    :catch_6
    move-exception v0

    goto/16 :goto_0

    .line 5628
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 5464
    if-eqz p1, :cond_0

    .line 5465
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 5467
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 5468
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2388
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2389
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 2391
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2071
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2072
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 2073
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2074
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2076
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2397
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2398
    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2401
    iget-boolean v0, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2402
    iput v2, p0, Landroid/widget/AbsListView;->mLastPosition:I

    .line 2406
    :cond_0
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2407
    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2408
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2409
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2410
    iput v2, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 2411
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 2412
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2413
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2414
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2415
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2416
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2417
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2418
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 4

    .prologue
    .line 9014
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 9028
    :cond_0
    :goto_0
    return-void

    .line 9017
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 9019
    .local v0, "checkCount":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    if-eqz v2, :cond_0

    .line 9022
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 9023
    iget-object v2, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 9022
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9026
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsListView;->mTwPressItemListIndex:I

    .line 9027
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 7054
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 7056
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 7057
    const/16 v17, 0x0

    .line 7152
    :goto_0
    return v17

    .line 7060
    :cond_0
    const/4 v13, 0x0

    .line 7062
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 7063
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7064
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7065
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7066
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 7068
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 7069
    move v12, v14

    .line 7071
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7072
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7073
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 7076
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 7077
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 7133
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 7136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7138
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7139
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 7140
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 7141
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 7142
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 7143
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7144
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7145
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 7146
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 7150
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7152
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7078
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 7079
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 7083
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 7085
    move v12, v7

    .line 7086
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 7087
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7088
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7090
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 7092
    move v13, v15

    .line 7094
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 7097
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 7100
    :cond_6
    if-lt v15, v5, :cond_7

    .line 7102
    add-int v12, v7, v8

    .line 7103
    move v13, v15

    .line 7104
    goto/16 :goto_1

    .line 7086
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 7108
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 7109
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 7110
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 7112
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 7113
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7114
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7115
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7117
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 7118
    move v13, v15

    .line 7119
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 7120
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7124
    :cond_a
    if-gt v2, v4, :cond_b

    .line 7125
    add-int v12, v7, v8

    .line 7126
    move v13, v15

    .line 7127
    goto/16 :goto_1

    .line 7112
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 7148
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 7152
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 7034
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7035
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7036
    const/4 v0, 0x1

    .line 7038
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
    .line 6695
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 6696
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1889
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1890
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 1891
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    .line 1892
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1901
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 1896
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1897
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1900
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

    .line 7475
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7550
    :cond_0
    :goto_0
    return v2

    .line 7479
    :cond_1
    const/4 v2, 0x0

    .line 7480
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7481
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 7513
    :goto_1
    if-eqz v3, :cond_0

    .line 7514
    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 7516
    move-object v1, p3

    .line 7517
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7518
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7521
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7522
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7524
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7525
    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    .line 7526
    :cond_3
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 7488
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 7489
    goto :goto_1

    .line 7491
    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7492
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 7494
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7495
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_4

    .line 7496
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7498
    :cond_4
    const/4 v2, 0x1

    .line 7505
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 7506
    goto :goto_1

    .line 7499
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

    .line 7501
    const/4 v2, 0x1

    .line 7502
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7509
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 7527
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    .line 7528
    :cond_8
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7533
    :pswitch_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7534
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 7535
    :cond_9
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 7536
    iput v5, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 7537
    iput v5, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 7538
    iput v9, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 7539
    iput v9, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 7540
    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    .line 7541
    :cond_b
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7546
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7481
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

    .line 7522
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
    .line 128
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1228
    if-eqz p1, :cond_0

    .line 1229
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 1230
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1232
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1236
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1240
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1241
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1245
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 1246
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    .line 1247
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 1248
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 1251
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
    .line 5230
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 5231
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 7915
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 7916
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 7917
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7918
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7919
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7921
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 7923
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

    .line 1578
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1579
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1581
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1583
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1584
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1585
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1587
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1588
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1591
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1592
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1593
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 1596
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3108
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3109
    return-void
.end method

.method public setEnableDragBlock(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 8913
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 8914
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 8904
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 8905
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1724
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1725
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1726
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1729
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1731
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1732
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1742
    :cond_1
    :goto_0
    return-void

    .line 1734
    :cond_2
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1678
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1679
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1681
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1692
    :cond_0
    :goto_0
    return-void

    .line 1684
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2329
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2330
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2333
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2334
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2335
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2337
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2338
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2339
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2343
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2344
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 2347
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3493
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 3494
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2583
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 2585
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2589
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2590
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2591
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2595
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2589
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 6431
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6432
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6434
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$2200(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 6435
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4193
    iput p1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 4194
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4173
    if-eqz p1, :cond_0

    .line 4174
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 4178
    :goto_0
    return-void

    .line 4176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4185
    iput p1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I

    .line 4186
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

    .line 1368
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    if-eqz p2, :cond_4

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_4

    .line 1374
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1376
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1383
    :cond_4
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_c

    .line 1384
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1385
    .local v6, "oldValue":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1386
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1387
    if-eqz p2, :cond_a

    .line 1388
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1393
    :cond_6
    :goto_1
    if-eq v6, p2, :cond_7

    .line 1394
    if-eqz p2, :cond_b

    .line 1395
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1400
    :cond_7
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8

    .line 1401
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1402
    .local v3, "id":J
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1429
    .end local v3    # "id":J
    .end local v6    # "oldValue":Z
    :cond_8
    :goto_3
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1430
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v0, :cond_9

    .line 1431
    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1432
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncState()V

    .line 1433
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto/16 :goto_0

    .line 1390
    .restart local v6    # "oldValue":Z
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1397
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1406
    .end local v6    # "oldValue":Z
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_10

    move v7, v8

    .line 1409
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1410
    :cond_d
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1411
    if-eqz v7, :cond_e

    .line 1412
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1417
    :cond_e
    if-eqz p2, :cond_11

    .line 1418
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1419
    if-eqz v7, :cond_f

    .line 1420
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1422
    :cond_f
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_10
    move v7, v0

    .line 1406
    goto :goto_4

    .line 1423
    .restart local v7    # "updateIds":Z
    :cond_11
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1424
    :cond_12
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1012
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mMotionEnable:Z

    .line 1013
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1608
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1609
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1611
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1612
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 9035
    iget-object v0, p0, Landroid/widget/AbsListView;->mTwPressItemListArray:[I

    if-nez v0, :cond_0

    .line 9041
    :goto_0
    return-void

    .line 9038
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 9039
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1867
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1868
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1869
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .prologue
    .line 5437
    iput p1, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    .line 5438
    iput p2, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    .line 5439
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1210
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1211
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1212
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1213
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1214
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1220
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1221
    return-void

    .line 1217
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1218
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 8073
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    # setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$5202(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 8074
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7980
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1

    .line 7981
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7982
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7984
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7994
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    :goto_0
    return-void

    .line 7988
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7990
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7991
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7992
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 8006
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8007
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 8009
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1804
    invoke-super {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 1805
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1808
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 3191
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3192
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3193
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1993
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1994
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1996
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1997
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3119
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3120
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3123
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3124
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3125
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3127
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3129
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3130
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 3131
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 3132
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 3133
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 3134
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3135
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3136
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1838
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1839
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2064
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2065
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 2066
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2068
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2010
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 2011
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1028
    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1029
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 7886
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 7887
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 6444
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 6445
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1796
    invoke-super {p0, p1}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 1797
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1800
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8056
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 8057
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 8059
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3057
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 3058
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

    .line 3063
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

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

    .line 3057
    goto :goto_0

    .restart local v0    # "isFingerAirView":Z
    :cond_5
    move v1, v3

    .line 3058
    goto :goto_1
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3068
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

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
    .line 3635
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 3636
    .local v3, "position":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 3637
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3638
    .local v1, "id":J
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3639
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3640
    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3641
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3646
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "id":J
    :goto_0
    return v4

    .line 3644
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3646
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3651
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3652
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3653
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3654
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3656
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3657
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3660
    :cond_0
    if-nez v6, :cond_1

    .line 3661
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3664
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3669
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
    .line 6518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6519
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    .line 6596
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 6597
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6601
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6602
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6603
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 6604
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 6605
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 6607
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 6611
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 6612
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 6613
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 6619
    :cond_3
    :goto_0
    return-void

    .line 6616
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6617
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 6625
    const/4 v2, -0x1

    .line 6626
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 6627
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 6632
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 6633
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6634
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 6635
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6636
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6638
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6639
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6640
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6641
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 6642
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 6645
    add-int/lit8 v2, v2, 0x1

    .line 6652
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

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 6655
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 6628
    :cond_3
    if-lez p1, :cond_0

    .line 6629
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 6646
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

    .line 6649
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6453
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6454
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6456
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 6457
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6506
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6507
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6509
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    .line 6510
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6490
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6491
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6493
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(II)V

    .line 6494
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6472
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 6473
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 6475
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 6476
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3040
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3045
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3043
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3040
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 32
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 6734
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 6735
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 6736
    const/16 v30, 0x1

    .line 6933
    :goto_0
    return v30

    .line 6739
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    move-result v16

    .line 6740
    .local v16, "firstTop":I
    add-int/lit8 v30, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 6742
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 6747
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 6748
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 6749
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 6750
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 6751
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 6755
    :cond_1
    sub-int v26, v13, v16

    .line 6756
    .local v26, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    sub-int v14, v30, v12

    .line 6757
    .local v14, "end":I
    sub-int v27, v22, v14

    .line 6759
    .local v27, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v31, v0

    sub-int v19, v30, v31

    .line 6760
    .local v19, "height":I
    if-gez p1, :cond_3

    .line 6761
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6766
    :goto_1
    if-gez p2, :cond_4

    .line 6767
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6772
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6775
    .local v15, "firstPosition":I
    if-nez v15, :cond_5

    .line 6776
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v30, v16, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 6780
    :goto_3
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 6781
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    add-int v30, v30, v22

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 6786
    :goto_4
    if-nez v15, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 6788
    .local v5, "cannotScrollDown":Z
    :goto_5
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v22

    move/from16 v1, v30

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v6, 0x1

    .line 6791
    .local v6, "cannotScrollUp":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v6, :cond_a

    .line 6792
    :cond_2
    if-eqz p2, :cond_9

    const/16 v30, 0x1

    goto/16 :goto_0

    .line 6763
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_3
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 6769
    :cond_4
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 6778
    .restart local v15    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 6783
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 6786
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 6788
    .restart local v5    # "cannotScrollDown":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 6792
    .restart local v6    # "cannotScrollUp":Z
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 6795
    :cond_a
    if-gez p2, :cond_14

    const/4 v11, 0x1

    .line 6797
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v21

    .line 6798
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_b

    .line 6799
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 6802
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 6803
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v31

    sub-int v17, v30, v31

    .line 6805
    .local v17, "footerViewsStart":I
    const/16 v28, 0x0

    .line 6806
    .local v28, "start":I
    const/4 v10, 0x0

    .line 6809
    .local v10, "count":I
    const/16 v24, 0x1

    .line 6812
    .local v24, "performHaptic":Z
    if-eqz v11, :cond_1b

    .line 6813
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v29, v0

    .line 6814
    .local v29, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 6815
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    .line 6817
    :cond_c
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_d

    .line 6818
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6819
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v29

    if-lt v0, v1, :cond_15

    .line 6889
    .end local v7    # "child":Landroid/view/View;
    .end local v29    # "top":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 6891
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 6893
    if-lez v10, :cond_e

    .line 6894
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 6895
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 6900
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v30

    if-nez v30, :cond_f

    .line 6901
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 6904
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 6906
    if-eqz v11, :cond_10

    .line 6907
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v10

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6910
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6911
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v26

    if-lt v0, v3, :cond_11

    move/from16 v0, v27

    if-ge v0, v3, :cond_12

    .line 6912
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 6915
    :cond_12
    if-nez v21, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_22

    .line 6916
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v9, v30, v31

    .line 6917
    .local v9, "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_13

    .line 6918
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6929
    .end local v9    # "childIndex":I
    :cond_13
    :goto_9
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 6931
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 6933
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 6795
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v24    # "performHaptic":Z
    .end local v28    # "start":I
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 6822
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v24    # "performHaptic":Z
    .restart local v28    # "start":I
    .restart local v29    # "top":I
    :cond_15
    add-int/lit8 v10, v10, 0x1

    .line 6823
    add-int v25, v15, v20

    .line 6824
    .local v25, "position":I
    move/from16 v0, v25

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a

    .line 6827
    invoke-virtual {v7}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_16

    .line 6828
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6832
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_19

    .line 6833
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v25

    if-eq v0, v1, :cond_19

    .line 6834
    if-eqz v24, :cond_18

    .line 6835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_17

    .line 6836
    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 6839
    :cond_17
    const/16 v24, 0x0

    .line 6841
    :cond_18
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPosition:I

    .line 6845
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6817
    :cond_1a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 6850
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v25    # "position":I
    .end local v29    # "top":I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v30

    sub-int v4, v30, p2

    .line 6851
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    .line 6852
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v4, v4, v30

    .line 6854
    :cond_1c
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_d

    .line 6855
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6856
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v30

    move/from16 v0, v30

    if-le v0, v4, :cond_d

    .line 6859
    move/from16 v28, v20

    .line 6860
    add-int/lit8 v10, v10, 0x1

    .line 6861
    add-int v25, v15, v20

    .line 6862
    .restart local v25    # "position":I
    move/from16 v0, v25

    move/from16 v1, v18

    if-lt v0, v1, :cond_21

    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_21

    .line 6865
    invoke-virtual {v7}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 6866
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 6870
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v30, v0

    if-eqz v30, :cond_20

    .line 6871
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPosition:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v25

    if-eq v0, v1, :cond_20

    .line 6872
    if-eqz v24, :cond_1f

    .line 6873
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    .line 6874
    const/16 v30, 0x4e98

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 6875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 6877
    :cond_1e
    const/16 v24, 0x0

    .line 6879
    :cond_1f
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPosition:I

    .line 6883
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6854
    :cond_21
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 6920
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v25    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_23

    .line 6921
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v9, v30, v31

    .line 6922
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_13

    .line 6923
    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 6926
    .end local v9    # "childIndex":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected twGetItemCount()I
    .locals 2

    .prologue
    .line 6547
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6548
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
    .line 1647
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    return v0
.end method

.method public twNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1521
    const/4 v6, 0x0

    .line 1523
    .local v6, "handledNotifyKeyPress":Z
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v0, :cond_0

    .line 1524
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Landroid/widget/AdapterView;->twNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v6

    .line 1526
    :cond_0
    return v6
.end method

.method public twSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1638
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTwCustomMultiChoiceMode:Z

    .line 1639
    return-void
.end method

.method public twSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 6561
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6562
    return-void
.end method

.method public twShowMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1620
    if-eqz p1, :cond_1

    .line 1621
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1627
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public twSmoothScrollBy(I)V
    .locals 5
    .param p1, "distance"    # I

    .prologue
    const/16 v4, -0x1f4

    const/16 v3, 0x1f4

    .line 6569
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6570
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6573
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 6574
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    .line 6575
    new-instance v1, Landroid/widget/AbsListView$TwSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    .line 6578
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 6579
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_4

    .line 6580
    if-lez p1, :cond_2

    .line 6581
    :goto_0
    if-le p1, v3, :cond_3

    .line 6582
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6581
    add-int/lit16 p1, p1, -0x1f4

    goto :goto_0

    .line 6585
    :cond_2
    :goto_1
    if-ge p1, v4, :cond_3

    .line 6586
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6585
    add-int/lit16 p1, p1, 0x1f4

    goto :goto_1

    .line 6589
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6590
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mTwSmoothScrollByMove:Landroid/widget/AbsListView$TwSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6592
    :cond_4
    return-void
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1002
    invoke-direct {p0}, Landroid/widget/AbsListView;->unregisterMotionListener()V

    .line 1003
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setMotionEvent(Z)V

    .line 1004
    return-void
.end method

.method public unregisterIRMotion()V
    .locals 0

    .prologue
    .line 979
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1040
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1042
    :cond_0
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2605
    iget-object v6, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2608
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 2611
    .local v1, "canScrollUp":Z
    :goto_0
    if-nez v1, :cond_0

    .line 2612
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2613
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2614
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 2618
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2621
    .end local v1    # "canScrollUp":Z
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2623
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2626
    .local v3, "count":I
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 2629
    .local v0, "canScrollDown":Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 2630
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2631
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 2634
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2636
    .end local v0    # "canScrollDown":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 2608
    goto :goto_0

    .restart local v1    # "canScrollUp":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_5
    move v1, v5

    .line 2614
    goto :goto_1

    .end local v2    # "child":Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2618
    goto :goto_2

    .end local v1    # "canScrollUp":Z
    .restart local v3    # "count":I
    :cond_7
    move v0, v5

    .line 2626
    goto :goto_3

    .restart local v0    # "canScrollDown":Z
    .restart local v2    # "child":Landroid/view/View;
    :cond_8
    move v0, v5

    .line 2631
    goto :goto_4

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2634
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3196
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3197
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3198
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    .line 3199
    iget v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3200
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3201
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3202
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3203
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3214
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3205
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3208
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3211
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3258
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

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
