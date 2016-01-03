.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$5;,
        Landroid/widget/TextView$StylusEventListener;,
        Landroid/widget/TextView$MoreInfoHPW;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$IClipboardDataPasteEventImpl;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_TEXT:I = 0x2

.field private static final ACTION_INIT:I = 0x0

.field private static final ACTION_PASTE_TEXT:I = 0x3

.field private static final ACTION_REDOING:I = 0x5

.field private static final ACTION_TYPING_TEXT:I = 0x1

.field private static final ACTION_UNDOING:I = 0x4

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field public static final B_USE_HINT_LIGHT_FONT:Z

.field public static final B_USE_LIGHT_FONT:Z

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field public static final CLIPBOARD_ID:I = 0x5

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field public static final DICTIONARY_ID:I = 0x9

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field private static final HINT_TYPEFACE:I = 0x1

.field static final ID_CLIPBOARD:I = 0x10202c1

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_DELETE:I = 0x10202c5

.field static final ID_DICTIONARY:I = 0x10202c4

.field static final ID_PASTE:I = 0x1020022

.field static final ID_REDO:I = 0x10202c7

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x10202c3

.field static final ID_TRANSLATE:I = 0x10202c2

.field static final ID_UNDO:I = 0x10202c6

.field static final ID_WEBSEARCH:I = 0x1020461

.field static LAST_CUT_OR_COPY_TIME:J = 0x0L

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field private static final PRESS_TYPEFACE:I = 0x2

.field private static final SANS:I = 0x1

.field private static final SELECT_TYPEFACE:I = 0x3

.field private static final SERIF:I = 0x2

.field public static final SHARE_ID:I = 0x7

.field private static final SIGNED:I = 0x2

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field public static final TRANSLATE_ID:I = 0x6

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final VERY_WIDE:I = 0x100000

.field public static final WEBSEARCH_ID:I = 0x8


# instance fields
.field protected ADVANCED_VI_EFFECTS_ENABLED:Z

.field private fromResLock:Z

.field private mAllowTransformationLengthChange:Z

.field private mAssociatedCheckBoxAnimationValue:F

.field private mAssociatedCheckBoxChecked:Z

.field private mAttachedWindow:Z

.field private mAutoLinkMask:I

.field private mBidiFormat:Landroid/text/BidiFormatter;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mChangedSize:I

.field private mChangedText:Z

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mClipboardDataFormat:I

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private mCurTextTypeface:Landroid/graphics/Typeface;

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsisKeywordCount:I

.field private mEllipsisKeywordStart:I

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnableUndoRedo:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mGravity:I

.field private mHideSoftInput:Z

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHintTextTypeface:Landroid/graphics/Typeface;

.field private mHorizontallyScrolling:Z

.field private mIncludePad:Z

.field private mLastAction:I

.field private mLastCurPosEnd:I

.field private mLastCurPosStart:I

.field private mLastKeyCode:I

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mOldCursorPostion:I

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field protected mOnDragResult:Z

.field protected mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

.field private mPreDrawRegistered:Z

.field private mPreText:Ljava/lang/CharSequence;

.field private mPressTextTypeface:Landroid/graphics/Typeface;

.field private mPretextCurPosEnd:I

.field private mPretextCurPosStart:I

.field private mPreventDefaultMovement:Z

.field private mRedoText:Ljava/lang/CharSequence;

.field private mRestartMarquee:Z

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectTextTypeface:Landroid/graphics/Typeface;

.field private mSelectall:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSkipSaveTypeface:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mStrikeThroughPaint:Landroid/graphics/Paint;

.field private mStringName:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStylusCurPosition:I

.field private mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditNewActionPopupBackGroundRes:I

.field mTextEditNewActionPopupClipboardRes:I

.field mTextEditNewActionPopupCopyRes:I

.field mTextEditNewActionPopupCutRes:I

.field mTextEditNewActionPopupDictionaryRes:I

.field mTextEditNewActionPopupDividerRes:I

.field mTextEditNewActionPopupPasteRes:I

.field mTextEditNewActionPopupSelectAllRes:I

.field mTextEditNewActionPopupShareRes:I

.field mTextEditNewActionPopupTranslateRes:I

.field mTextEditNewActionPopupWebSearchRes:I

.field mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleLeftTopRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field mTextSelectHandleRightTopRes:I

.field private mTextStrikeThroughEnabled:Z

.field private mThemeIsDeviceDefault:Z

.field private mToast:Landroid/widget/Toast;

.field protected mToolType:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUndoText:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z

.field private mWBMaxLength:I

.field private mWBTextBuffer:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 328
    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 329
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 334
    new-array v1, v4, [I

    const v2, 0x101034d

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 401
    const-string v1, "capuccino"

    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/widget/TextView;->B_USE_LIGHT_FONT:Z

    .line 407
    const-string v1, "latte"

    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/widget/TextView;->B_USE_HINT_LIGHT_FONT:Z

    .line 881
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 882
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 884
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 7752
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 908
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 909
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 912
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 913
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 91
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 917
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 352
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mCurTextTypeface:Landroid/graphics/Typeface;

    .line 353
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mHintTextTypeface:Landroid/graphics/Typeface;

    .line 354
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPressTextTypeface:Landroid/graphics/Typeface;

    .line 355
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mSelectTextTypeface:Landroid/graphics/Typeface;

    .line 356
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mSkipSaveTypeface:Z

    .line 363
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->fromResLock:Z

    .line 368
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mAssociatedCheckBoxChecked:Z

    .line 369
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    .line 371
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    .line 375
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->ADVANCED_VI_EFFECTS_ENABLED:Z

    .line 377
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 378
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 392
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    .line 393
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    .line 395
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mToolType:I

    .line 409
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    .line 412
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mChangedText:Z

    .line 413
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mChangedSize:I

    .line 414
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    .line 415
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    .line 418
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mSelectall:Z

    .line 733
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 735
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 742
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 754
    sget-object v5, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 764
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    .line 790
    const v5, 0x800033

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mGravity:I

    .line 794
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 796
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 797
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 799
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMaximum:I

    .line 800
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMaxMode:I

    .line 801
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMinimum:I

    .line 802
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMinMode:I

    .line 804
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mOldMaximum:I

    .line 805
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mOldMaxMode:I

    .line 807
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMaxWidth:I

    .line 808
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 809
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMinWidth:I

    .line 810
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 813
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 814
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 815
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mDeferScroll:I

    .line 827
    sget-object v5, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 833
    const v5, -0xcc4a1b

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mHighlightColor:I

    .line 836
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6618
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mClipboardDataFormat:I

    .line 10743
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mOnDragResult:Z

    .line 11340
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mHideSoftInput:Z

    .line 11662
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mStylusCurPosition:I

    .line 11666
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mOldCursorPostion:I

    .line 12011
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mWBMaxLength:I

    .line 12087
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    .line 918
    const-string v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 921
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastAction:I

    .line 922
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastKeyCode:I

    .line 923
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    .line 924
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    .line 925
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    .line 926
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastCurPosStart:I

    .line 927
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mLastCurPosEnd:I

    .line 930
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v64

    .line 931
    .local v64, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v64 .. v64}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v29

    .line 934
    .local v29, "compat":Landroid/content/res/CompatibilityInfo;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 937
    new-instance v5, Landroid/text/TextPaint;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 938
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v64 .. v64}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    iput v11, v5, Landroid/text/TextPaint;->density:F

    .line 939
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v29

    iget v11, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 941
    new-instance v5, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v5, v11}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 942
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v29

    iget v11, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 944
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 946
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 948
    const/16 v82, 0x0

    .line 949
    .local v82, "textColorHighlight":I
    const/16 v81, 0x0

    .line 950
    .local v81, "textColor":Landroid/content/res/ColorStateList;
    const/16 v83, 0x0

    .line 951
    .local v83, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v84, 0x0

    .line 952
    .local v84, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v85, 0xf

    .line 953
    .local v85, "textSize":I
    const/16 v45, 0x0

    .line 954
    .local v45, "fontFamily":Ljava/lang/String;
    const/16 v87, -0x1

    .line 955
    .local v87, "typefaceIndex":I
    const/16 v79, -0x1

    .line 956
    .local v79, "styleIndex":I
    const/16 v18, 0x0

    .line 957
    .local v18, "allCaps":Z
    const/16 v76, 0x0

    .line 958
    .local v76, "shadowcolor":I
    const/16 v38, 0x0

    .local v38, "dx":F
    const/16 v39, 0x0

    .local v39, "dy":F
    const/16 v63, 0x0

    .line 960
    .local v63, "r":F
    const/16 v47, 0x0

    .line 961
    .local v47, "hintFontFamily":Ljava/lang/String;
    const/16 v61, 0x0

    .line 962
    .local v61, "pressFontFamily":Ljava/lang/String;
    const/16 v65, 0x0

    .line 963
    .local v65, "selectFontFamily":Ljava/lang/String;
    const/16 v48, -0x1

    .line 964
    .local v48, "hintStyleIndex":I
    const/16 v62, -0x1

    .line 965
    .local v62, "pressStyleIndex":I
    const/16 v66, -0x1

    .line 967
    .local v66, "selectStyleIndex":I
    const/4 v6, 0x0

    .local v6, "sfeOuterShadowAngle":F
    const/4 v7, 0x0

    .line 968
    .local v7, "sfeOuterShadowOffset":F
    const/4 v8, 0x0

    .local v8, "sfeOuterShadowSoftness":F
    const/4 v10, 0x0

    .line 969
    .local v10, "sfeOuterShadowOpacity":F
    const/4 v9, 0x0

    .line 971
    .local v9, "sfeOuterShadowColor":I
    const/4 v12, 0x0

    .local v12, "sfeInnerShadowAngle":F
    const/4 v13, 0x0

    .line 972
    .local v13, "sfeInnerShadowOffset":F
    const/4 v14, 0x0

    .local v14, "sfeInnerShadowSoftness":F
    const/16 v16, 0x0

    .line 973
    .local v16, "sfeInnerShadowOpacity":F
    const/4 v15, 0x0

    .line 975
    .local v15, "sfeInnerShadowColor":I
    const/16 v75, 0x0

    .local v75, "sfeStokeSize":F
    const/16 v73, 0x0

    .line 976
    .local v73, "sfeStokeOpacity":F
    const/16 v72, 0x0

    .local v72, "sfeStokeJoinStyle":I
    const/16 v74, 0x0

    .line 977
    .local v74, "sfeStokePosition":I
    const/16 v71, 0x0

    .line 979
    .local v71, "sfeStokeColor":I
    const/16 v70, 0x0

    .local v70, "sfeOuterGlowSize":F
    const/16 v69, 0x0

    .line 980
    .local v69, "sfeOuterGlowOpacity":F
    const/16 v68, 0x0

    .line 982
    .local v68, "sfeOuterGlowColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v86

    .line 990
    .local v86, "theme":Landroid/content/res/Resources$Theme;
    sget-object v5, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    const/4 v11, 0x0

    move-object/from16 v0, v86

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 992
    .local v17, "a":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    .line 993
    .local v20, "appearance":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 995
    .local v19, "ap":I
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 996
    const/4 v5, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_0

    .line 997
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v86

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 1000
    :cond_0
    if-eqz v20, :cond_2

    .line 1001
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v54

    .line 1002
    .local v54, "n":I
    const/16 v49, 0x0

    .local v49, "i":I
    :goto_0
    move/from16 v0, v49

    move/from16 v1, v54

    if-ge v0, v1, :cond_1

    .line 1003
    move-object/from16 v0, v20

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v21

    .line 1005
    .local v21, "attr":I
    packed-switch v21, :pswitch_data_0

    .line 1002
    :goto_1
    add-int/lit8 v49, v49, 0x1

    goto :goto_0

    .line 1007
    :pswitch_0
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v82

    .line 1008
    goto :goto_1

    .line 1011
    :pswitch_1
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v81

    .line 1012
    goto :goto_1

    .line 1015
    :pswitch_2
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v83

    .line 1016
    goto :goto_1

    .line 1019
    :pswitch_3
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v84

    .line 1020
    goto :goto_1

    .line 1023
    :pswitch_4
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v85

    .line 1024
    goto :goto_1

    .line 1027
    :pswitch_5
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v87

    .line 1028
    goto :goto_1

    .line 1031
    :pswitch_6
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1032
    goto :goto_1

    .line 1035
    :pswitch_7
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v79

    .line 1036
    goto :goto_1

    .line 1039
    :pswitch_8
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 1040
    goto :goto_1

    .line 1043
    :pswitch_9
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v76

    .line 1044
    goto :goto_1

    .line 1047
    :pswitch_a
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    .line 1048
    goto :goto_1

    .line 1051
    :pswitch_b
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v39

    .line 1052
    goto :goto_1

    .line 1055
    :pswitch_c
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v63

    .line 1056
    goto :goto_1

    .line 1059
    :pswitch_d
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 1060
    goto :goto_1

    .line 1063
    :pswitch_e
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    .line 1064
    goto/16 :goto_1

    .line 1067
    :pswitch_f
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 1068
    goto/16 :goto_1

    .line 1071
    :pswitch_10
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v62

    .line 1072
    goto/16 :goto_1

    .line 1075
    :pswitch_11
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 1076
    goto/16 :goto_1

    .line 1079
    :pswitch_12
    const/4 v5, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v66

    .line 1080
    goto/16 :goto_1

    .line 1083
    :pswitch_13
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 1084
    goto/16 :goto_1

    .line 1087
    :pswitch_14
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 1088
    goto/16 :goto_1

    .line 1091
    :pswitch_15
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 1092
    goto/16 :goto_1

    .line 1095
    :pswitch_16
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 1096
    goto/16 :goto_1

    .line 1099
    :pswitch_17
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 1100
    goto/16 :goto_1

    .line 1103
    :pswitch_18
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 1104
    goto/16 :goto_1

    .line 1107
    :pswitch_19
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 1108
    goto/16 :goto_1

    .line 1111
    :pswitch_1a
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 1112
    goto/16 :goto_1

    .line 1115
    :pswitch_1b
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 1116
    goto/16 :goto_1

    .line 1119
    :pswitch_1c
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .line 1120
    goto/16 :goto_1

    .line 1123
    :pswitch_1d
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v75

    .line 1124
    goto/16 :goto_1

    .line 1127
    :pswitch_1e
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v71

    .line 1128
    goto/16 :goto_1

    .line 1131
    :pswitch_1f
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v73

    .line 1132
    goto/16 :goto_1

    .line 1135
    :pswitch_20
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    .line 1136
    goto/16 :goto_1

    .line 1139
    :pswitch_21
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v74

    .line 1140
    goto/16 :goto_1

    .line 1143
    :pswitch_22
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v70

    .line 1144
    goto/16 :goto_1

    .line 1147
    :pswitch_23
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    .line 1148
    goto/16 :goto_1

    .line 1151
    :pswitch_24
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v69

    goto/16 :goto_1

    .line 1156
    .end local v21    # "attr":I
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1159
    .end local v49    # "i":I
    .end local v54    # "n":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v41

    .line 1160
    .local v41, "editable":Z
    const/16 v50, 0x0

    .line 1161
    .local v50, "inputMethod":Ljava/lang/CharSequence;
    const/16 v56, 0x0

    .line 1162
    .local v56, "numeric":I
    const/16 v30, 0x0

    .line 1163
    .local v30, "digits":Ljava/lang/CharSequence;
    const/16 v60, 0x0

    .line 1164
    .local v60, "phone":Z
    const/16 v23, 0x0

    .line 1165
    .local v23, "autotext":Z
    const/16 v22, -0x1

    .line 1166
    .local v22, "autocap":I
    const/16 v25, 0x0

    .line 1167
    .local v25, "buffertype":I
    const/16 v67, 0x0

    .line 1168
    .local v67, "selectallonfocus":Z
    const/16 v33, 0x0

    .local v33, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x0

    .local v37, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 1169
    .local v35, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/16 v31, 0x0

    .local v31, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .local v36, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v32, 0x0

    .line 1170
    .local v32, "drawableEnd":Landroid/graphics/drawable/Drawable;
    const/16 v34, 0x0

    .line 1171
    .local v34, "drawablePadding":I
    const/16 v42, -0x1

    .line 1172
    .local v42, "ellipsize":I
    const/16 v77, 0x0

    .line 1173
    .local v77, "singleLine":Z
    const/16 v53, -0x1

    .line 1174
    .local v53, "maxlength":I
    const-string v80, ""

    .line 1175
    .local v80, "text":Ljava/lang/CharSequence;
    const/16 v78, -0x1

    .line 1176
    .local v78, "stringID":I
    const/16 v46, 0x0

    .line 1177
    .local v46, "hint":Ljava/lang/CharSequence;
    const/16 v58, 0x0

    .line 1178
    .local v58, "password":Z
    const/16 v51, 0x0

    .line 1180
    .local v51, "inputType":I
    sget-object v5, Lcom/android/internal/R$styleable;->TextView:[I

    const/4 v11, 0x0

    move-object/from16 v0, v86

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1183
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v54

    .line 1184
    .restart local v54    # "n":I
    const/16 v49, 0x0

    .restart local v49    # "i":I
    :goto_2
    move/from16 v0, v49

    move/from16 v1, v54

    if-ge v0, v1, :cond_4

    .line 1185
    move-object/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v21

    .line 1187
    .restart local v21    # "attr":I
    packed-switch v21, :pswitch_data_1

    .line 1184
    :cond_3
    :goto_3
    :pswitch_25
    add-int/lit8 v49, v49, 0x1

    goto :goto_2

    .line 1189
    :pswitch_26
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    .line 1190
    goto :goto_3

    .line 1193
    :pswitch_27
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v50

    .line 1194
    goto :goto_3

    .line 1197
    :pswitch_28
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v56

    .line 1198
    goto :goto_3

    .line 1201
    :pswitch_29
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    .line 1202
    goto :goto_3

    .line 1205
    :pswitch_2a
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v60

    .line 1206
    goto :goto_3

    .line 1209
    :pswitch_2b
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    .line 1210
    goto :goto_3

    .line 1213
    :pswitch_2c
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    .line 1214
    goto :goto_3

    .line 1217
    :pswitch_2d
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    .line 1218
    goto :goto_3

    .line 1221
    :pswitch_2e
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    .line 1222
    goto :goto_3

    .line 1225
    :pswitch_2f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    .line 1229
    :pswitch_30
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    .line 1233
    :pswitch_31
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    .line 1234
    goto/16 :goto_3

    .line 1237
    :pswitch_32
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    .line 1238
    goto/16 :goto_3

    .line 1241
    :pswitch_33
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 1242
    goto/16 :goto_3

    .line 1245
    :pswitch_34
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 1246
    goto/16 :goto_3

    .line 1249
    :pswitch_35
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    .line 1250
    goto/16 :goto_3

    .line 1253
    :pswitch_36
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 1254
    goto/16 :goto_3

    .line 1257
    :pswitch_37
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v34

    .line 1258
    goto/16 :goto_3

    .line 1261
    :pswitch_38
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 1265
    :pswitch_39
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 1269
    :pswitch_3a
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    .line 1273
    :pswitch_3b
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    .line 1277
    :pswitch_3c
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    .line 1281
    :pswitch_3d
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    .line 1285
    :pswitch_3e
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    .line 1289
    :pswitch_3f
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 1293
    :pswitch_40
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    .line 1297
    :pswitch_41
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 1301
    :pswitch_42
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    .line 1305
    :pswitch_43
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    .line 1309
    :pswitch_44
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 1313
    :pswitch_45
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    .line 1314
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_3

    .line 1315
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v78

    goto/16 :goto_3

    .line 1320
    :pswitch_46
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v80

    .line 1321
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_3

    .line 1322
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v78

    goto/16 :goto_3

    .line 1327
    :pswitch_47
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1328
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    .line 1333
    :pswitch_48
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v77

    .line 1334
    goto/16 :goto_3

    .line 1337
    :pswitch_49
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v42

    .line 1338
    goto/16 :goto_3

    .line 1341
    :pswitch_4a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    .line 1345
    :pswitch_4b
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1346
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    .line 1351
    :pswitch_4c
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1352
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    .line 1357
    :pswitch_4d
    const/4 v5, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    .line 1358
    goto/16 :goto_3

    .line 1361
    :pswitch_4e
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 1365
    :pswitch_4f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    .line 1369
    :pswitch_50
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v76

    .line 1370
    goto/16 :goto_3

    .line 1373
    :pswitch_51
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    .line 1374
    goto/16 :goto_3

    .line 1377
    :pswitch_52
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v39

    .line 1378
    goto/16 :goto_3

    .line 1381
    :pswitch_53
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v63

    .line 1382
    goto/16 :goto_3

    .line 1385
    :pswitch_54
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 1386
    goto/16 :goto_3

    .line 1389
    :pswitch_55
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v48

    .line 1390
    goto/16 :goto_3

    .line 1393
    :pswitch_56
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 1394
    goto/16 :goto_3

    .line 1397
    :pswitch_57
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v62

    .line 1398
    goto/16 :goto_3

    .line 1401
    :pswitch_58
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 1402
    goto/16 :goto_3

    .line 1405
    :pswitch_59
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v66

    .line 1406
    goto/16 :goto_3

    .line 1409
    :pswitch_5a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 1410
    goto/16 :goto_3

    .line 1413
    :pswitch_5b
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 1414
    goto/16 :goto_3

    .line 1417
    :pswitch_5c
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 1418
    goto/16 :goto_3

    .line 1421
    :pswitch_5d
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 1422
    goto/16 :goto_3

    .line 1425
    :pswitch_5e
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 1426
    goto/16 :goto_3

    .line 1429
    :pswitch_5f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 1430
    goto/16 :goto_3

    .line 1433
    :pswitch_60
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 1434
    goto/16 :goto_3

    .line 1437
    :pswitch_61
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 1438
    goto/16 :goto_3

    .line 1441
    :pswitch_62
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 1442
    goto/16 :goto_3

    .line 1445
    :pswitch_63
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .line 1446
    goto/16 :goto_3

    .line 1449
    :pswitch_64
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v75

    .line 1450
    goto/16 :goto_3

    .line 1453
    :pswitch_65
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v71

    .line 1454
    goto/16 :goto_3

    .line 1457
    :pswitch_66
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v73

    .line 1458
    goto/16 :goto_3

    .line 1461
    :pswitch_67
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    .line 1462
    goto/16 :goto_3

    .line 1465
    :pswitch_68
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v74

    .line 1466
    goto/16 :goto_3

    .line 1469
    :pswitch_69
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v70

    .line 1470
    goto/16 :goto_3

    .line 1473
    :pswitch_6a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    .line 1474
    goto/16 :goto_3

    .line 1477
    :pswitch_6b
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v69

    .line 1478
    goto/16 :goto_3

    .line 1481
    :pswitch_6c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 1485
    :pswitch_6d
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v82

    .line 1486
    goto/16 :goto_3

    .line 1489
    :pswitch_6e
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v81

    .line 1490
    goto/16 :goto_3

    .line 1493
    :pswitch_6f
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v83

    .line 1494
    goto/16 :goto_3

    .line 1497
    :pswitch_70
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v84

    .line 1498
    goto/16 :goto_3

    .line 1501
    :pswitch_71
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v85

    .line 1502
    goto/16 :goto_3

    .line 1505
    :pswitch_72
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v87

    .line 1506
    goto/16 :goto_3

    .line 1509
    :pswitch_73
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v79

    .line 1510
    goto/16 :goto_3

    .line 1513
    :pswitch_74
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1514
    goto/16 :goto_3

    .line 1517
    :pswitch_75
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v58

    .line 1518
    goto/16 :goto_3

    .line 1521
    :pswitch_76
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mSpacingAdd:F

    float-to-int v5, v5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    .line 1525
    :pswitch_77
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    .line 1529
    :pswitch_78
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    .line 1530
    goto/16 :goto_3

    .line 1533
    :pswitch_79
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1534
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1535
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v11, v11, Landroid/widget/Editor$InputContentType;->imeOptions:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v5, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_3

    .line 1540
    :pswitch_7a
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1541
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1542
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1546
    :pswitch_7b
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1547
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1548
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v11, v11, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v11, v11, Landroid/widget/Editor$InputContentType;->imeActionId:I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v5, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_3

    .line 1553
    :pswitch_7c
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1558
    :pswitch_7d
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1559
    :catch_0
    move-exception v40

    .line 1560
    .local v40, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "TextView"

    const-string v11, "Failure reading input extras"

    move-object/from16 v0, v40

    invoke-static {v5, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1561
    .end local v40    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v40

    .line 1562
    .local v40, "e":Ljava/io/IOException;
    const-string v5, "TextView"

    const-string v11, "Failure reading input extras"

    move-object/from16 v0, v40

    invoke-static {v5, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1567
    .end local v40    # "e":Ljava/io/IOException;
    :pswitch_7e
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_3

    .line 1571
    :pswitch_7f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    .line 1576
    :pswitch_80
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleLeftTopRes:I

    goto/16 :goto_3

    .line 1580
    :pswitch_81
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleRightTopRes:I

    goto/16 :goto_3

    .line 1586
    :pswitch_82
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupBackGroundRes:I

    goto/16 :goto_3

    .line 1590
    :pswitch_83
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupDividerRes:I

    goto/16 :goto_3

    .line 1594
    :pswitch_84
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupSelectAllRes:I

    goto/16 :goto_3

    .line 1598
    :pswitch_85
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupCopyRes:I

    goto/16 :goto_3

    .line 1602
    :pswitch_86
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupCutRes:I

    goto/16 :goto_3

    .line 1606
    :pswitch_87
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupPasteRes:I

    goto/16 :goto_3

    .line 1610
    :pswitch_88
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupTranslateRes:I

    goto/16 :goto_3

    .line 1614
    :pswitch_89
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupShareRes:I

    goto/16 :goto_3

    .line 1618
    :pswitch_8a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupWebSearchRes:I

    goto/16 :goto_3

    .line 1622
    :pswitch_8b
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupClipboardRes:I

    goto/16 :goto_3

    .line 1626
    :pswitch_8c
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditNewActionPopupDictionaryRes:I

    goto/16 :goto_3

    .line 1631
    :pswitch_8d
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    .line 1635
    :pswitch_8e
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    .line 1640
    :pswitch_8f
    const/4 v5, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mClipboardDataFormat:I

    goto/16 :goto_3

    .line 1644
    :pswitch_90
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_3

    .line 1648
    :pswitch_91
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto/16 :goto_3

    .line 1652
    :pswitch_92
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    goto/16 :goto_3

    .line 1656
    .end local v21    # "attr":I
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1658
    sget-object v24, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 1660
    .local v24, "bufferType":Landroid/widget/TextView$BufferType;
    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xfff

    move/from16 v88, v0

    .line 1662
    .local v88, "variation":I
    const/16 v5, 0x81

    move/from16 v0, v88

    if-ne v0, v5, :cond_17

    const/16 v59, 0x1

    .line 1664
    .local v59, "passwordInputType":Z
    :goto_4
    const/16 v5, 0xe1

    move/from16 v0, v88

    if-ne v0, v5, :cond_18

    const/16 v89, 0x1

    .line 1666
    .local v89, "webPasswordInputType":Z
    :goto_5
    const/16 v5, 0x12

    move/from16 v0, v88

    if-ne v0, v5, :cond_19

    const/16 v55, 0x1

    .line 1669
    .local v55, "numberPasswordInputType":Z
    :goto_6
    if-eqz v50, :cond_1b

    .line 1673
    :try_start_1
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v26

    .line 1679
    .local v26, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1680
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/method/KeyListener;

    iput-object v5, v11, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1687
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v51, :cond_1a

    move/from16 v5, v51

    :goto_7
    iput v5, v11, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    .line 1779
    .end local v26    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v89

    move/from16 v3, v55

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    .line 1782
    :cond_5
    if-eqz v67, :cond_6

    .line 1783
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1784
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput-boolean v11, v5, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 1786
    sget-object v5, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v24

    if-ne v0, v5, :cond_6

    .line 1787
    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1791
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v37

    move-object/from16 v3, v35

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1793
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1794
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1798
    move-object/from16 v0, p0

    move/from16 v1, v77

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1799
    move-object/from16 v0, p0

    move/from16 v1, v77

    move/from16 v2, v77

    move/from16 v3, v77

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 1801
    if-eqz v77, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    if-nez v5, :cond_7

    if-gez v42, :cond_7

    .line 1802
    const/16 v42, 0x3

    .line 1805
    :cond_7
    packed-switch v42, :pswitch_data_2

    .line 1827
    :goto_9
    if-eqz v81, :cond_2d

    .end local v81    # "textColor":Landroid/content/res/ColorStateList;
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1828
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1829
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1830
    if-eqz v82, :cond_8

    .line 1831
    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1833
    :cond_8
    move/from16 v0, v85

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1835
    if-eqz v18, :cond_9

    .line 1836
    new-instance v5, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1839
    :cond_9
    if-nez v58, :cond_a

    if-nez v59, :cond_a

    if-nez v89, :cond_a

    if-eqz v55, :cond_2e

    .line 1840
    :cond_a
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1850
    :cond_b
    :goto_b
    new-instance v57, Landroid/util/TypedValue;

    invoke-direct/range {v57 .. v57}, Landroid/util/TypedValue;-><init>()V

    .line 1851
    .local v57, "outValue":Landroid/util/TypedValue;
    const v5, 0x101046c

    const/4 v11, 0x0

    move-object/from16 v0, v86

    move-object/from16 v1, v57

    invoke-virtual {v0, v5, v1, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1852
    if-eqz v57, :cond_2f

    move-object/from16 v0, v57

    iget v5, v0, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_2f

    .line 1853
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    .line 1859
    :goto_c
    sget-boolean v5, Landroid/widget/TextView;->B_USE_LIGHT_FONT:Z

    if-eqz v5, :cond_c

    .line 1860
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_c

    const/4 v5, -0x1

    move/from16 v0, v87

    if-ne v0, v5, :cond_c

    if-nez v45, :cond_c

    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-nez v5, :cond_c

    .line 1862
    const-string/jumbo v45, "sec-roboto-light"

    .line 1867
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_30

    if-eqz v45, :cond_30

    const-string/jumbo v5, "sans-serif-light"

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1868
    const-string/jumbo v45, "sec-roboto-light"

    .line 1869
    const/16 v79, 0x0

    .line 1875
    :cond_d
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v87

    move/from16 v3, v79

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 1878
    sget-boolean v5, Landroid/widget/TextView;->B_USE_HINT_LIGHT_FONT:Z

    if-eqz v5, :cond_e

    .line 1879
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_e

    const/4 v5, -0x1

    move/from16 v0, v87

    if-ne v0, v5, :cond_e

    if-nez v47, :cond_e

    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-nez v5, :cond_e

    .line 1881
    const-string/jumbo v47, "sec-roboto-light"

    .line 1882
    const/16 v48, 0x0

    .line 1885
    :cond_e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    .line 1886
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    .line 1887
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    .line 1890
    if-eqz v76, :cond_f

    .line 1891
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v76

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1894
    :cond_f
    if-eqz v9, :cond_10

    move-object/from16 v5, p0

    .line 1895
    invoke-virtual/range {v5 .. v10}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 1898
    :cond_10
    if-eqz v15, :cond_11

    move-object/from16 v11, p0

    .line 1899
    invoke-virtual/range {v11 .. v16}, Landroid/widget/TextView;->addInnerShadowTextEffect(FFFIF)I

    .line 1902
    :cond_11
    if-eqz v71, :cond_12

    .line 1903
    move-object/from16 v0, p0

    move/from16 v1, v75

    move/from16 v2, v71

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 1906
    :cond_12
    if-eqz v68, :cond_13

    .line 1907
    move-object/from16 v0, p0

    move/from16 v1, v70

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    .line 1910
    :cond_13
    if-ltz v53, :cond_31

    .line 1911
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v11, 0x0

    new-instance v90, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v90

    move/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v90, v5, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1916
    :goto_e
    const/4 v5, -0x1

    move/from16 v0, v78

    if-eq v0, v5, :cond_14

    .line 1917
    move-object/from16 v0, p0

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setStringName(I)V

    .line 1918
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->fromResLock:Z

    .line 1921
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1922
    if-eqz v46, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1929
    :cond_15
    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1933
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    if-eqz v5, :cond_32

    :cond_16
    const/16 v44, 0x1

    .line 1934
    .local v44, "focusable":Z
    :goto_f
    move/from16 v28, v44

    .line 1935
    .local v28, "clickable":Z
    move/from16 v52, v44

    .line 1937
    .local v52, "longClickable":Z
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v54

    .line 1938
    const/16 v49, 0x0

    :goto_10
    move/from16 v0, v49

    move/from16 v1, v54

    if-ge v0, v1, :cond_33

    .line 1939
    move-object/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v21

    .line 1941
    .restart local v21    # "attr":I
    sparse-switch v21, :sswitch_data_0

    .line 1938
    :goto_11
    add-int/lit8 v49, v49, 0x1

    goto :goto_10

    .line 1662
    .end local v21    # "attr":I
    .end local v28    # "clickable":Z
    .end local v44    # "focusable":Z
    .end local v52    # "longClickable":Z
    .end local v55    # "numberPasswordInputType":Z
    .end local v57    # "outValue":Landroid/util/TypedValue;
    .end local v59    # "passwordInputType":Z
    .end local v89    # "webPasswordInputType":Z
    .restart local v81    # "textColor":Landroid/content/res/ColorStateList;
    :cond_17
    const/16 v59, 0x0

    goto/16 :goto_4

    .line 1664
    .restart local v59    # "passwordInputType":Z
    :cond_18
    const/16 v89, 0x0

    goto/16 :goto_5

    .line 1666
    .restart local v89    # "webPasswordInputType":Z
    :cond_19
    const/16 v55, 0x0

    goto/16 :goto_6

    .line 1674
    .restart local v55    # "numberPasswordInputType":Z
    :catch_2
    move-exception v43

    .line 1675
    .local v43, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v43

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1681
    .end local v43    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v26    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v43

    .line 1682
    .local v43, "ex":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v43

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1683
    .end local v43    # "ex":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v43

    .line 1684
    .local v43, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v43

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1687
    .end local v43    # "ex":Ljava/lang/IllegalAccessException;
    :cond_1a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v5}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v5

    goto/16 :goto_7

    .line 1690
    :catch_5
    move-exception v40

    .line 1691
    .local v40, "e":Ljava/lang/IncompatibleClassChangeError;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput v11, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1693
    .end local v26    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v40    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_1b
    if-eqz v30, :cond_1d

    .line 1694
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1695
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1699
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v51, :cond_1c

    move/from16 v5, v51

    :goto_12
    iput v5, v11, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_1c
    const/4 v5, 0x1

    goto :goto_12

    .line 1701
    :cond_1d
    if-eqz v51, :cond_1f

    .line 1702
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1, v5}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 1704
    invoke-static/range {v51 .. v51}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v5

    if-nez v5, :cond_1e

    const/16 v77, 0x1

    :goto_13
    goto/16 :goto_8

    :cond_1e
    const/16 v77, 0x0

    goto :goto_13

    .line 1705
    :cond_1f
    if-eqz v60, :cond_20

    .line 1706
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1707
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1708
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/16 v51, 0x3

    move/from16 v0, v51

    iput v0, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1709
    :cond_20
    if-eqz v56, :cond_25

    .line 1710
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v90, v0

    and-int/lit8 v5, v56, 0x2

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    move v11, v5

    :goto_14
    and-int/lit8 v5, v56, 0x4

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    :goto_15
    invoke-static {v11, v5}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    move-object/from16 v0, v90

    iput-object v5, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1713
    const/16 v51, 0x2

    .line 1714
    and-int/lit8 v5, v56, 0x2

    if-eqz v5, :cond_21

    .line 1715
    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x1000

    move/from16 v51, v0

    .line 1717
    :cond_21
    and-int/lit8 v5, v56, 0x4

    if-eqz v5, :cond_22

    .line 1718
    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x2000

    move/from16 v51, v0

    .line 1720
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v0, v51

    iput v0, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1711
    :cond_23
    const/4 v5, 0x0

    move v11, v5

    goto :goto_14

    :cond_24
    const/4 v5, 0x0

    goto :goto_15

    .line 1721
    :cond_25
    if-nez v23, :cond_26

    const/4 v5, -0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_27

    .line 1724
    :cond_26
    const/16 v51, 0x1

    .line 1726
    packed-switch v22, :pswitch_data_3

    .line 1743
    sget-object v27, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1747
    .local v27, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1748
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1749
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move/from16 v0, v51

    iput v0, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1728
    .end local v27    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_93
    sget-object v27, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1729
    .restart local v27    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x4000

    move/from16 v51, v0

    .line 1730
    goto :goto_16

    .line 1733
    .end local v27    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_94
    sget-object v27, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1734
    .restart local v27    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x2000

    move/from16 v51, v0

    .line 1735
    goto :goto_16

    .line 1738
    .end local v27    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_95
    sget-object v27, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1739
    .restart local v27    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x1000

    move/from16 v51, v0

    .line 1740
    goto :goto_16

    .line 1750
    .end local v27    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1752
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_28

    .line 1753
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1754
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput v11, v5, Landroid/widget/Editor;->mInputType:I

    .line 1756
    :cond_28
    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1758
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    .line 1759
    :cond_29
    if-eqz v41, :cond_2a

    .line 1760
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1761
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v11

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1762
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput v11, v5, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1764
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-object v11, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1766
    :cond_2b
    packed-switch v25, :pswitch_data_4

    goto/16 :goto_8

    .line 1768
    :pswitch_96
    sget-object v24, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 1769
    goto/16 :goto_8

    .line 1771
    :pswitch_97
    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1772
    goto/16 :goto_8

    .line 1774
    :pswitch_98
    sget-object v24, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1807
    :pswitch_99
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1810
    :pswitch_9a
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1813
    :pswitch_9b
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1816
    :pswitch_9c
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1817
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1818
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1823
    :goto_17
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1820
    :cond_2c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1821
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_17

    .line 1827
    :cond_2d
    const/high16 v5, -0x1000000

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v81

    goto/16 :goto_a

    .line 1843
    .end local v81    # "textColor":Landroid/content/res/ColorStateList;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v5, v5, 0xfff

    const/16 v11, 0x81

    if-ne v5, v11, :cond_b

    goto/16 :goto_b

    .line 1855
    .restart local v57    # "outValue":Landroid/util/TypedValue;
    :cond_2f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    goto/16 :goto_c

    .line 1870
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_d

    if-eqz v45, :cond_d

    const-string/jumbo v5, "sans-serif-medium"

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1871
    const-string/jumbo v45, "sec-roboto-light"

    .line 1872
    const/16 v79, 0x1

    goto/16 :goto_d

    .line 1913
    :cond_31
    sget-object v5, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_e

    .line 1933
    :cond_32
    const/16 v44, 0x0

    goto/16 :goto_f

    .line 1943
    .restart local v21    # "attr":I
    .restart local v28    # "clickable":Z
    .restart local v44    # "focusable":Z
    .restart local v52    # "longClickable":Z
    :sswitch_0
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v44

    .line 1944
    goto/16 :goto_11

    .line 1947
    :sswitch_1
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    .line 1948
    goto/16 :goto_11

    .line 1951
    :sswitch_2
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    goto/16 :goto_11

    .line 1955
    .end local v21    # "attr":I
    :cond_33
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1957
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1958
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1959
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_34

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1964
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_35

    .line 1965
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    .line 1970
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_36

    .line 1971
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1975
    :cond_36
    new-instance v5, Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/TextView$IClipboardDataPasteEventImpl;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    .line 1979
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHoverUIFeatureLevel()I

    move-result v5

    const/4 v11, 0x2

    if-lt v5, v11, :cond_37

    .line 1980
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1983
    :cond_37
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_38

    .line 1984
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/widget/TextView;->fromResLock:Z

    .line 1988
    :cond_38
    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mWBMaxLength:I

    .line 1991
invoke-virtual/range {p0 .. p3}, Landroid/widget/TextView;->tos_TextView_init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void

    .line 1005
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_6
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_e
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 1187
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_25
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_6e
        :pswitch_6d
        :pswitch_6f
        :pswitch_70
        :pswitch_49
        :pswitch_44
        :pswitch_2f
        :pswitch_30
        :pswitch_3f
        :pswitch_39
        :pswitch_43
        :pswitch_3d
        :pswitch_2d
        :pswitch_46
        :pswitch_45
        :pswitch_4e
        :pswitch_4c
        :pswitch_38
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3e
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_47
        :pswitch_75
        :pswitch_48
        :pswitch_2e
        :pswitch_4b
        :pswitch_4d
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_27
        :pswitch_2c
        :pswitch_2b
        :pswitch_26
        :pswitch_4f
        :pswitch_32
        :pswitch_34
        :pswitch_31
        :pswitch_33
        :pswitch_37
        :pswitch_76
        :pswitch_77
        :pswitch_4a
        :pswitch_78
        :pswitch_7c
        :pswitch_7d
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7f
        :pswitch_8d
        :pswitch_8e
        :pswitch_25
        :pswitch_25
        :pswitch_91
        :pswitch_25
        :pswitch_25
        :pswitch_7e
        :pswitch_90
        :pswitch_92
        :pswitch_35
        :pswitch_36
        :pswitch_74
        :pswitch_80
        :pswitch_81
        :pswitch_8f
        :pswitch_25
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8b
        :pswitch_25
        :pswitch_25
        :pswitch_8a
        :pswitch_8c
        :pswitch_54
        :pswitch_56
        :pswitch_58
        :pswitch_55
        :pswitch_57
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
    .end packed-switch

    .line 1805
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
    .end packed-switch

    .line 1941
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1d -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch

    .line 1726
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_93
        :pswitch_94
        :pswitch_95
    .end packed-switch

    .line 1766
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_96
        :pswitch_97
        :pswitch_98
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/widget/TextView;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Landroid/widget/TextView;->pasteCipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 283
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectall:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 283
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 283
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    return v0
.end method

.method private addOuterGlowTextEffect(FI[I[F[FF)I
    .locals 7
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "colors"    # [I
    .param p4, "alphas"    # [F
    .param p5, "positions"    # [F
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 3681
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->addOuterGlowTextEffect(FI[I[F[FF)I

    move-result v0

    return v0
.end method

.method private addStrokeTextEffect(FIFII)I
    .locals 6
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F
    .param p4, "joinStyle"    # I
    .param p5, "position"    # I

    .prologue
    .line 3648
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->addStrokeTextEffect(FIFII)I

    move-result v0

    return v0
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .param p1, "singleLine"    # Z
    .param p2, "applyTransformation"    # Z
    .param p3, "changeMaxLines"    # Z

    .prologue
    const/4 v0, 0x1

    .line 8594
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 8595
    if-eqz p1, :cond_1

    .line 8596
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 8597
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 8598
    if-eqz p2, :cond_0

    .line 8599
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8610
    :cond_0
    :goto_0
    return-void

    .line 8602
    :cond_1
    if-eqz p3, :cond_2

    .line 8603
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 8605
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 8606
    if-eqz p2, :cond_0

    .line 8607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    .line 7334
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 7336
    .local v1, "width":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 7337
    const/4 v1, 0x0

    .line 7340
    :cond_0
    move v2, v1

    .line 7342
    .local v2, "physicalWidth":I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    .line 7343
    const/high16 v1, 0x100000

    .line 7346
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7348
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 15

    .prologue
    const/16 v14, 0x50

    const/4 v11, 0x1

    .line 8114
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 8115
    .local v4, "layout":Landroid/text/Layout;
    :goto_0
    const/4 v6, 0x0

    .line 8116
    .local v6, "line":I
    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_0

    .line 8117
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 8120
    :cond_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 8121
    .local v0, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 8122
    .local v1, "dir":I
    iget v12, p0, Landroid/view/View;->mRight:I

    iget v13, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v2, v12, v13

    .line 8123
    .local v2, "hspace":I
    iget v12, p0, Landroid/view/View;->mBottom:I

    iget v13, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v13

    sub-int v10, v12, v13

    .line 8124
    .local v10, "vspace":I
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 8129
    .local v3, "ht":I
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_5

    .line 8130
    if-ne v1, v11, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 8137
    :cond_1
    :goto_1
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_9

    .line 8143
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->floor(F)F

    move-result v12

    float-to-int v5, v12

    .line 8144
    .local v5, "left":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v7, v12

    .line 8146
    .local v7, "right":I
    sub-int v12, v7, v5

    if-ge v12, v2, :cond_7

    .line 8147
    add-int v12, v7, v5

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, v2, 0x2

    sub-int v8, v12, v13

    .line 8162
    .end local v5    # "left":I
    .end local v7    # "right":I
    .local v8, "scrollx":I
    :goto_2
    if-ge v3, v10, :cond_b

    .line 8163
    const/4 v9, 0x0

    .line 8172
    .local v9, "scrolly":I
    :goto_3
    iget v12, p0, Landroid/view/View;->mScrollX:I

    if-ne v8, v12, :cond_2

    iget v12, p0, Landroid/view/View;->mScrollY:I

    if-eq v9, v12, :cond_d

    .line 8173
    :cond_2
    invoke-virtual {p0, v8, v9}, Landroid/view/View;->scrollTo(II)V

    .line 8176
    :goto_4
    return v11

    .line 8114
    .end local v0    # "a":Landroid/text/Layout$Alignment;
    .end local v1    # "dir":I
    .end local v2    # "hspace":I
    .end local v3    # "ht":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v8    # "scrollx":I
    .end local v9    # "scrolly":I
    .end local v10    # "vspace":I
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_0

    .line 8130
    .restart local v0    # "a":Landroid/text/Layout$Alignment;
    .restart local v1    # "dir":I
    .restart local v2    # "hspace":I
    .restart local v3    # "ht":I
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v6    # "line":I
    .restart local v10    # "vspace":I
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 8132
    :cond_5
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_1

    .line 8133
    if-ne v1, v11, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_5
    goto :goto_1

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 8149
    .restart local v5    # "left":I
    .restart local v7    # "right":I
    :cond_7
    if-gez v1, :cond_8

    .line 8150
    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 8152
    .end local v8    # "scrollx":I
    :cond_8
    move v8, v5

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 8155
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_9
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_a

    .line 8156
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v7, v12

    .line 8157
    .restart local v7    # "right":I
    sub-int v8, v7, v2

    .line 8158
    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 8159
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_a
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->floor(F)F

    move-result v12

    float-to-int v8, v12

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 8165
    :cond_b
    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_c

    .line 8166
    sub-int v9, v3, v10

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 8168
    .end local v9    # "scrolly":I
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 8176
    :cond_d
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private canMarquee()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8754
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 8755
    .local v0, "width":I
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 9594
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 8047
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    .line 8053
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 8054
    .local v7, "oldht":I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 8055
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    move v2, v6

    .line 8062
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 8066
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    .line 8068
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 8070
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8094
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :goto_1
    return-void

    .line 8055
    .restart local v1    # "want":I
    .restart local v7    # "oldht":I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    .line 8076
    .restart local v2    # "hintWant":I
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 8078
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 8085
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8086
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 8090
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8091
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8092
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 8002
    const/4 v2, 0x0

    .line 8004
    .local v2, "sizeChanged":Z
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_1

    .line 8006
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    .line 8007
    const/4 v2, 0x1

    .line 8008
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8012
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_4

    .line 8013
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 8015
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 8016
    const/4 v2, 0x1

    .line 8029
    .end local v0    # "desiredHeight":I
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 8030
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 8031
    .local v1, "root":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 8032
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 8034
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8037
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_3
    return-void

    .line 8018
    :cond_4
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 8019
    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v3, :cond_1

    .line 8020
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 8022
    .restart local v0    # "desiredHeight":I
    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v3, :cond_1

    .line 8023
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private compressText(F)Z
    .locals 7
    .param p1, "width"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 7676
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7694
    :cond_0
    :goto_0
    return v2

    .line 7679
    :cond_1
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 7681
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 7682
    .local v1, "textWidth":F
    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    .line 7683
    .local v0, "overflow":F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_0

    const v4, 0x3d8f5c29    # 0.07f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    .line 7684
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a    # 0.005f

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 7685
    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    .line 7690
    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 8457
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 8458
    .local v0, "horizontalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 8459
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 8461
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 8462
    .local v1, "verticalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 8463
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 8464
    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    .prologue
    .line 10876
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    .line 10877
    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 10879
    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    .line 7698
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7699
    .local v2, "n":I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 7700
    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 7705
    .local v1, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 7706
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 7707
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 7708
    const/4 v4, -0x1

    .line 7716
    :goto_1
    return v4

    .line 7705
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7712
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 7713
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 7712
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7716
    :cond_2
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "otherEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 6803
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v5, v6

    .line 6972
    :cond_0
    :goto_0
    return v5

    .line 6812
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6813
    iput-boolean v6, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 6816
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 6905
    :cond_3
    :goto_1
    const/16 v4, 0x43

    if-ne p1, v4, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 6906
    iput v6, p0, Landroid/widget/TextView;->mLastKeyCode:I

    .line 6912
    :goto_2
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v4, :cond_d

    .line 6913
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 6915
    const/4 v2, 0x1

    .line 6916
    .local v2, "doDown":Z
    if-eqz p3, :cond_c

    .line 6918
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 6919
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v9, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v9, p0, v4, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v3

    .line 6921
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6922
    const/4 v2, 0x0

    .line 6923
    if-eqz v3, :cond_b

    .line 6930
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_0

    .line 6818
    .end local v2    # "doDown":Z
    .end local v3    # "handled":Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6823
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v4, :cond_4

    .line 6826
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v4, v4, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v4, v4, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v4, p0, v6, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6829
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v4, Landroid/widget/Editor$InputContentType;->enterDown:Z

    goto :goto_0

    .line 6838
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6840
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v6

    .line 6841
    goto/16 :goto_0

    .line 6849
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6852
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 6853
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v4, :cond_6

    iget v4, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_6

    .line 6856
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v4, v4, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v4, v4, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v4, p0, v6, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6859
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v4, Landroid/widget/Editor$InputContentType;->enterDown:Z

    goto/16 :goto_0

    .line 6864
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v6

    .line 6865
    goto/16 :goto_0

    .line 6871
    .end local v1    # "config":Landroid/content/res/Configuration;
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6872
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v6

    .line 6873
    goto/16 :goto_0

    .line 6881
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v9, "clipboardEx"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 6882
    .local v0, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6883
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto/16 :goto_0

    .line 6888
    :cond_8
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_9

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v4, v4, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v4, :cond_3

    .line 6889
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto/16 :goto_0

    .line 6896
    .end local v0    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :sswitch_4
    iget v4, p0, Landroid/widget/TextView;->mLastAction:I

    if-eq v4, v8, :cond_3

    .line 6897
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    invoke-virtual {p0, v4, v9, v10}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    goto/16 :goto_1

    .line 6908
    :cond_a
    iput p1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    goto/16 :goto_2

    .line 6930
    .restart local v2    # "doDown":Z
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v4

    .line 6926
    :catch_0
    move-exception v4

    .line 6930
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6934
    :cond_c
    if-eqz v2, :cond_d

    .line 6935
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 6936
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v9, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Editable;

    invoke-interface {v9, p0, v4, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 6938
    .restart local v3    # "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6939
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 6940
    if-eqz v3, :cond_d

    move v5, v7

    goto/16 :goto_0

    .line 6947
    .end local v2    # "doDown":Z
    .end local v3    # "handled":Z
    :cond_d
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_10

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_10

    .line 6948
    const/4 v2, 0x1

    .line 6949
    .restart local v2    # "doDown":Z
    if-eqz p3, :cond_e

    .line 6951
    :try_start_1
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v9, p0, v4, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 6953
    .restart local v3    # "handled":Z
    const/4 v2, 0x0

    .line 6954
    if-nez v3, :cond_0

    .line 6962
    .end local v3    # "handled":Z
    :cond_e
    :goto_3
    if-eqz v2, :cond_10

    .line 6963
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v9, p0, v4, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6964
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_f

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 6965
    iput-boolean v7, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_f
    move v5, v8

    .line 6967
    goto/16 :goto_0

    .line 6972
    .end local v2    # "doDown":Z
    :cond_10
    iget-boolean v4, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz v4, :cond_11

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_11

    move v4, v5

    :goto_4
    move v5, v4

    goto/16 :goto_0

    :cond_11
    move v4, v6

    goto :goto_4

    .line 6957
    .restart local v2    # "doDown":Z
    :catch_1
    move-exception v4

    goto :goto_3

    .line 6816
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
        0x43 -> :sswitch_4
    .end sparse-switch
.end method

.method private drawTextStrikethrough(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 11837
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v13

    .line 11838
    .local v13, "leftPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v18

    .line 11839
    .local v18, "rightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v21

    .line 11840
    .local v21, "topPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v9

    .line 11842
    .local v9, "bottomPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v14

    .line 11843
    .local v14, "lineCount":I
    const/4 v3, 0x0

    .line 11845
    .local v3, "lineY":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    .line 11848
    .local v20, "textLayout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/TextView;->mAssociatedCheckBoxChecked:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_9

    if-lez v14, :cond_9

    .line 11854
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 11856
    new-array v7, v14, [F

    .line 11857
    .local v7, "accumLineWidths":[F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_1

    .line 11858
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    aput v1, v7, v12

    .line 11859
    if-lez v12, :cond_0

    .line 11860
    aget v1, v7, v12

    add-int/lit8 v4, v12, -0x1

    aget v4, v7, v4

    add-float/2addr v1, v4

    aput v1, v7, v12

    .line 11857
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 11865
    :cond_1
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    aget v22, v7, v1

    .line 11866
    .local v22, "totalLineWidth":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    mul-float v19, v22, v1

    .line 11868
    .local v19, "strikethroughCurrLength":F
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v14, :cond_9

    .line 11869
    if-nez v12, :cond_5

    const/16 v16, 0x0

    .line 11870
    .local v16, "lowerBound":F
    :goto_2
    aget v23, v7, v12

    .line 11872
    .local v23, "upperBound":F
    const/4 v10, 0x0

    .line 11873
    .local v10, "currentLineLength":F
    cmpg-float v1, v19, v16

    if-gtz v1, :cond_6

    .line 11874
    const/4 v10, 0x0

    .line 11882
    :cond_2
    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    .line 11883
    .local v11, "dir":I
    int-to-float v2, v13

    .line 11884
    .local v2, "leftOffset":F
    if-gez v11, :cond_3

    .line 11885
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isRTLLanguage()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 11886
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    .line 11887
    .local v17, "offset":I
    if-eqz v17, :cond_3

    .line 11888
    invoke-virtual/range {v20 .. v20}, Landroid/text/Layout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float v2, v1, v10

    .line 11895
    .end local v17    # "offset":I
    :cond_3
    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    add-int v1, v1, v21

    int-to-float v15, v1

    .line 11896
    .local v15, "lineTop":F
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int v1, v1, v21

    int-to-float v8, v1

    .line 11897
    .local v8, "baseLine":F
    if-nez v12, :cond_4

    .line 11899
    invoke-virtual/range {v20 .. v20}, Landroid/text/Layout;->getTopPadding()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v15, v1

    .line 11904
    :cond_4
    sub-float v1, v8, v15

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v1, v4

    add-float v3, v15, v1

    .line 11908
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 11910
    add-float v4, v2, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11868
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 11869
    .end local v2    # "leftOffset":F
    .end local v8    # "baseLine":F
    .end local v10    # "currentLineLength":F
    .end local v11    # "dir":I
    .end local v15    # "lineTop":F
    .end local v16    # "lowerBound":F
    .end local v23    # "upperBound":F
    :cond_5
    add-int/lit8 v1, v12, -0x1

    aget v16, v7, v1

    goto :goto_2

    .line 11875
    .restart local v10    # "currentLineLength":F
    .restart local v16    # "lowerBound":F
    .restart local v23    # "upperBound":F
    :cond_6
    cmpl-float v1, v19, v16

    if-lez v1, :cond_7

    cmpg-float v1, v19, v23

    if-gtz v1, :cond_7

    .line 11877
    sub-float v10, v19, v16

    goto :goto_3

    .line 11878
    :cond_7
    cmpl-float v1, v19, v23

    if-lez v1, :cond_2

    .line 11879
    sub-float v10, v23, v16

    goto :goto_3

    .line 11891
    .restart local v2    # "leftOffset":F
    .restart local v11    # "dir":I
    :cond_8
    invoke-virtual/range {v20 .. v20}, Landroid/text/Layout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float v2, v1, v10

    goto :goto_4

    .line 11913
    .end local v2    # "leftOffset":F
    .end local v7    # "accumLineWidths":[F
    .end local v10    # "currentLineLength":F
    .end local v11    # "dir":I
    .end local v12    # "i":I
    .end local v16    # "lowerBound":F
    .end local v19    # "strikethroughCurrLength":F
    .end local v22    # "totalLineWidth":F
    .end local v23    # "upperBound":F
    :cond_9
    return-void
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2386
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 2387
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 2388
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 2389
    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 2395
    :goto_0
    return-void

    .line 2391
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 2392
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 2393
    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5689
    const/4 v4, 0x0

    .line 5690
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5692
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5693
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 5694
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5697
    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 5698
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5700
    .local v0, "boxht":I
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5701
    .local v3, "textht":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 5702
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 5703
    sub-int v4, v0, v3

    .line 5708
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_1
    return v4

    .line 5700
    .restart local v0    # "boxht":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 5705
    .restart local v3    # "textht":I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "l"    # Landroid/text/Layout;

    .prologue
    .line 5658
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 5659
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .line 5662
    .local v1, "padding":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2

    .line 5658
    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    .line 5659
    .restart local v0    # "opticalInsets":Landroid/graphics/Insets;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_1
.end method

.method private getCurrentLocaleAsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4563
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 4564
    .local v0, "loc":Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 7939
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "cap"    # Z

    .prologue
    const/4 v6, 0x1

    .line 7945
    if-nez p1, :cond_0

    .line 7946
    const/4 v0, 0x0

    .line 7994
    :goto_0
    return v0

    .line 7949
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7950
    .local v2, "linecount":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 7951
    .local v3, "pad":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7953
    .local v0, "desired":I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 7954
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    .line 7955
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7956
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7959
    :cond_1
    add-int/2addr v0, v3

    .line 7961
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    .line 7966
    if-eqz p2, :cond_3

    .line 7967
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    .line 7968
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7970
    if-eqz v1, :cond_2

    .line 7971
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7972
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7975
    :cond_2
    add-int/2addr v0, v3

    .line 7976
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 7983
    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    .line 7984
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    .line 7985
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 7992
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7994
    goto :goto_0

    .line 7980
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 7988
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "line"    # I

    .prologue
    .line 8447
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 8452
    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 8453
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 8454
    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7352
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 7396
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7399
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v0

    .line 7354
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 7371
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7372
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7356
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7357
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7359
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 7360
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7362
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7363
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7365
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 7366
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7368
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 7369
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7376
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7377
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7379
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 7380
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7382
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 7383
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 7385
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 7387
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    goto :goto_0

    .line 7385
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 7389
    :pswitch_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7391
    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_2
    goto :goto_0

    .line 7389
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    .line 7352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 7354
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method private getOffsetAtCoordinate(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    .line 10684
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 10685
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 11470
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 11471
    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 11472
    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11473
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 11474
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 11475
    return-object v1
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "def"    # I

    .prologue
    .line 9526
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 9528
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 9531
    .end local p2    # "def":I
    :goto_0
    return p2

    .restart local p2    # "def":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v4, -0x1

    .line 9498
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 9501
    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-nez v2, :cond_0

    .line 9502
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 9504
    .local v0, "ap":I
    if-eq v0, v4, :cond_0

    .line 9506
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 9508
    .local v1, "appearance":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 9510
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9514
    .end local v0    # "ap":I
    .end local v1    # "appearance":Landroid/content/res/TypedArray;
    :cond_0
    return-object v2
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1
    .param p1, "allowNullLocale"    # Z

    .prologue
    .line 9614
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    .line 9617
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    goto :goto_0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 6200
    const/4 v0, 0x0

    .line 6201
    .local v0, "highlight":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 6203
    .local v1, "highlightPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 6204
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 6205
    .local v2, "selEnd":I
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    if-ltz v3, :cond_3

    .line 6206
    if-ne v3, v2, :cond_4

    .line 6207
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-wide v6, v6, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 6210
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v4, :cond_2

    .line 6211
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 6212
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 6213
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3, v5, v6}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 6214
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->updateCursorsPositions()V

    .line 6215
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6219
    :cond_2
    iget v4, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 6220
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6221
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 6238
    :cond_3
    :goto_0
    return-object v0

    .line 6224
    :cond_4
    iget-boolean v4, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v4, :cond_6

    .line 6225
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v4, :cond_5

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 6226
    :cond_5
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 6227
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 6228
    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6232
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 6233
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6235
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_0
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 5155
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private invalidateCursor(III)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 5761
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    .line 5762
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5763
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5764
    .local v0, "end":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 5766
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    return-void
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 5050
    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 5159
    and-int/lit16 v0, p0, 0xfff

    .line 5161
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShowingHint()Z
    .locals 1

    .prologue
    .line 8107
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 5177
    and-int/lit16 v0, p0, 0xfff

    .line 5179
    .local v0, "variation":I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logLetterMode(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 5256
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5285
    :cond_0
    :goto_0
    return-void

    .line 5265
    :cond_1
    and-int/lit8 v0, p1, 0xf

    .line 5267
    .local v0, "cls":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5270
    const/4 v1, 0x0

    .line 5272
    .local v1, "shift":I
    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_2

    .line 5273
    const/4 v1, 0x2

    .line 5282
    :goto_1
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>KEYSELECT: SHIFT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5274
    :cond_2
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_3

    .line 5275
    const/4 v1, 0x3

    goto :goto_1

    .line 5276
    :cond_3
    and-int/lit16 v2, p1, 0x4000

    if-eqz v2, :cond_4

    .line 5277
    const/4 v1, 0x1

    goto :goto_1

    .line 5279
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 37
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .prologue
    .line 7558
    const/4 v15, 0x0

    .line 7559
    .local v15, "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .line 7561
    .local v17, "transformed":Ljava/lang/CharSequence;
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 7562
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7563
    .local v5, "len":I
    new-array v3, v5, [C

    .line 7564
    .local v3, "chars":[C
    new-array v9, v5, [F

    .line 7565
    .local v9, "widths":[F
    const/4 v2, 0x1

    new-array v0, v2, [C

    move-object/from16 v30, v0

    const/4 v2, 0x0

    const/16 v4, 0x2026

    aput-char v4, v30, v2

    .line 7567
    .local v30, "ELLIPSIS_NORMAL":[C
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 7569
    new-instance v34, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    sub-int v4, v5, v4

    move-object/from16 v0, v34

    invoke-direct {v0, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 7570
    .local v34, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v36

    .line 7571
    .local v36, "tmpwid":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v2, v0, v4, v6}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v31

    .line 7573
    .local v31, "ellipsWid":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    if-nez v2, :cond_2

    .line 7574
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 7608
    .end local v3    # "chars":[C
    .end local v5    # "len":I
    .end local v9    # "widths":[F
    .end local v15    # "result":Landroid/text/Layout;
    .end local v30    # "ELLIPSIS_NORMAL":[C
    .end local v31    # "ellipsWid":F
    .end local v34    # "s":Ljava/lang/String;
    .end local v36    # "tmpwid":F
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_a

    .line 7609
    new-instance v15, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_9

    move-object/from16 v25, p6

    :goto_1
    move/from16 v19, p1

    move-object/from16 v20, p4

    move/from16 v26, p3

    invoke-direct/range {v15 .. v26}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 7672
    .restart local v15    # "result":Landroid/text/Layout;
    :cond_1
    :goto_2
    return-object v15

    .line 7576
    .restart local v3    # "chars":[C
    .restart local v5    # "len":I
    .restart local v9    # "widths":[F
    .restart local v30    # "ELLIPSIS_NORMAL":[C
    .restart local v31    # "ellipsWid":F
    .restart local v34    # "s":Ljava/lang/String;
    .restart local v36    # "tmpwid":F
    :cond_2
    add-float v2, v36, v31

    move/from16 v0, p3

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 7577
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 7579
    :cond_3
    const/16 v32, 0x0

    .local v32, "i":I
    const/16 v35, 0x0

    .line 7580
    .local v35, "sum":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, v5

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v33

    .line 7582
    .local v33, "ret":F
    const/16 v32, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_4

    .line 7583
    move/from16 v0, v35

    int-to-float v2, v0

    aget v4, v9, v32

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v35, v0

    .line 7584
    move/from16 v0, v35

    int-to-float v2, v0

    cmpg-float v2, v31, v2

    if-gtz v2, :cond_5

    .line 7588
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_8

    .line 7589
    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-char v4, v30, v4

    aput-char v4, v3, v2

    .line 7590
    const/16 v32, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_6

    .line 7591
    const v2, 0xfeff

    aput-char v2, v3, v32

    .line 7590
    add-int/lit8 v32, v32, 0x1

    goto :goto_4

    .line 7582
    :cond_5
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    .line 7593
    :cond_6
    new-instance v34, Ljava/lang/String;

    .end local v34    # "s":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-direct {v0, v3, v2, v5}, Ljava/lang/String;-><init>([CII)V

    .line 7594
    .restart local v34    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_7

    .line 7595
    new-instance v14, Landroid/text/SpannableString;

    move-object/from16 v0, v34

    invoke-direct {v14, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7596
    .local v14, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    const/4 v11, 0x0

    const-class v13, Ljava/lang/Object;

    const/4 v15, 0x0

    move v12, v5

    invoke-static/range {v10 .. v15}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 7597
    .end local v15    # "result":Landroid/text/Layout;
    move-object/from16 v17, v14

    .line 7601
    .end local v14    # "ss":Landroid/text/SpannableString;
    :goto_5
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_0

    .line 7599
    .restart local v15    # "result":Landroid/text/Layout;
    :cond_7
    move-object/from16 v17, v34

    goto :goto_5

    .line 7603
    :cond_8
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_0

    .line 7609
    .end local v3    # "chars":[C
    .end local v5    # "len":I
    .end local v9    # "widths":[F
    .end local v15    # "result":Landroid/text/Layout;
    .end local v30    # "ELLIPSIS_NORMAL":[C
    .end local v31    # "ellipsWid":F
    .end local v32    # "i":I
    .end local v33    # "ret":F
    .end local v34    # "s":Ljava/lang/String;
    .end local v35    # "sum":I
    .end local v36    # "tmpwid":F
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 7614
    :cond_a
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 7615
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v4, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    .line 7616
    if-eqz p2, :cond_b

    .line 7617
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7621
    :cond_b
    if-eqz p2, :cond_13

    .line 7622
    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_e

    if-eqz p6, :cond_c

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_e

    .line 7624
    :cond_c
    if-eqz p7, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_d

    .line 7625
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    .line 7634
    .restart local v15    # "result":Landroid/text/Layout;
    :goto_6
    if-eqz p7, :cond_1

    move-object v2, v15

    .line 7635
    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_2

    .line 7629
    .end local v15    # "result":Landroid/text/Layout;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-static/range {v17 .. v24}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    .restart local v15    # "result":Landroid/text/Layout;
    goto :goto_6

    .line 7637
    .end local v15    # "result":Landroid/text/Layout;
    :cond_e
    if-eqz p5, :cond_10

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_10

    .line 7638
    if-eqz p7, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_f

    .line 7639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .line 7644
    .end local v15    # "result":Landroid/text/Layout;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-static/range {v17 .. v26}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .line 7649
    .end local v15    # "result":Landroid/text/Layout;
    :cond_10
    if-eqz p5, :cond_12

    .line 7650
    new-instance v15, Landroid/text/StaticLayout;

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_7
    move-object/from16 v16, v15

    move/from16 v21, p1

    move-object/from16 v22, p4

    move-object/from16 v27, p6

    move/from16 v28, p3

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .end local v15    # "result":Landroid/text/Layout;
    :cond_11
    const v29, 0x7fffffff

    goto :goto_7

    .line 7656
    :cond_12
    new-instance v15, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v16, v15

    move/from16 v19, p1

    move-object/from16 v20, p4

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .line 7660
    .end local v15    # "result":Landroid/text/Layout;
    :cond_13
    if-eqz p5, :cond_15

    .line 7661
    new-instance v15, Landroid/text/StaticLayout;

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_8
    move-object/from16 v16, v15

    move/from16 v21, p1

    move-object/from16 v22, p4

    move-object/from16 v27, p6

    move/from16 v28, p3

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .end local v15    # "result":Landroid/text/Layout;
    :cond_14
    const v29, 0x7fffffff

    goto :goto_8

    .line 7667
    :cond_15
    new-instance v15, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v16, v15

    move/from16 v19, p1

    move-object/from16 v20, p4

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2
.end method

.method private nullLayouts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7314
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 7315
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 7317
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 7318
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 7321
    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7323
    iput-object v1, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v1, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7326
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 7327
    :cond_2
    return-void
.end method

.method private paste(II)V
    .locals 18
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 10537
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v15}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v15

    if-nez v15, :cond_4

    .line 10538
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "clipboard"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    .line 10541
    .local v5, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v5}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    .line 10542
    .local v3, "clip":Landroid/content/ClipData;
    if-eqz v3, :cond_4

    .line 10543
    const/4 v8, 0x0

    .line 10544
    .local v8, "didFirst":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v15

    if-ge v10, v15, :cond_2

    .line 10545
    invoke-virtual {v3, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 10546
    .local v13, "paste":Ljava/lang/CharSequence;
    if-eqz v13, :cond_0

    .line 10547
    if-nez v8, :cond_1

    .line 10548
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v11

    .line 10549
    .local v11, "minMax":J
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    .line 10550
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p2

    .line 10551
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Spannable;

    move/from16 v0, p2

    invoke-static {v15, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10552
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Editable;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v15, v0, v1, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10553
    const/4 v8, 0x1

    .line 10544
    .end local v11    # "minMax":J
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 10555
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Editable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    const-string v17, "\n"

    invoke-interface/range {v15 .. v17}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10556
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Editable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v15, v0, v13}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 10560
    .end local v13    # "paste":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10561
    const-wide/16 v15, 0x0

    sput-wide v15, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    .line 10631
    .end local v3    # "clip":Landroid/content/ClipData;
    .end local v5    # "clipboard":Landroid/content/ClipboardManager;
    .end local v8    # "didFirst":Z
    .end local v10    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 10568
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "clipboardEx"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/clipboard/ClipboardExManager;

    .line 10571
    .local v4, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    if-eqz v4, :cond_3

    .line 10572
    invoke-virtual {v4}, Landroid/sec/clipboard/ClipboardExManager;->getFrozenState()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 10574
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    .line 10575
    .local v7, "clipdataTemp":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v4, v7}, Landroid/sec/clipboard/ClipboardExManager;->callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V

    goto :goto_2

    .line 10579
    .end local v7    # "clipdataTemp":Landroid/sec/clipboard/data/ClipboardData;
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v6

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 10581
    .local v6, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v6, :cond_3

    .line 10582
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v13

    .line 10584
    .restart local v13    # "paste":Ljava/lang/CharSequence;
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 10585
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v11

    .line 10586
    .restart local v11    # "minMax":J
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    .line 10587
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p2

    .line 10588
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Spannable;

    move/from16 v0, p2

    invoke-static {v15, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10589
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v15, v15, Landroid/text/Spanned;

    if-eqz v15, :cond_6

    .line 10590
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 10591
    .local v14, "sp":Landroid/text/Spannable;
    move-object v13, v14

    .line 10593
    .end local v14    # "sp":Landroid/text/Spannable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v15, Landroid/text/Editable;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v15, v0, v1, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10594
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 10595
    const-wide/16 v15, 0x0

    sput-wide v15, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 10598
    .end local v6    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v11    # "minMax":J
    .end local v13    # "paste":Ljava/lang/CharSequence;
    :catch_0
    move-exception v9

    .line 10599
    .local v9, "e":Ljava/lang/ClassCastException;
    const-string v15, "TextView"

    const-string/jumbo v16, "skip to paste clipdata - ClassCastException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private pasteCipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 23
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 447
    const/4 v8, 0x0

    .line 448
    .local v8, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 450
    .local v7, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 452
    .local v13, "prevString":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v20

    if-nez v20, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    if-eqz p1, :cond_0

    .line 464
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .line 466
    .local v15, "selStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    .line 468
    .local v14, "selEnd":I
    const/16 v20, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 469
    const/16 v20, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 471
    .end local v14    # "selEnd":I
    .end local v15    # "selStart":I
    :cond_2
    const/4 v12, 0x0

    .line 472
    .local v12, "paste":Ljava/lang/CharSequence;
    const/16 v17, -0x1

    .line 474
    .local v17, "stringId":I
    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 507
    :goto_1
    :pswitch_0
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 508
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7, v12}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v9

    .line 510
    .local v9, "minMax":J
    const/16 v20, 0x0

    invoke-static {v9, v10}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 511
    const/16 v20, 0x0

    invoke-static {v9, v10}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    check-cast v20, Landroid/text/Spannable;

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 514
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mChangedText:Z

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "addedSpaceString":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 518
    new-instance v16, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 519
    .local v16, "sp":Landroid/text/Spannable;
    move-object/from16 v12, v16

    .line 521
    .end local v16    # "sp":Landroid/text/Spannable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    check-cast v20, Landroid/text/Editable;

    move-object/from16 v0, v20

    invoke-interface {v0, v8, v7, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 522
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 525
    if-ne v8, v7, :cond_6

    .line 527
    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 529
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    .line 533
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 535
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastAction:I

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosStart:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    .line 555
    :cond_4
    :goto_3
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mChangedText:Z

    .line 556
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mChangedSize:I

    goto/16 :goto_0

    .end local v4    # "addedSpaceString":Ljava/lang/CharSequence;
    .end local v9    # "minMax":J
    :pswitch_1
    move-object/from16 v18, p1

    .line 476
    check-cast v18, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 477
    .local v18, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual/range {v18 .. v18}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v12

    .line 478
    const v17, 0x1040b5a

    .line 479
    goto/16 :goto_1

    .end local v18    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_2
    move-object/from16 v5, p1

    .line 481
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 482
    .local v5, "html":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v12

    .line 483
    const v17, 0x1040b5c

    .line 485
    goto/16 :goto_1

    .end local v5    # "html":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :pswitch_3
    move-object/from16 v19, p1

    .line 491
    check-cast v19, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 492
    .local v19, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual/range {v19 .. v19}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 493
    const v17, 0x1040b5a

    .line 494
    goto/16 :goto_1

    .end local v19    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_4
    move-object/from16 v11, p1

    .line 496
    check-cast v11, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .line 497
    .local v11, "multipleUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    invoke-virtual {v11}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v12

    .line 498
    const v17, 0x1040b5a

    .line 499
    goto/16 :goto_1

    .end local v11    # "multipleUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    :pswitch_5
    move-object/from16 v6, p1

    .line 501
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 502
    .local v6, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    .line 503
    const v17, 0x1040b5a

    goto/16 :goto_1

    .line 531
    .end local v6    # "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    .restart local v4    # "addedSpaceString":Ljava/lang/CharSequence;
    .restart local v9    # "minMax":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto/16 :goto_2

    .line 541
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mChangedText:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mChangedSize:I

    move/from16 v20, v0

    if-lez v20, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    .line 543
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    .line 547
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 549
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastAction:I

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosStart:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto/16 :goto_3

    .line 545
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_4

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private registerForPreDraw()V
    .locals 1

    .prologue
    .line 5827
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    .line 5828
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5829
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5831
    :cond_0
    return-void
.end method

.method private registerForStylusPenEvent()V
    .locals 3

    .prologue
    .line 11809
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 11810
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    if-eqz v1, :cond_0

    .line 11815
    :goto_0
    return-void

    .line 11813
    :cond_0
    new-instance v1, Landroid/widget/TextView$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TextView$StylusEventListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    .line 11814
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    goto :goto_0
.end method

.method private removeForStylusPenEvent()V
    .locals 2

    .prologue
    .line 11818
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 11819
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    if-nez v1, :cond_0

    .line 11824
    :goto_0
    return-void

    .line 11822
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 11823
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    goto :goto_0
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 8903
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    .line 8914
    :cond_0
    return-void

    .line 8904
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 8906
    .local v5, "text":Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 8907
    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    .line 8908
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 8909
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 8910
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 8911
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_0

    if-eq v3, p2, :cond_0

    .line 8912
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 8908
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7178
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 7179
    .local v1, "spans":[Ljava/lang/Object;
    array-length v0, v1

    .line 7180
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 7181
    add-int/lit8 v0, v0, -0x1

    .line 7182
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 7184
    :cond_0
    return-void
.end method

.method private requestWritingBuddy()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 12241
    const-string v1, "TextView"

    const-string v2, "Request WritingBuddy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12242
    invoke-virtual {p0}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->show()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    .line 5591
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 5592
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 5593
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 5595
    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 8875
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8876
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8877
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8878
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8879
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 8878
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8884
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    iget-boolean v3, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v3, :cond_1

    .line 8885
    if-ge p3, p4, :cond_2

    iget v3, p0, Landroid/widget/TextView;->mLastKeyCode:I

    const/16 v4, 0x43

    if-eq v3, v4, :cond_2

    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 8887
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    .line 8897
    :cond_1
    :goto_1
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 8898
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 8899
    return-void

    .line 8888
    :cond_2
    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    if-nez v3, :cond_3

    .line 8889
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    goto :goto_1

    .line 8890
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 8891
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    goto :goto_1
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6
    .param p1, "e"    # Landroid/text/Editable;
    .param p2, "filters"    # [Landroid/text/InputFilter;

    .prologue
    const/4 v4, 0x0

    .line 5620
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    .line 5621
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 5622
    .local v3, "undoFilter":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v0, v5, Landroid/text/InputFilter;

    .line 5623
    .local v0, "keyFilter":Z
    const/4 v2, 0x0

    .line 5624
    .local v2, "num":I
    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5625
    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 5626
    :cond_1
    if-lez v2, :cond_5

    .line 5627
    array-length v5, p2

    add-int/2addr v5, v2

    new-array v1, v5, [Landroid/text/InputFilter;

    .line 5629
    .local v1, "nf":[Landroid/text/InputFilter;
    array-length v5, p2

    invoke-static {p2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5630
    const/4 v2, 0x0

    .line 5631
    if-eqz v3, :cond_2

    .line 5632
    array-length v4, p2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    aput-object v5, v1, v4

    .line 5633
    add-int/lit8 v2, v2, 0x1

    .line 5635
    :cond_2
    if-eqz v0, :cond_3

    .line 5636
    array-length v4, p2

    add-int v5, v4, v2

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v1, v5

    .line 5639
    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 5644
    .end local v0    # "keyFilter":Z
    .end local v1    # "nf":[Landroid/text/InputFilter;
    .end local v2    # "num":I
    .end local v3    # "undoFilter":Z
    :goto_1
    return-void

    :cond_4
    move v3, v4

    .line 5621
    goto :goto_0

    .line 5643
    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1
.end method

.method private setInputType(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5202
    and-int/lit8 v2, p1, 0xf

    .line 5204
    .local v2, "cls":I
    if-ne v2, v4, :cond_5

    .line 5205
    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_1

    move v0, v4

    .line 5207
    .local v0, "autotext":Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_2

    .line 5208
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 5216
    .local v1, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 5238
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, "input":Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 5239
    if-eqz p2, :cond_b

    .line 5240
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5241
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 5246
    :goto_3
    const-string v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5247
    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    .line 5250
    :cond_0
    return-void

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_1
    move v0, v5

    .line 5205
    goto :goto_0

    .line 5209
    .restart local v0    # "autotext":Z
    :cond_2
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_3

    .line 5210
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 5211
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_4

    .line 5212
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 5214
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 5217
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_8

    .line 5218
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_6

    move v6, v4

    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_7

    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_6
    move v6, v5

    goto :goto_4

    :cond_7
    move v4, v5

    goto :goto_5

    .line 5221
    :cond_8
    const/4 v4, 0x4

    if-ne v2, v4, :cond_9

    .line 5222
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    .line 5230
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 5231
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5224
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 5225
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5227
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 5228
    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5233
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_9
    const/4 v4, 0x3

    if-ne v2, v4, :cond_a

    .line 5234
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5236
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_a
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 5243
    :cond_b
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    .line 5222
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    .prologue
    .line 8582
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8584
    if-eqz p1, :cond_1

    .line 8585
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    .line 8590
    :cond_0
    :goto_0
    return-void

    .line 8587
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 2337
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 2348
    :cond_0
    :goto_0
    return-void

    .line 2339
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2340
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_0

    .line 2341
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 2342
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_2

    .line 2343
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2346
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 3
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 10634
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 10636
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 10637
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    .line 10638
    return-void
.end method

.method private setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V
    .locals 3
    .param p1, "clip"    # Landroid/sec/clipboard/data/list/ClipboardDataText;

    .prologue
    .line 10642
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 10644
    .local v0, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 10646
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    .line 10647
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 3363
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3364
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3366
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3367
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3368
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3369
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3372
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "end"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2020
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    move v2, v5

    .line 2021
    .local v2, "hasRelativeDrawables":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 2022
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2023
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    .line 2024
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2026
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2027
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2028
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    .line 2029
    .local v3, "state":[I
    if-eqz p1, :cond_4

    .line 2030
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2031
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2032
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2033
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2035
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2036
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2037
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 2041
    :goto_1
    if-eqz p2, :cond_5

    .line 2042
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2043
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2044
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2045
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2047
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2048
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2049
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 2053
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2054
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2056
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v3    # "state":[I
    :cond_2
    return-void

    .end local v2    # "hasRelativeDrawables":Z
    :cond_3
    move v2, v4

    .line 2020
    goto :goto_0

    .line 2039
    .restart local v0    # "compoundRect":Landroid/graphics/Rect;
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v2    # "hasRelativeDrawables":Z
    .restart local v3    # "state":[I
    :cond_4
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    .line 2051
    :cond_5
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .param p3, "notifyBefore"    # Z
    .param p4, "oldlen"    # I

    .prologue
    .line 4739
    if-nez p1, :cond_0

    .line 4740
    const-string p1, ""

    .line 4744
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4745
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4748
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 4750
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 4752
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4753
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4754
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 4759
    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4762
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .line 4763
    .local v14, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_6

    .line 4764
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 4765
    .local v16, "out":Ljava/lang/CharSequence;
    if-eqz v16, :cond_4

    .line 4766
    move-object/from16 p1, v16

    .line 4763
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4756
    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v16    # "out":Ljava/lang/CharSequence;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4757
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    .line 4770
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    :cond_6
    if-eqz p3, :cond_7

    .line 4771
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    .line 4772
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 4773
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 4779
    :cond_7
    :goto_2
    const/4 v15, 0x0

    .line 4781
    .local v15, "needEditableForNotification":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 4782
    const/4 v15, 0x1

    .line 4785
    :cond_8
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-nez v4, :cond_9

    if-eqz v15, :cond_e

    .line 4787
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4788
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .line 4789
    .local v19, "t":Landroid/text/Editable;
    move-object/from16 p1, v19

    .line 4790
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 4791
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 4792
    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4799
    .end local v13    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "t":Landroid/text/Editable;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_c

    .line 4802
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_11

    :cond_b
    move-object/from16 v17, p1

    .line 4803
    check-cast v17, Landroid/text/Spannable;

    .line 4808
    .local v17, "s2":Landroid/text/Spannable;
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4809
    move-object/from16 p1, v17

    .line 4810
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_12

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 4817
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4821
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_c

    .line 4822
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4827
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 4828
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4830
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_13

    .line 4831
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 4837
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mLastAction:I

    .line 4838
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;)Z

    .line 4841
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 4843
    .local v20, "textLength":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_18

    move-object/from16 v18, p1

    .line 4844
    check-cast v18, Landroid/text/Spannable;

    .line 4847
    .local v18, "sp":Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .line 4848
    .local v21, "watchers":[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .line 4849
    .local v11, "count":I
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_14

    .line 4850
    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4849
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 4775
    .end local v11    # "count":I
    .end local v15    # "needEditableForNotification":Z
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v20    # "textLength":I
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_d
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_2

    .line 4793
    .restart local v15    # "needEditableForNotification":Z
    :cond_e
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_10

    .line 4794
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_3

    .line 4795
    :cond_10
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_a

    .line 4796
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_3

    .line 4805
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17    # "s2":Landroid/text/Spannable;
    goto/16 :goto_4

    .line 4810
    :cond_12
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    .line 4833
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 4853
    .restart local v11    # "count":I
    .restart local v18    # "sp":Landroid/text/Spannable;
    .restart local v20    # "textLength":I
    .restart local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_15

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 4855
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4858
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 4860
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_17

    .line 4861
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4864
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_18

    .line 4865
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 4872
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 4876
    .end local v11    # "count":I
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_19

    .line 4877
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 4880
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 4881
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4883
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 4885
    if-eqz v15, :cond_1a

    .line 4886
    check-cast p1, Landroid/text/Editable;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 4890
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4891
    :cond_1b
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_1c

    .line 4892
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setStringName(Ljava/lang/CharSequence;)V

    .line 4894
    :cond_1c
    return-void
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "typefaceIndex"    # I
    .param p3, "styleIndex"    # I

    .prologue
    .line 1994
    const/4 v0, 0x0

    .line 1995
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    .line 1996
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1997
    if-eqz v0, :cond_0

    .line 1998
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2017
    :goto_0
    return-void

    .line 2002
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2016
    :goto_1
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 2004
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 2005
    goto :goto_1

    .line 2008
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 2009
    goto :goto_1

    .line 2012
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 2002
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6766
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6783
    :cond_0
    :goto_0
    return v1

    .line 6770
    :cond_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 6771
    goto :goto_0

    .line 6774
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    .line 6776
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 6777
    .local v0, "variation":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    .line 6779
    goto :goto_0
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6791
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_1

    .line 6793
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 6794
    .local v0, "variation":I
    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_1

    .line 6796
    :cond_0
    const/4 v1, 0x0

    .line 6799
    .end local v0    # "variation":I
    :cond_1
    return v1
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9715
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "speak_password"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startMarquee()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8762
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8784
    :cond_0
    :goto_0
    return-void

    .line 8764
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8768
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8771
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_4

    .line 8772
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 8773
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8774
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8775
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8776
    invoke-virtual {p0, v3}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 8777
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8778
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8781
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 8782
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 8803
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 8804
    if-eqz p1, :cond_1

    .line 8805
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 8810
    :cond_0
    :goto_0
    return-void

    .line 8807
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    .prologue
    .line 8787
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8788
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    .line 8791
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 8792
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 8793
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8794
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8795
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8796
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 8797
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8798
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8800
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_1
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4418
    const/4 v1, 0x0

    .line 4419
    .local v1, "inval":Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4420
    .local v0, "color":I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    .line 4421
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 4422
    const/4 v1, 0x1

    .line 4424
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 4425
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4426
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    .line 4427
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 4428
    const/4 v1, 0x1

    .line 4431
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 4432
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4433
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 4434
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 4435
    const/4 v1, 0x1

    .line 4438
    :cond_2
    if-eqz v1, :cond_4

    .line 4440
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 4441
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4443
    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    .prologue
    .line 9658
    new-instance v0, Landroid/widget/TextView$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 9664
    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 5

    .prologue
    .line 9667
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 9669
    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 9671
    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    .line 9672
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 9676
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    .line 9677
    return-void

    .line 9674
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method


# virtual methods
.method public addInnerShadowTextEffect(FFFIF)I
    .locals 6
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    .line 3616
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->addInnerShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addLinearGradientTextEffect(FF[I[F[FF)I
    .locals 7
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "colors"    # [I
    .param p4, "alphas"    # [F
    .param p5, "positions"    # [F
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 3698
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->addLinearGradientTextEffect(FF[I[F[FF)I

    move-result v0

    return v0
.end method

.method public addOuterGlowTextEffect(FIF)I
    .locals 1
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    .line 3663
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->addOuterGlowTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addOuterShadowTextEffect(FFFIF)I
    .locals 6
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    .line 3599
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->addOuterShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addStrokeTextEffect(FIF)I
    .locals 1
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    .line 3631
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->addStrokeTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 8852
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 8853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8856
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8857
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4401
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 4402
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 4410
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 4411
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4414
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 4415
    return-void
.end method

.method public applyWBTextBuffer(Z)Z
    .locals 7
    .param p1, "initBuffer"    # Z

    .prologue
    const/4 v4, 0x0

    .line 12116
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 12117
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Editable;

    if-eqz v3, :cond_3

    .line 12118
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 12123
    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 12124
    .local v2, "selectionStart":I
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 12125
    .local v1, "selectionEnd":I
    const-string v3, "TextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WB index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12126
    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12127
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 12128
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-le v2, v0, :cond_0

    move v2, v0

    .end local v2    # "selectionStart":I
    :cond_0
    if-le v1, v0, :cond_4

    .end local v0    # "length":I
    :goto_1
    invoke-static {v3, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 12132
    :cond_1
    if-eqz p1, :cond_2

    .line 12133
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    .line 12135
    :cond_2
    const/4 v3, 0x1

    .line 12137
    .end local v1    # "selectionEnd":I
    :goto_2
    return v3

    .line 12120
    :cond_3
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .restart local v0    # "length":I
    .restart local v1    # "selectionEnd":I
    :cond_4
    move v0, v1

    .line 12128
    goto :goto_1

    .end local v0    # "length":I
    .end local v1    # "selectionEnd":I
    :cond_5
    move v3, v4

    .line 12137
    goto :goto_2
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 7276
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    .line 7277
    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 29
    .param p1, "offset"    # I

    .prologue
    .line 8185
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 8186
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 8187
    const/4 v5, 0x0

    .line 8369
    :cond_0
    :goto_0
    return v5

    .line 8189
    :cond_1
    const/4 v5, 0x0

    .line 8191
    .local v5, "changed":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    .line 8193
    .local v16, "layout":Landroid/text/Layout;
    :goto_1
    if-eqz v16, :cond_0

    .line 8195
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v18

    .line 8199
    .local v18, "line":I
    sget-object v25, Landroid/widget/TextView$5;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Enum;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    .line 8214
    const/4 v11, 0x0

    .line 8228
    .local v11, "grav":I
    :goto_2
    if-lez v11, :cond_11

    const/4 v6, 0x1

    .line 8230
    .local v6, "clamped":Z
    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 8231
    .local v24, "x":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 8232
    .local v20, "top":I
    add-int/lit8 v25, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 8234
    .local v4, "bottom":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->floor(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 8235
    .local v17, "left":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->ceil(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 8236
    .local v19, "right":I
    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 8238
    .local v15, "ht":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .line 8239
    .local v14, "hspace":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .line 8240
    .local v23, "vspace":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    sub-int v25, v19, v17

    move/from16 v0, v25

    if-le v0, v14, :cond_2

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    .line 8242
    add-int v25, v17, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 8245
    :cond_2
    sub-int v25, v4, v20

    div-int/lit8 v13, v25, 0x2

    .line 8246
    .local v13, "hslack":I
    move/from16 v22, v13

    .line 8248
    .local v22, "vslack":I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 8249
    div-int/lit8 v22, v23, 0x4

    .line 8250
    :cond_3
    div-int/lit8 v25, v14, 0x4

    move/from16 v0, v25

    if-le v13, v0, :cond_4

    .line 8251
    div-int/lit8 v13, v14, 0x4

    .line 8253
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollX:I

    .line 8254
    .local v12, "hs":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    .line 8256
    .local v21, "vs":I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 8257
    sub-int v21, v20, v22

    .line 8258
    :cond_5
    sub-int v25, v4, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 8259
    sub-int v25, v23, v22

    sub-int v21, v4, v25

    .line 8260
    :cond_6
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 8261
    sub-int v21, v15, v23

    .line 8262
    :cond_7
    rsub-int/lit8 v25, v21, 0x0

    if-lez v25, :cond_8

    .line 8263
    const/16 v21, 0x0

    .line 8265
    :cond_8
    if-eqz v11, :cond_a

    .line 8266
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_9

    .line 8267
    sub-int v12, v24, v13

    .line 8269
    :cond_9
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    .line 8270
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    .line 8274
    :cond_a
    if-gez v11, :cond_12

    .line 8275
    sub-int v25, v17, v12

    if-lez v25, :cond_b

    .line 8276
    move/from16 v12, v17

    .line 8277
    :cond_b
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_c

    .line 8278
    sub-int v12, v19, v14

    .line 8325
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v12, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    .line 8326
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_1b

    .line 8327
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/view/View;->scrollTo(II)V

    .line 8348
    :goto_5
    const/4 v5, 0x1

    .line 8351
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 8359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    if-nez v25, :cond_f

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 8360
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    add-int/lit8 v26, v24, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 8362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Rect;->offset(II)V

    .line 8364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 8365
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 8191
    .end local v4    # "bottom":I
    .end local v6    # "clamped":Z
    .end local v11    # "grav":I
    .end local v12    # "hs":I
    .end local v13    # "hslack":I
    .end local v14    # "hspace":I
    .end local v15    # "ht":I
    .end local v16    # "layout":Landroid/text/Layout;
    .end local v17    # "left":I
    .end local v18    # "line":I
    .end local v19    # "right":I
    .end local v20    # "top":I
    .end local v21    # "vs":I
    .end local v22    # "vslack":I
    .end local v23    # "vspace":I
    .end local v24    # "x":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    goto/16 :goto_1

    .line 8201
    .restart local v16    # "layout":Landroid/text/Layout;
    .restart local v18    # "line":I
    :pswitch_0
    const/4 v11, 0x1

    .line 8202
    .restart local v11    # "grav":I
    goto/16 :goto_2

    .line 8204
    .end local v11    # "grav":I
    :pswitch_1
    const/4 v11, -0x1

    .line 8205
    .restart local v11    # "grav":I
    goto/16 :goto_2

    .line 8207
    .end local v11    # "grav":I
    :pswitch_2
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    .line 8208
    .restart local v11    # "grav":I
    goto/16 :goto_2

    .line 8210
    .end local v11    # "grav":I
    :pswitch_3
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    move/from16 v0, v25

    neg-int v11, v0

    .line 8211
    .restart local v11    # "grav":I
    goto/16 :goto_2

    .line 8228
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 8279
    .restart local v4    # "bottom":I
    .restart local v6    # "clamped":Z
    .restart local v12    # "hs":I
    .restart local v13    # "hslack":I
    .restart local v14    # "hspace":I
    .restart local v15    # "ht":I
    .restart local v17    # "left":I
    .restart local v19    # "right":I
    .restart local v20    # "top":I
    .restart local v21    # "vs":I
    .restart local v22    # "vslack":I
    .restart local v23    # "vspace":I
    .restart local v24    # "x":I
    :cond_12
    if-lez v11, :cond_14

    .line 8280
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_13

    .line 8281
    sub-int v12, v19, v14

    .line 8282
    :cond_13
    sub-int v25, v17, v12

    if-lez v25, :cond_c

    .line 8283
    move/from16 v12, v17

    goto/16 :goto_4

    .line 8285
    :cond_14
    sub-int v25, v19, v17

    move/from16 v0, v25

    if-gt v0, v14, :cond_15

    .line 8289
    sub-int v25, v19, v17

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v17, v25

    goto/16 :goto_4

    .line 8290
    :cond_15
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_16

    .line 8295
    sub-int v12, v19, v14

    goto/16 :goto_4

    .line 8296
    :cond_16
    add-int v25, v17, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_17

    .line 8301
    move/from16 v12, v17

    goto/16 :goto_4

    .line 8302
    :cond_17
    move/from16 v0, v17

    if-le v0, v12, :cond_18

    .line 8306
    move/from16 v12, v17

    goto/16 :goto_4

    .line 8307
    :cond_18
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_19

    .line 8311
    sub-int v12, v19, v14

    goto/16 :goto_4

    .line 8316
    :cond_19
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_1a

    .line 8317
    sub-int v12, v24, v13

    .line 8319
    :cond_1a
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    .line 8320
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_4

    .line 8329
    :cond_1b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v27, v0

    sub-long v7, v25, v27

    .line 8330
    .local v7, "duration":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    sub-int v9, v12, v25

    .line 8331
    .local v9, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .line 8333
    .local v10, "dy":I
    const-wide/16 v25, 0xfa

    cmp-long v25, v7, v25

    if-lez v25, :cond_1c

    .line 8334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 8335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->awakenScrollBars(I)Z

    .line 8336
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 8345
    :goto_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_5

    .line 8338
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_1d

    .line 8339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 8342
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/view/View;->scrollBy(II)V

    goto :goto_6

    .line 8199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method canCopy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10280
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10288
    :cond_0
    :goto_0
    return v0

    .line 10284
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10285
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canCut()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10267
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10276
    :cond_0
    :goto_0
    return v0

    .line 10271
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 10273
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canDelete()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10357
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10365
    :cond_0
    :goto_0
    return v0

    .line 10361
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10362
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canPaste()Z
    .locals 4

    .prologue
    .line 10325
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-ltz v2, :cond_1

    .line 10328
    iget-object v2, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v2}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 10329
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 10331
    .local v0, "clip":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    .line 10342
    .end local v0    # "clip":Landroid/content/ClipboardManager;
    :goto_0
    return v2

    .line 10335
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    .line 10337
    .local v1, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10338
    const/4 v2, 0x1

    goto :goto_0

    .line 10342
    .end local v1    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method canRedo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10376
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 10377
    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 10379
    :cond_0
    return v0
.end method

.method canTranslate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 10293
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10311
    :cond_0
    :goto_0
    return v0

    .line 10297
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 10301
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10302
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canUndo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10369
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 10370
    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 10372
    :cond_0
    return v0
.end method

.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 9357
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 9358
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 9359
    :cond_0
    return-void
.end method

.method public changeClipboardDataFormat(I)V
    .locals 1
    .param p1, "newFormat"    # I

    .prologue
    .line 6624
    iget v0, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    .line 6625
    :cond_0
    return-void
.end method

.method public clearAllTextEffect()V
    .locals 1

    .prologue
    .line 3736
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearAllTextEffect()V

    .line 3737
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    .line 9226
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 9227
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 9229
    :cond_0
    return-void
.end method

.method public clearTextEffectOpacity()V
    .locals 1

    .prologue
    .line 3727
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearTextEffectOpacity()V

    .line 3728
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 9452
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 9453
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    .line 9457
    :goto_0
    return v0

    .line 9453
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    .line 9457
    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 8436
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 8437
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8438
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 8439
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 8440
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8441
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 8444
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 9470
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 9462
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 9463
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 9465
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 10666
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 10668
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 10669
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 10670
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 10671
    return p1
.end method

.method public debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 8480
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 8482
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 8483
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8487
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 8489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8490
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 8491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8494
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 8495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStringName = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8500
    :cond_1
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8501
    return-void

    .line 8498
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10834
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 10835
    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    .line 9352
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 9151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 9152
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 9153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 9154
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 4447
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4448
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4451
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 4454
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4455
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_9

    .line 4456
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 4457
    .local v1, "state":[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4458
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4460
    :cond_4
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4461
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4463
    :cond_5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4464
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4466
    :cond_6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4467
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4469
    :cond_7
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4470
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4472
    :cond_8
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4473
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4476
    .end local v1    # "state":[I
    :cond_9
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 7280
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    .line 7281
    :cond_0
    return-void
.end method

.method public extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x8000000

    .line 12021
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 12024
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_7

    .line 12026
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12085
    :cond_1
    :goto_0
    return-void

    .line 12030
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 12031
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_9

    .line 12032
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 12033
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 12034
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 12035
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 12036
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 12042
    :goto_1
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 12043
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 12044
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v4

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 12046
    :cond_3
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 12047
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 12049
    :cond_4
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_5

    .line 12050
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_a

    .line 12053
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 12059
    :goto_2
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-nez v2, :cond_5

    .line 12060
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 12063
    :cond_5
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12065
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 12067
    :cond_6
    iget-object v2, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 12068
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_7

    .line 12069
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 12070
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 12075
    .end local v1    # "v":Landroid/view/View;
    :cond_7
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_8

    .line 12076
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 12080
    :cond_8
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 12081
    .local v0, "maxLength":I
    if-gez v0, :cond_1

    .line 12082
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "maxLength"

    iget v4, p0, Landroid/widget/TextView;->mWBMaxLength:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 12038
    .end local v0    # "maxLength":I
    :cond_9
    const/4 v2, 0x0

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_1

    .line 12057
    .restart local v1    # "v":Landroid/view/View;
    :cond_a
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_2
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 7168
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 7169
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 9475
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 9476
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9478
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 9479
    .local v0, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 9480
    .local v1, "textLowerCase":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9481
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9484
    .end local v0    # "searchedLowerCase":Ljava/lang/String;
    .end local v1    # "textLowerCase":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public forceHideSoftInput(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 11347
    iput-boolean p1, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    .line 11348
    return-void
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    .line 10940
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    .line 10925
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    .line 3118
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 4

    .prologue
    .line 6576
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    .line 6577
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 6589
    :goto_0
    return v1

    .line 6580
    :cond_0
    const/4 v0, 0x0

    .line 6581
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 6582
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 6585
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6586
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    .line 6589
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    .line 5989
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5990
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextEffectOffsetBottom()I

    move-result v0

    .line 5994
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    .line 3078
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3079
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3019
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3020
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 3021
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 3025
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3038
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3039
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 3040
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 3044
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    .line 2464
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2465
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 2466
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 2468
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    .prologue
    .line 2518
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2519
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2522
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    .line 2524
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 2519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 2477
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2478
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 2479
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 2481
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 2490
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2491
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 2492
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 2494
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    .prologue
    .line 2503
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2504
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2507
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 2509
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0

    .line 2504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    .line 2451
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2452
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 2453
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 2455
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    .line 3897
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 3515
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 10256
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 2156
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 2163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8699
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5539
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    .line 2574
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    .line 2575
    const/4 v0, 0x0

    .line 2602
    :cond_0
    :goto_0
    return v0

    .line 2579
    :cond_1
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 2580
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 2583
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_3

    .line 2584
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 2587
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2588
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2589
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2590
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2592
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_0

    .line 2596
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2597
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4

    .line 2598
    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_0

    .line 2599
    :cond_4
    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    .line 2602
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    .line 2535
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    .line 2536
    const/4 v3, 0x0

    .line 2563
    :cond_0
    :goto_0
    return v3

    .line 2540
    :cond_1
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 2541
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    .line 2544
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_3

    .line 2545
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    .line 2548
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2549
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2550
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2551
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2553
    .local v2, "layoutht":I
    if-ge v2, v4, :cond_0

    .line 2557
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2558
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-eq v1, v5, :cond_0

    .line 2560
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4

    .line 2561
    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_0

    .line 2563
    :cond_4
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6614
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6597
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6606
    :goto_0
    return v1

    .line 6599
    :cond_0
    const/4 v0, 0x0

    .line 6600
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 6601
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 6604
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 6606
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 5652
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 6474
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v9, :cond_0

    .line 6475
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 6534
    :goto_0
    return-void

    .line 6479
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .line 6480
    .local v7, "selEnd":I
    if-gez v7, :cond_1

    .line 6481
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 6485
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 6486
    .local v8, "selStart":I
    if-ltz v8, :cond_2

    if-lt v8, v7, :cond_6

    .line 6487
    :cond_2
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 6488
    .local v1, "line":I
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iput v9, p1, Landroid/graphics/Rect;->top:I

    .line 6489
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, p1, Landroid/graphics/Rect;->bottom:I

    .line 6490
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 6492
    .local v0, "dir":I
    invoke-virtual {p0}, Landroid/widget/TextView;->isRTLLanguage()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 6493
    if-ne v0, v10, :cond_4

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v9, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 6494
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    iput v9, p1, Landroid/graphics/Rect;->left:I

    .line 6499
    :goto_1
    iget v9, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v9, v9, 0x4

    iput v9, p1, Landroid/graphics/Rect;->right:I

    .line 6526
    .end local v0    # "dir":I
    .end local v1    # "line":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    .line 6527
    .local v5, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    .line 6528
    .local v6, "paddingTop":I
    iget v9, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v9, v9, 0x70

    const/16 v10, 0x30

    if-eq v9, v10, :cond_3

    .line 6529
    invoke-virtual {p0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v9

    add-int/2addr v6, v9

    .line 6531
    :cond_3
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 6532
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v4

    .line 6533
    .local v4, "paddingBottom":I
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v4

    iput v9, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 6496
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingLeft":I
    .end local v6    # "paddingTop":I
    .restart local v0    # "dir":I
    .restart local v1    # "line":I
    :cond_4
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v9, v9

    add-int/lit8 v9, v9, -0x2

    iput v9, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 6498
    :cond_5
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v9, v9

    add-int/lit8 v9, v9, -0x2

    iput v9, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 6501
    .end local v0    # "dir":I
    .end local v1    # "line":I
    :cond_6
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 6502
    .local v3, "lineStart":I
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 6503
    .local v2, "lineEnd":I
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iput v9, p1, Landroid/graphics/Rect;->top:I

    .line 6504
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, p1, Landroid/graphics/Rect;->bottom:I

    .line 6505
    if-ne v3, v2, :cond_7

    .line 6506
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p1, Landroid/graphics/Rect;->left:I

    .line 6507
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 6511
    :cond_7
    iget-boolean v9, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v9, :cond_9

    .line 6512
    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v9, :cond_8

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 6513
    :cond_8
    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 6514
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v9, v8, v7, v10}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 6515
    iput-boolean v13, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6517
    :cond_9
    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v10

    .line 6518
    :try_start_0
    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v11, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6519
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    add-int/lit8 v9, v9, -0x1

    iput v9, p1, Landroid/graphics/Rect;->left:I

    .line 6520
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Landroid/graphics/Rect;->right:I

    .line 6521
    monitor-exit v10

    goto/16 :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    .line 4671
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 3989
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHideSoftInput()Z
    .locals 1

    .prologue
    .line 11355
    iget-boolean v0, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 3539
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 5042
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3888
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    .prologue
    .line 6245
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    .prologue
    .line 4044
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHoverPopupWindow()Landroid/widget/HoverPopupWindow;
    .locals 2

    .prologue
    .line 11484
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11485
    const/4 v0, 0x0

    .line 11491
    :goto_0
    return-object v0

    .line 11487
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v0, :cond_1

    .line 11488
    new-instance v0, Landroid/widget/TextView$MoreInfoHPW;

    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v0, p0, p0, v1}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 11490
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setHoverPopupWindowSettings(I)Z

    .line 11491
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_0
.end method

.method public getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;
    .locals 4
    .param p1, "tooltype"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 11499
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11532
    :goto_0
    return-object v0

    .line 11502
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v1, :cond_1

    .line 11503
    iput p1, p0, Landroid/widget/TextView;->mToolType:I

    .line 11504
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 11505
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 11525
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setHoverPopupWindowSettings(I)Z

    .line 11526
    iput p1, p0, Landroid/view/View;->mHoverPopupToolTypeByApp:I

    .line 11527
    if-ne p1, v3, :cond_2

    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v1, :cond_2

    .line 11529
    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 11530
    iput-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 11532
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_0

    .line 11506
    :cond_3
    if-ne p1, v3, :cond_4

    .line 11507
    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 11511
    :pswitch_1
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_1

    .line 11514
    :pswitch_2
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_1

    .line 11519
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 11507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    .line 5358
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5347
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 5319
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    .prologue
    .line 7749
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "create"    # Z

    .prologue
    const/4 v0, 0x0

    .line 5520
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 5530
    :cond_0
    :goto_0
    return-object v0

    .line 5521
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5522
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v1, :cond_2

    .line 5523
    if-eqz p1, :cond_0

    .line 5524
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5526
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 5527
    if-eqz p1, :cond_0

    .line 5528
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5530
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 5295
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 10886
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 10887
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 10889
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3
    .param p1, "granularity"    # I

    .prologue
    .line 10897
    sparse-switch p1, :sswitch_data_0

    .line 10917
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10899
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 10900
    .local v1, "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10901
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v0

    .line 10903
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    goto :goto_0

    .line 10908
    .end local v0    # "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .end local v1    # "text":Landroid/text/Spannable;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 10909
    .restart local v1    # "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10910
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v0

    .line 10912
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    invoke-virtual {v0, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    goto :goto_0

    .line 10897
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 9378
    iget-object v6, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v6, v9, :cond_2

    .line 9380
    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_1

    .line 9381
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9382
    .local v2, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9383
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v3

    .line 9384
    .local v3, "scroll":F
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    .line 9411
    .end local v2    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v3    # "scroll":F
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 9388
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 9389
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 9390
    .local v1, "layoutDirection":I
    iget v6, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9391
    .local v0, "absoluteGravity":I
    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_0

    .line 9411
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    goto :goto_0

    .line 9395
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 9400
    :pswitch_3
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 9401
    .local v4, "textDirection":I
    if-eq v4, v9, :cond_0

    .line 9404
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    .line 9391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    .line 5966
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5967
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextEffectOffsetLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 5971
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 10675
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 10677
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 10678
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 10679
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 10680
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 6554
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    .line 6555
    if-eqz p2, :cond_0

    .line 6556
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6570
    :cond_0
    :goto_0
    return v2

    .line 6561
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 6563
    .local v0, "baseline":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 6564
    .local v1, "voffset":I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 6565
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 6567
    :cond_2
    if-eqz p2, :cond_3

    .line 6568
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6570
    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 6541
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    .line 2213
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .prologue
    .line 4392
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .prologue
    .line 4378
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3939
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    .line 3828
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    .prologue
    .line 8690
    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    .prologue
    .line 4277
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 4160
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 2

    .prologue
    .line 4131
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 4304
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinEms()I
    .locals 2

    .prologue
    .line 4223
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 4103
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinLines()I
    .locals 2

    .prologue
    .line 4075
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 4250
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 2355
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 10659
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 10662
    :goto_0
    return v1

    .line 10660
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 10661
    .local v0, "line":I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    .line 10662
    .local v1, "offset":I
    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 3791
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    .line 3997
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5486
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 9416
    iget-object v9, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_2

    iget v9, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v9, v12, :cond_2

    .line 9418
    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v9}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v9

    if-nez v9, :cond_1

    .line 9419
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9420
    .local v3, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v4

    .line 9421
    .local v4, "maxFadeScroll":F
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v5

    .line 9422
    .local v5, "scroll":F
    sub-float v8, v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 9447
    .end local v3    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v4    # "maxFadeScroll":F
    .end local v5    # "scroll":F
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 9423
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v9

    if-ne v9, v12, :cond_2

    .line 9424
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 9425
    .local v1, "layoutDirection":I
    iget v9, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v9, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9426
    .local v0, "absoluteGravity":I
    and-int/lit8 v9, v0, 0x7

    packed-switch v9, :pswitch_data_0

    .line 9447
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v8

    goto :goto_0

    .line 9428
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_2
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .line 9430
    .local v7, "textWidth":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 9431
    .local v2, "lineWidth":F
    int-to-float v8, v7

    sub-float v8, v2, v8

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    .line 9436
    .end local v2    # "lineWidth":F
    .end local v7    # "textWidth":I
    :pswitch_3
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 9437
    .local v6, "textDirection":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 9440
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    iget v9, p0, Landroid/view/View;->mRight:I

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    .line 9426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    .line 6000
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6001
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextEffectOffsetRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 6005
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSelectallStatus()Z
    .locals 1

    .prologue
    .line 10138
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectall:Z

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 8516
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 8508
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 3783
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/graphics/Paint;->shadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .prologue
    .line 3761
    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .prologue
    .line 3772
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 3750
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .prologue
    .line 3560
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 22
    .param p1, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 11419
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 11420
    .local v15, "text":Ljava/lang/CharSequence;
    instance-of v2, v15, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_5

    .line 11421
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v14

    .line 11423
    .local v14, "startPos":Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Point;->x:I

    sub-int v17, v2, v3

    .line 11424
    .local v17, "tx":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/Point;->y:I

    sub-int v19, v2, v3

    .line 11426
    .local v19, "ty":I
    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v10

    .line 11427
    .local v10, "line":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v11

    .line 11428
    .local v11, "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 11430
    .local v18, "txtright":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 11431
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v11, :cond_1

    .line 11432
    add-int/lit8 v11, v11, 0x1

    .line 11433
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 11434
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    const/4 v12, 0x0

    .line 11463
    .end local v10    # "line":I
    .end local v11    # "offset":I
    .end local v14    # "startPos":Landroid/graphics/Point;
    .end local v17    # "tx":I
    .end local v18    # "txtright":I
    .end local v19    # "ty":I
    :cond_0
    :goto_0
    return-object v12

    .line 11436
    .restart local v10    # "line":I
    .restart local v11    # "offset":I
    .restart local v14    # "startPos":Landroid/graphics/Point;
    .restart local v17    # "tx":I
    .restart local v18    # "txtright":I
    .restart local v19    # "ty":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    move-object v4, v15

    .line 11440
    check-cast v4, Landroid/text/Spanned;

    .line 11442
    .local v4, "spannedText":Landroid/text/Spanned;
    const/4 v12, 0x0

    .line 11443
    .local v12, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, v2, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/ReplacementSpan;

    .line 11445
    .local v13, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v2, v13

    if-ge v9, v2, :cond_0

    .line 11446
    aget-object v2, v13, v9

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 11447
    .local v5, "start":I
    aget-object v2, v13, v9

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 11449
    .local v6, "end":I
    if-ge v5, v11, :cond_3

    if-ge v6, v11, :cond_4

    .line 11445
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 11451
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v3, v11, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    .line 11452
    .local v20, "x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 11453
    .local v16, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    .line 11455
    .local v8, "bottom":I
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v12, v2, v3, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11456
    .restart local v12    # "rect":Landroid/graphics/Rect;
    aget-object v2, v13, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 11457
    sub-int v2, v8, v16

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 11458
    iget v2, v14, Landroid/graphics/Point;->x:I

    add-int v2, v2, v20

    iget v3, v14, Landroid/graphics/Point;->y:I

    add-int v3, v3, v16

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 11463
    .end local v4    # "spannedText":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v8    # "bottom":I
    .end local v9    # "i":I
    .end local v10    # "line":I
    .end local v11    # "offset":I
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v14    # "startPos":Landroid/graphics/Point;
    .end local v16    # "top":I
    .end local v17    # "tx":I
    .end local v18    # "txtright":I
    .end local v19    # "ty":I
    .end local v20    # "x":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 9651
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getStringName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 2186
    iget-object v0, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 2178
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3506
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10770
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10772
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 10791
    :goto_0
    return-object v1

    .line 10776
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 10779
    .local v0, "defaultIsRtl":Z
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 10782
    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10776
    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 10782
    .restart local v0    # "defaultIsRtl":Z
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10785
    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10787
    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10789
    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10791
    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 10779
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 9918
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9919
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9920
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9922
    :cond_0
    return-object v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 3302
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 3379
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 9637
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 3323
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    .line 5978
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5979
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextEffectOffsetTop()I

    move-result v0

    neg-int v0, v0

    .line 5983
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    .line 2653
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    .prologue
    .line 2635
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    .line 2611
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    .line 2619
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    .prologue
    .line 2627
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    .line 2644
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    .line 2406
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10142
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 3460
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    goto :goto_0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3839
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 3840
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 3842
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method getVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5666
    const/4 v4, 0x0

    .line 5667
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5669
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5670
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 5671
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5674
    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    .line 5675
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5677
    .local v0, "boxht":I
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5678
    .local v3, "textht":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 5679
    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    .line 5680
    sub-int v4, v0, v3

    .line 5685
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_1
    return v4

    .line 5677
    .restart local v0    # "boxht":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 5682
    .restart local v3    # "textht":I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method public getWBTextBuffer(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "refresh"    # Z

    .prologue
    .line 12093
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 12094
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_2

    .line 12095
    iget-object v0, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    .line 12102
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    return-object v0

    .line 12096
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    .line 12097
    iget-object v0, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_0

    .line 12099
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 1

    .prologue
    .line 9690
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 9691
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    .line 9693
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    const/16 v6, 0x43

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 8989
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_5

    const/4 v0, 0x0

    .line 8990
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    .line 8991
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 8993
    :cond_1
    if-eqz v0, :cond_2

    .line 8994
    iput-boolean v4, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 8995
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_6

    .line 8996
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8997
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 9002
    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 9006
    :cond_2
    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_4

    .line 9007
    if-le p3, p4, :cond_7

    iget v1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    if-ne v1, v6, :cond_7

    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-eq v1, v5, :cond_7

    .line 9009
    iput v5, p0, Landroid/widget/TextView;->mLastAction:I

    .line 9010
    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    .line 9022
    :cond_3
    :goto_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    .line 9026
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 9027
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 9028
    return-void

    .line 8989
    .end local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto :goto_0

    .line 8999
    .restart local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_6
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9000
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_1

    .line 9011
    :cond_7
    if-ge p3, p4, :cond_8

    iget v1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    if-eq v1, v6, :cond_8

    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-ne v1, v5, :cond_8

    .line 9013
    iput v4, p0, Landroid/widget/TextView;->mLastAction:I

    .line 9014
    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto :goto_2

    .line 9015
    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-nez v1, :cond_9

    .line 9016
    iput v4, p0, Landroid/widget/TextView;->mLastAction:I

    .line 9017
    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto :goto_2

    .line 9018
    :cond_9
    iget v1, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-ne v1, v4, :cond_3

    .line 9019
    iput v4, p0, Landroid/widget/TextView;->mLastAction:I

    .line 9020
    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto :goto_2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 6096
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    .line 8523
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8524
    .local v1, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8526
    .local v0, "selectionEnd":I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideCursorControllers()V
    .locals 1

    .prologue
    .line 11377
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    .line 11378
    return-void
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6994
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    .line 6995
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 6997
    :cond_0
    return-void
.end method

.method public initTextStrikeThroughAnim(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11832
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    .line 11833
    iget-object v0, p0, Landroid/widget/TextView;->mStrikeThroughPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11834
    return-void
.end method

.method invalidateCursor()V
    .locals 1

    .prologue
    .line 5755
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5757
    .local v0, "where":I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 5758
    return-void
.end method

.method invalidateCursorPath()V
    .locals 11

    .prologue
    .line 5712
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    .line 5713
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 5752
    :cond_0
    :goto_0
    return-void

    .line 5715
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 5716
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 5718
    .local v4, "verticalPadding":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-nez v5, :cond_3

    .line 5719
    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v6

    .line 5729
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    .line 5730
    .local v3, "thick":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 5731
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5734
    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 5737
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5739
    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/view/View;->invalidate(IIII)V

    .line 5743
    monitor-exit v6

    goto :goto_0

    .end local v3    # "thick":F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 5745
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-ge v2, v5, :cond_0

    .line 5746
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5747
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 5745
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 6047
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6048
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 6049
    .local v4, "dirty":Landroid/graphics/Rect;
    iget v7, p0, Landroid/view/View;->mScrollX:I

    .line 6050
    .local v7, "scrollX":I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    .line 6055
    .local v8, "scrollY":I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 6056
    .local v5, "drawables":Landroid/widget/TextView$Drawables;
    if-eqz v5, :cond_0

    .line 6057
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_2

    .line 6058
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 6059
    .local v3, "compoundPaddingTop":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 6060
    .local v0, "compoundPaddingBottom":I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 6062
    .local v9, "vspace":I
    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v10

    .line 6063
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 6088
    .end local v0    # "compoundPaddingBottom":I
    .end local v3    # "compoundPaddingTop":I
    .end local v9    # "vspace":I
    :cond_0
    :goto_0
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/view/View;->invalidate(IIII)V

    .line 6091
    .end local v4    # "dirty":Landroid/graphics/Rect;
    .end local v5    # "drawables":Landroid/widget/TextView$Drawables;
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    :cond_1
    return-void

    .line 6064
    .restart local v4    # "dirty":Landroid/graphics/Rect;
    .restart local v5    # "drawables":Landroid/widget/TextView$Drawables;
    .restart local v7    # "scrollX":I
    .restart local v8    # "scrollY":I
    :cond_2
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_3

    .line 6065
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 6066
    .restart local v3    # "compoundPaddingTop":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 6067
    .restart local v0    # "compoundPaddingBottom":I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 6069
    .restart local v9    # "vspace":I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 6070
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 6071
    goto :goto_0

    .end local v0    # "compoundPaddingBottom":I
    .end local v3    # "compoundPaddingTop":I
    .end local v9    # "vspace":I
    :cond_3
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_4

    .line 6072
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 6073
    .local v1, "compoundPaddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 6074
    .local v2, "compoundPaddingRight":I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 6076
    .local v6, "hspace":I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 6077
    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v8, v10

    .line 6078
    goto :goto_0

    .end local v1    # "compoundPaddingLeft":I
    .end local v2    # "compoundPaddingRight":I
    .end local v6    # "hspace":I
    :cond_4
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_0

    .line 6079
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 6080
    .restart local v1    # "compoundPaddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 6081
    .restart local v2    # "compoundPaddingRight":I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 6083
    .restart local v6    # "hspace":I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 6084
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "invalidateCursor"    # Z

    .prologue
    .line 5772
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    .line 5773
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5824
    :goto_0
    return-void

    .line 5775
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 5776
    .local v8, "lineStart":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 5784
    .local v10, "top":I
    if-lez v8, :cond_1

    .line 5785
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    .line 5790
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 5791
    move v7, v8

    .line 5795
    .local v7, "lineEnd":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 5798
    .local v2, "bottom":I
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_3

    .line 5799
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v12, v12, Landroid/widget/Editor;->mCursorCount:I

    if-ge v5, v12, :cond_3

    .line 5800
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 5801
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5802
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5799
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5793
    .end local v2    # "bottom":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "lineEnd":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7    # "lineEnd":I
    goto :goto_1

    .line 5806
    .restart local v2    # "bottom":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 5807
    .local v4, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .line 5810
    .local v11, "verticalPadding":I
    if-ne v8, v7, :cond_4

    if-nez p3, :cond_4

    .line 5811
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .line 5812
    .local v6, "left":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 5813
    .local v9, "right":I
    add-int/2addr v6, v4

    .line 5814
    add-int/2addr v9, v4

    .line 5821
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 5817
    .end local v6    # "left":I
    .end local v9    # "right":I
    :cond_4
    move v6, v4

    .line 5818
    .restart local v6    # "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .restart local v9    # "right":I
    goto :goto_3
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    .line 10932
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorControllersShowing()Z
    .locals 1

    .prologue
    .line 11385
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->isCursorControllersShowing()Z

    move-result v0

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    .prologue
    .line 8750
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    goto :goto_0
.end method

.method public isEllipsis()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 11401
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    .line 11403
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method isInBatchEditMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 10754
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_1

    .line 10759
    :cond_0
    :goto_0
    return v1

    .line 10755
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 10756
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_2

    .line 10757
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 10759
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 9941
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 9942
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 5957
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->hasTextEffect()Z

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

.method public isPasswordInputTypeCheck()Z
    .locals 1

    .prologue
    .line 5173
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    invoke-static {v0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method public isRTLLanguage()Z
    .locals 2

    .prologue
    .line 12254
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 12255
    .local v0, "curLanguage":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12256
    :cond_0
    const/4 v1, 0x1

    .line 12257
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isSingleLine()Z
    .locals 1

    .prologue
    .line 5046
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    .prologue
    .line 10205
    const/4 v0, 0x0

    return v0
.end method

.method isTextEditable()Z
    .locals 1

    .prologue
    .line 9342
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextSelectable()Z
    .locals 1

    .prologue
    .line 6114
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 6022
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 6023
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    .line 6024
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 6025
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6027
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 6028
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6030
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6031
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6033
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 6034
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6036
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 6037
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6039
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 6040
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6043
    :cond_5
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 34
    .param p1, "wantWidth"    # I
    .param p2, "hintWidth"    # I
    .param p3, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p4, "hintBoring"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "ellipsisWidth"    # I
    .param p6, "bringIntoView"    # Z

    .prologue
    .line 7412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 p4, v0

    .line 7418
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 7421
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    .line 7422
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    .line 7424
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 7426
    if-gez p1, :cond_0

    .line 7427
    const/16 p1, 0x0

    .line 7429
    :cond_0
    if-gez p2, :cond_1

    .line 7430
    const/16 p2, 0x0

    .line 7433
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 7434
    .local v6, "alignment":Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_f

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v6, v2, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v2, :cond_f

    :cond_2
    const/16 v33, 0x1

    .line 7437
    .local v33, "testDirChange":Z
    :goto_0
    const/16 v31, 0x0

    .line 7438
    .local v31, "oldDir":I
    if-eqz v33, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v31

    .line 7439
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_10

    const/4 v7, 0x1

    .line 7440
    .local v7, "shouldEllipsize":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_11

    const/16 v32, 0x1

    .line 7442
    .local v32, "switchEllipsize":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 7443
    .local v8, "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 7445
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 7448
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_5

    .line 7449
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 7452
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_12

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 7454
    if-eqz v32, :cond_6

    .line 7455
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_13

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 7457
    .local v15, "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_14

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 7461
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_15

    const/4 v7, 0x1

    .line 7462
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 7464
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    .line 7465
    if-eqz v7, :cond_7

    move/from16 p2, p1

    .line 7467
    :cond_7
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 7468
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 7470
    if-eqz p4, :cond_8

    .line 7471
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 7475
    :cond_8
    if-eqz p4, :cond_1c

    .line 7476
    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_17

    if-eqz v7, :cond_9

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_17

    .line 7478
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_16

    .line 7479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 7489
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 7527
    :cond_a
    :goto_8
    if-nez p6, :cond_b

    if-eqz v33, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    move/from16 v0, v31

    if-eq v0, v2, :cond_c

    .line 7528
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 7531
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_d

    .line 7532
    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_d

    .line 7534
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_1f

    .line 7535
    const-string v2, "TextView"

    const-string v3, "LayoutParam is not available."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7536
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 7552
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 7553
    :cond_e
    return-void

    .line 7434
    .end local v7    # "shouldEllipsize":Z
    .end local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v31    # "oldDir":I
    .end local v32    # "switchEllipsize":Z
    .end local v33    # "testDirChange":Z
    :cond_f
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 7439
    .restart local v31    # "oldDir":I
    .restart local v33    # "testDirChange":Z
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 7440
    .restart local v7    # "shouldEllipsize":Z
    :cond_11
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 7452
    .restart local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v32    # "switchEllipsize":Z
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 7455
    :cond_13
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_4

    .line 7457
    .restart local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 7461
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 7484
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 7490
    :cond_17
    if-eqz v7, :cond_19

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_19

    .line 7491
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_18

    .line 7492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 7498
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 7503
    :cond_19
    if-eqz v7, :cond_1b

    .line 7504
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_a
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1a
    const v29, 0x7fffffff

    goto :goto_a

    .line 7510
    :cond_1b
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 7514
    :cond_1c
    if-eqz v7, :cond_1e

    .line 7515
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_b
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1d
    const v29, 0x7fffffff

    goto :goto_b

    .line 7521
    :cond_1e
    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 7538
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    .line 7541
    .local v30, "height":I
    const/4 v2, -0x2

    move/from16 v0, v30

    if-eq v0, v2, :cond_20

    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_20

    .line 7542
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    goto/16 :goto_9

    .line 7545
    :cond_20
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_9
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    .prologue
    .line 8381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 8382
    const/16 v17, 0x0

    .line 8431
    :goto_0
    return v17

    .line 8384
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 8385
    .local v12, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 8386
    .local v3, "end":I
    if-eq v12, v3, :cond_1

    .line 8387
    const/16 v17, 0x0

    goto :goto_0

    .line 8392
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 8394
    .local v8, "line":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 8395
    .local v13, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 8396
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .line 8397
    .local v16, "vspace":I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .line 8398
    .local v15, "vslack":I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 8399
    div-int/lit8 v15, v16, 0x4

    .line 8400
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mScrollY:I

    .line 8402
    .local v14, "vs":I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 8403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 8410
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .line 8411
    .local v6, "hspace":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mScrollX:I

    .line 8412
    .local v5, "hs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 8413
    .local v7, "leftChar":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .line 8416
    .local v11, "rightChar":I
    if-ge v7, v11, :cond_6

    move v9, v7

    .line 8417
    .local v9, "lowChar":I
    :goto_2
    if-le v7, v11, :cond_7

    move v4, v7

    .line 8419
    .local v4, "highChar":I
    :goto_3
    move v10, v12

    .line 8420
    .local v10, "newStart":I
    if-ge v10, v9, :cond_8

    .line 8421
    move v10, v9

    .line 8426
    :cond_4
    :goto_4
    if-eq v10, v12, :cond_9

    .line 8427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8428
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 8404
    .end local v4    # "highChar":I
    .end local v5    # "hs":I
    .end local v6    # "hspace":I
    .end local v7    # "leftChar":I
    .end local v9    # "lowChar":I
    .end local v10    # "newStart":I
    .end local v11    # "rightChar":I
    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    .line 8405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    .restart local v5    # "hs":I
    .restart local v6    # "hspace":I
    .restart local v7    # "leftChar":I
    .restart local v11    # "rightChar":I
    :cond_6
    move v9, v11

    .line 8416
    goto :goto_2

    .restart local v9    # "lowChar":I
    :cond_7
    move v4, v11

    .line 8417
    goto :goto_3

    .line 8422
    .restart local v4    # "highChar":I
    .restart local v10    # "newStart":I
    :cond_8
    if-le v10, v4, :cond_4

    .line 8423
    move v10, v4

    goto :goto_4

    .line 8431
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public onAssociatedCheckBoxChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "attached"    # Z

    .prologue
    .line 11941
    iget-boolean v0, p0, Landroid/widget/TextView;->ADVANCED_VI_EFFECTS_ENABLED:Z

    if-nez v0, :cond_1

    .line 11952
    :cond_0
    :goto_0
    return-void

    .line 11943
    :cond_1
    iput-boolean p1, p0, Landroid/widget/TextView;->mAssociatedCheckBoxChecked:Z

    .line 11944
    if-nez p1, :cond_2

    .line 11945
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    .line 11946
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11949
    :cond_2
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 11950
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 5893
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 5895
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 5898
    invoke-virtual {p0}, Landroid/view/View;->isTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5899
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mAttachedWindow:Z

    .line 5900
    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5901
    invoke-direct {p0}, Landroid/widget/TextView;->registerForStylusPenEvent()V

    .line 5905
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 5907
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    if-nez v0, :cond_2

    .line 5908
    new-instance v0, Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/widget/TextView$IClipboardDataPasteEventImpl;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    .line 5911
    :cond_2
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    .line 7289
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 7108
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 7261
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 7272
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 7273
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3433
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3434
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    .line 3435
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 3437
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    .line 3439
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->updateShowAsAction()V

    .line 3440
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3441
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->showNewActionPopupWindow()V

    .line 3444
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->updateCurrentOrientation(I)V

    .line 3448
    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v6, 0x0

    .line 6173
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    .line 6174
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 6180
    .local v0, "drawableState":[I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6185
    array-length v2, v0

    .line 6186
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 6187
    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    .line 6188
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .line 6189
    .local v3, "nonPressedState":[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6190
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6196
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "nonPressedState":[I
    :goto_2
    return-object v3

    .line 6176
    .end local v0    # "drawableState":[I
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 6177
    .restart local v0    # "drawableState":[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 6186
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    move-object v3, v0

    .line 6196
    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x8000000

    .line 7113
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7114
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    .line 7115
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7116
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_4

    .line 7117
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7118
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 7119
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 7120
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 7121
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 7125
    :goto_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7126
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7128
    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7129
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7131
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    .line 7133
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    .line 7136
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7142
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7143
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7146
    :cond_2
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7148
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7150
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 7151
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_6

    .line 7152
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 7153
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 7154
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 7155
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 7159
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-object v0

    .line 7123
    :cond_4
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 7140
    :cond_5
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 7159
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 5915
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5917
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    .line 5918
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5919
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5922
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5923
    invoke-direct {p0}, Landroid/widget/TextView;->removeForStylusPenEvent()V

    .line 5927
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 5929
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 5931
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    .line 5932
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 10690
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 10738
    :cond_0
    :goto_0
    return v2

    .line 10692
    :pswitch_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    move v2, v1

    goto :goto_0

    .line 10695
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 10699
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 10702
    .local v0, "offset":I
    if-gez v0, :cond_2

    move v2, v1

    .line 10703
    goto :goto_0

    .line 10708
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 10709
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 10715
    .end local v0    # "offset":I
    :pswitch_3
    iput-boolean v2, p0, Landroid/widget/TextView;->mOnDragResult:Z

    .line 10717
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    .line 10719
    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_3

    .line 10720
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/TextView;->mLastAction:I

    .line 10721
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    .line 10724
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    .line 10728
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->unregisterGestureListener()V

    .line 10730
    :cond_5
    iget-boolean v2, p0, Landroid/widget/TextView;->mOnDragResult:Z

    goto :goto_0

    .line 10734
    :pswitch_4
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->unregisterGestureListener()V

    goto :goto_0

    .line 10690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6250
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 6253
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6255
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v16

    .line 6256
    .local v16, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v18

    .line 6257
    .local v18, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    .line 6258
    .local v17, "compoundPaddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v15

    .line 6259
    .local v15, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v33, v0

    .line 6260
    .local v33, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v34, v0

    .line 6261
    .local v34, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v31, v0

    .line 6262
    .local v31, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    .line 6263
    .local v26, "left":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mBottom:I

    .line 6264
    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v36, v0

    .line 6265
    .local v36, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v24

    .line 6266
    .local v24, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v29

    .line 6267
    .local v29, "offset":I
    if-eqz v24, :cond_12

    const/16 v27, 0x0

    .line 6268
    .local v27, "leftOffset":I
    :goto_0
    if-eqz v24, :cond_13

    move/from16 v32, v29

    .line 6270
    .local v32, "rightOffset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v19, v0

    .line 6271
    .local v19, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v19, :cond_3

    .line 6277
    sub-int v2, v9, v36

    sub-int/2addr v2, v15

    sub-int v39, v2, v18

    .line 6278
    .local v39, "vspace":I
    sub-int v2, v31, v26

    sub-int v2, v2, v17

    sub-int v23, v2, v16

    .line 6282
    .local v23, "hspace":I
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 6283
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6284
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    add-int v2, v2, v33

    add-int v2, v2, v27

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v6, v39, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6287
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6288
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6293
    :cond_0
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 6294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6295
    add-int v2, v33, v31

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v32

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v6, v39, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6298
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6299
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6304
    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 6305
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6306
    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingTop:I

    add-int v3, v3, v34

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6308
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6314
    :cond_2
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 6315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6316
    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int v3, v34, v9

    sub-int v3, v3, v36

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v19

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6319
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6320
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6325
    .end local v23    # "hspace":I
    .end local v39    # "vspace":I
    :cond_3
    sget-boolean v2, Landroid/widget/TextView;->B_USE_HINT_LIGHT_FONT:Z

    if-eqz v2, :cond_5

    .line 6326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mCurTextTypeface:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    .line 6328
    .local v35, "tf":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_14

    .line 6329
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintTextTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_4

    .line 6330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintTextTypeface:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    .line 6337
    :cond_4
    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mSkipSaveTypeface:Z

    .line 6338
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6339
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mSkipSaveTypeface:Z

    .line 6343
    .end local v35    # "tf":Landroid/graphics/Typeface;
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurTextColor:I

    .line 6345
    .local v14, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_6

    .line 6346
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 6349
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6351
    .local v4, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 6352
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_7

    .line 6353
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 6356
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6359
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 6360
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 6362
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 6367
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v22

    .line 6368
    .local v22, "extendedPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v21

    .line 6370
    .local v21, "extendedPaddingBottom":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v15

    sub-int v39, v2, v18

    .line 6371
    .restart local v39    # "vspace":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int v28, v2, v39

    .line 6373
    .local v28, "maxScrollY":I
    add-int v2, v16, v33

    int-to-float v11, v2

    .line 6374
    .local v11, "clipLeft":F
    if-nez v34, :cond_16

    const/4 v13, 0x0

    .line 6375
    .local v13, "clipTop":F
    :goto_3
    sub-int v2, v31, v26

    sub-int v2, v2, v17

    add-int v2, v2, v33

    int-to-float v12, v2

    .line 6376
    .local v12, "clipRight":F
    sub-int v2, v9, v36

    add-int v2, v2, v34

    move/from16 v0, v34

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    const/16 v21, 0x0

    .end local v21    # "extendedPaddingBottom":I
    :cond_9
    sub-int v2, v2, v21

    int-to-float v10, v2

    .line 6380
    .local v10, "clipBottom":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->hasTextEffect()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 6381
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextEffectOffsetLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v11, v2

    .line 6382
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextEffectOffsetRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v12, v2

    .line 6384
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextEffectOffsetTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v13, v2

    .line 6385
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextEffectOffsetBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    .line 6395
    :cond_a
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v12, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 6397
    const/16 v38, 0x0

    .line 6398
    .local v38, "voffsetText":I
    const/16 v37, 0x0

    .line 6402
    .local v37, "voffsetCursor":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_b

    .line 6403
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v38

    .line 6404
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v37

    .line 6406
    :cond_b
    move/from16 v0, v16

    int-to-float v2, v0

    add-int v3, v22, v38

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6408
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v25

    .line 6409
    .local v25, "layoutDirection":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v25

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 6410
    .local v8, "absoluteGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    .line 6412
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v2

    if-eqz v2, :cond_d

    and-int/lit8 v2, v8, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    .line 6414
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v40, v2, v3

    .line 6415
    .local v40, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v30, v2, v3

    .line 6416
    .local v30, "padding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    sub-int v3, v40, v30

    int-to-float v3, v3

    sub-float v20, v2, v3

    .line 6417
    .local v20, "dx":F
    if-eqz v24, :cond_c

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    .end local v20    # "dx":F
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6420
    .end local v30    # "padding":I
    .end local v40    # "width":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6421
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    neg-float v0, v2

    move/from16 v20, v0

    .line 6422
    .restart local v20    # "dx":F
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mBidiFormat:Landroid/text/BidiFormatter;

    .line 6423
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mBidiFormat:Landroid/text/BidiFormatter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 6424
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6431
    .end local v20    # "dx":F
    :cond_e
    :goto_5
    sub-int v7, v37, v38

    .line 6433
    .local v7, "cursorOffsetVertical":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v5

    .line 6434
    .local v5, "highlight":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_19

    .line 6435
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 6440
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 6441
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    .line 6442
    .local v20, "dx":I
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mBidiFormat:Landroid/text/BidiFormatter;

    .line 6443
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mBidiFormat:Landroid/text/BidiFormatter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 6444
    move/from16 v0, v20

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6448
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 6461
    .end local v20    # "dx":I
    :cond_f
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Landroid/util/GateConfig;->isGateLcdtextEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6462
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>LCDSTR:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/LCDSTR</GATE-M>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6464
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 6467
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->ADVANCED_VI_EFFECTS_ENABLED:Z

    if-eqz v2, :cond_11

    .line 6468
    invoke-direct/range {p0 .. p1}, Landroid/widget/TextView;->drawTextStrikethrough(Landroid/graphics/Canvas;)V

    .line 6470
    :cond_11
    return-void

    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "highlight":Landroid/graphics/Path;
    .end local v7    # "cursorOffsetVertical":I
    .end local v8    # "absoluteGravity":I
    .end local v10    # "clipBottom":F
    .end local v11    # "clipLeft":F
    .end local v12    # "clipRight":F
    .end local v13    # "clipTop":F
    .end local v14    # "color":I
    .end local v19    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "extendedPaddingTop":I
    .end local v25    # "layoutDirection":I
    .end local v27    # "leftOffset":I
    .end local v28    # "maxScrollY":I
    .end local v32    # "rightOffset":I
    .end local v37    # "voffsetCursor":I
    .end local v38    # "voffsetText":I
    .end local v39    # "vspace":I
    :cond_12
    move/from16 v27, v29

    .line 6267
    goto/16 :goto_0

    .line 6268
    .restart local v27    # "leftOffset":I
    :cond_13
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 6332
    .restart local v19    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v32    # "rightOffset":I
    .restart local v35    # "tf":Landroid/graphics/Typeface;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mPressTextTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_15

    .line 6333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPressTextTypeface:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    goto/16 :goto_2

    .line 6334
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSelectTextTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_4

    .line 6335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectTextTypeface:Landroid/graphics/Typeface;

    move-object/from16 v35, v0

    goto/16 :goto_2

    .line 6374
    .end local v35    # "tf":Landroid/graphics/Typeface;
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v11    # "clipLeft":F
    .restart local v14    # "color":I
    .restart local v21    # "extendedPaddingBottom":I
    .restart local v22    # "extendedPaddingTop":I
    .restart local v28    # "maxScrollY":I
    .restart local v39    # "vspace":I
    :cond_16
    add-int v2, v22, v34

    int-to-float v13, v2

    goto/16 :goto_3

    .line 6386
    .end local v21    # "extendedPaddingBottom":I
    .restart local v10    # "clipBottom":F
    .restart local v12    # "clipRight":F
    .restart local v13    # "clipTop":F
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_a

    .line 6387
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v11, v2

    .line 6388
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v12, v2

    .line 6390
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v13, v2

    .line 6391
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v10, v2

    goto/16 :goto_4

    .line 6426
    .restart local v8    # "absoluteGravity":I
    .local v20, "dx":F
    .restart local v25    # "layoutDirection":I
    .restart local v37    # "voffsetCursor":I
    .restart local v38    # "voffsetText":I
    :cond_18
    move/from16 v0, v20

    neg-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_5

    .line 6437
    .end local v20    # "dx":F
    .restart local v5    # "highlight":Landroid/graphics/Path;
    .restart local v7    # "cursorOffsetVertical":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto/16 :goto_6

    .line 6446
    .local v20, "dx":I
    :cond_1a
    move/from16 v0, v20

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_7
.end method

.method public onEditorAction(I)V
    .locals 21
    .param p1, "actionCode"    # I

    .prologue
    .line 5397
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_1

    const/16 v17, 0x0

    .line 5398
    .local v17, "ict":Landroid/widget/Editor$InputContentType;
    :goto_0
    if-eqz v17, :cond_6

    .line 5399
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_2

    .line 5400
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v2, v0, v1, v5}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5462
    :cond_0
    :goto_1
    return-void

    .line 5397
    .end local v17    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v17, v0

    goto :goto_0

    .line 5411
    .restart local v17    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_2
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 5412
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v19

    .line 5413
    .local v19, "v":Landroid/view/View;
    if-eqz v19, :cond_0

    .line 5414
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5415
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5421
    .end local v19    # "v":Landroid/view/View;
    :cond_3
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 5422
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v19

    .line 5423
    .restart local v19    # "v":Landroid/view/View;
    if-eqz v19, :cond_0

    .line 5424
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5425
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5431
    .end local v19    # "v":Landroid/view/View;
    :cond_4
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 5432
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v18

    .line 5433
    .local v18, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5434
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 5439
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5446
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 5447
    .local v20, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v20, :cond_0

    .line 5448
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 5449
    .local v3, "eventTime":J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 5455
    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    .line 7297
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9170
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 9173
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 9174
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 9175
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 9179
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    .line 9181
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 9201
    :goto_0
    return-void

    .line 9185
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 9187
    :cond_1
    if-eqz p1, :cond_2

    .line 9188
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 9189
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    .line 9190
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 9194
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 9196
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_3

    .line 9197
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 9200
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9323
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 9325
    :try_start_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 9326
    const/4 v0, 0x1

    .line 9334
    :goto_0
    return v0

    .line 9328
    :catch_0
    move-exception v0

    .line 9334
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9721
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9723
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 9724
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9725
    .local v0, "isPassword":Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 9727
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    .line 9728
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 9729
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 9730
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 9732
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v11, 0x1

    .line 9736
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9738
    const-class v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 9739
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v3

    .line 9745
    .local v3, "isPassword":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v5

    .line 9746
    .local v5, "text":Ljava/lang/CharSequence;
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v6, :cond_3

    .line 9747
    const/4 v4, -0x1

    .line 9748
    .local v4, "resid":I
    const/4 v1, 0x0

    .line 9750
    .local v1, "inputedText":Ljava/lang/CharSequence;
    if-nez v3, :cond_c

    .line 9751
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9759
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 9760
    .local v0, "hint":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 9762
    .local v2, "isEditing":Ljava/lang/CharSequence;
    if-nez v3, :cond_d

    .line 9763
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9769
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 9770
    const v4, 0x10401e8

    .line 9774
    :goto_2
    if-lez v4, :cond_1

    .line 9775
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 9777
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9778
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9780
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 9781
    if-eqz v0, :cond_f

    .line 9782
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9794
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "inputedText":Ljava/lang/CharSequence;
    .end local v2    # "isEditing":Ljava/lang/CharSequence;
    .end local v4    # "resid":I
    :cond_3
    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 9799
    iget-object v6, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v7, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v6, v7, :cond_4

    .line 9800
    invoke-virtual {p1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 9803
    :cond_4
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_5

    .line 9804
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v6, v6, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 9806
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 9807
    invoke-virtual {p1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 9811
    :cond_5
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 9812
    const/16 v6, 0x100

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9813
    const/16 v6, 0x200

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9814
    const/16 v6, 0x1f

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 9821
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 9822
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 9823
    const/high16 v6, 0x20000

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9825
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 9826
    const/16 v6, 0x4000

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9828
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 9829
    const v6, 0x8000

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9831
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 9832
    const/high16 v6, 0x10000

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9836
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v6

    if-nez v6, :cond_b

    .line 9837
    invoke-virtual {p1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 9839
    :cond_b
    return-void

    .line 9753
    .restart local v1    # "inputedText":Ljava/lang/CharSequence;
    .restart local v4    # "resid":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 9754
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401e7

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 9765
    .restart local v0    # "hint":Ljava/lang/CharSequence;
    .restart local v2    # "isEditing":Ljava/lang/CharSequence;
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 9772
    :cond_e
    const v4, 0x10401e9

    goto/16 :goto_2

    .line 9784
    :cond_f
    move-object v5, v2

    goto/16 :goto_3

    .line 9787
    :cond_10
    if-eqz v0, :cond_11

    .line 9788
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 9790
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 6663
    const/16 v4, 0xe8

    if-ne p1, v4, :cond_0

    .line 6664
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "clipboardEx"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 6665
    .local v0, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    iget-object v6, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v4, v5, v6}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    move-result v1

    .line 6666
    .local v1, "clipdata":Z
    if-nez v1, :cond_0

    .line 6667
    const-string v4, "TextView"

    const-string v5, "clip board is not shown"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6671
    .end local v0    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    .end local v1    # "clipdata":Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6672
    sparse-switch p1, :sswitch_data_0

    .line 6713
    :cond_1
    :goto_0
    return v3

    .line 6674
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6675
    const v3, 0x102001f

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    goto :goto_0

    .line 6679
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6680
    const v3, 0x1020020

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    goto :goto_0

    .line 6684
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6685
    const v3, 0x1020021

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    goto :goto_0

    .line 6689
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6690
    const v3, 0x1020022

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    goto :goto_0

    .line 6698
    :cond_2
    const/16 v4, 0x13

    if-eq p1, v4, :cond_3

    const/16 v4, 0x14

    if-eq p1, v4, :cond_3

    const/16 v4, 0x15

    if-eq p1, v4, :cond_3

    const/16 v4, 0x16

    if-ne p1, v4, :cond_4

    .line 6702
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_4

    .line 6703
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 6708
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 6709
    .local v2, "which":I
    if-nez v2, :cond_1

    .line 6710
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 6672
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 6718
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6720
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 6721
    .local v2, "which":I
    if-nez v2, :cond_0

    .line 6723
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 6756
    :goto_0
    return v3

    .line 6725
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v4

    .line 6727
    goto :goto_0

    .line 6730
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 6737
    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6738
    .local v1, "up":Landroid/view/KeyEvent;
    if-ne v2, v4, :cond_4

    .line 6740
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 6741
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 6742
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 6743
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 6745
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_3
    move v3, v4

    .line 6756
    goto :goto_0

    .line 6747
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 6749
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 6750
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    .line 6751
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 6752
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 6631
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    .line 6633
    const/4 v0, 0x0

    .line 6634
    .local v0, "isInSelectionMode":Z
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1

    .line 6635
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    .line 6639
    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    .line 6640
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 6641
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 6642
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 6643
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6658
    .end local v0    # "isInSelectionMode":Z
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    :goto_1
    return v2

    .line 6635
    .restart local v0    # "isInSelectionMode":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 6646
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 6647
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 6648
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_5

    .line 6649
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 6651
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 6652
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_1

    .line 6658
    .end local v0    # "isInSelectionMode":Z
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 9537
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 9538
    .local v0, "filteredMetaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9539
    sparse-switch p1, :sswitch_data_0

    .line 9584
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 9541
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9542
    const v1, 0x102001f

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9546
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9547
    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9551
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9552
    const v1, 0x1020021

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9556
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9557
    const v1, 0x1020022

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9561
    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canTranslate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->isTranslatorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9562
    const v1, 0x10202c2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9566
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canDelete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9567
    const v1, 0x10202c5

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9572
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9573
    const v1, 0x10202c7

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9577
    :sswitch_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9578
    const v1, 0x10202c6

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 9539
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x20 -> :sswitch_5
        0x30 -> :sswitch_4
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
        0x35 -> :sswitch_6
        0x36 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x82

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7001
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7002
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7103
    :goto_0
    return v2

    .line 7005
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7006
    iput-boolean v4, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 7009
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 7095
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_9

    .line 7096
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    .line 7097
    goto :goto_0

    .line 7011
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7021
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7022
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7024
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7025
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 7027
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    if-nez v2, :cond_3

    .line 7028
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7030
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->showInsertionController()V

    .line 7036
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 7039
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7040
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v2, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v2, :cond_4

    .line 7043
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v4, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 7044
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 7046
    goto/16 :goto_0

    .line 7050
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7062
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_8

    .line 7063
    invoke-virtual {p0, v5}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 7065
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 7066
    invoke-virtual {v1, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 7067
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7077
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v2, v3

    .line 7078
    goto/16 :goto_0

    .line 7079
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 7083
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7084
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7085
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7090
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "v":Landroid/view/View;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7099
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_a

    .line 7100
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v4, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    .line 7101
    goto/16 :goto_0

    .line 7103
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7009
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 8098
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 8099
    iget v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz v1, :cond_0

    .line 8100
    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 8101
    .local v0, "curs":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 8102
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 8104
    .end local v0    # "curs":I
    :cond_0
    return-void
.end method

.method onLocaleChanged()V
    .locals 2

    .prologue
    .line 9681
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 9682
    return-void
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 7756
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    .line 7757
    .local v26, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 7758
    .local v14, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    .line 7759
    .local v27, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 7764
    .local v15, "heightSize":I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7765
    .local v5, "boring":Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7767
    .local v6, "hintBoring":Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    .line 7768
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 7771
    :cond_0
    const/4 v9, -0x1

    .line 7772
    .local v9, "des":I
    const/4 v12, 0x0

    .line 7774
    .local v12, "fromexisting":Z
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    .line 7776
    move/from16 v24, v27

    .line 7857
    .local v24, "width":I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v24, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    .line 7858
    .local v3, "want":I
    move/from16 v23, v3

    .line 7860
    .local v23, "unpaddedWidth":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_2

    const/high16 v3, 0x100000

    .line 7862
    :cond_2
    move v4, v3

    .line 7863
    .local v4, "hintWant":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    move/from16 v17, v4

    .line 7865
    .local v17, "hintWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_19

    .line 7866
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v24, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7896
    :cond_3
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v14, v2, :cond_22

    .line 7898
    move v13, v15

    .line 7899
    .local v13, "height":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 7911
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v22, v2, v7

    .line 7912
    .local v22, "unpaddedHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_5

    .line 7913
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 7920
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v23

    if-gt v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_23

    .line 7923
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 7929
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v20

    .line 7930
    .local v20, "tf":Landroid/graphics/Typeface;
    if-eqz v20, :cond_24

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Typeface;->getStyle()I

    move-result v21

    .line 7931
    .local v21, "typefaceStyle":I
    :goto_5
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v26

    if-eq v0, v2, :cond_7

    and-int/lit8 v2, v21, 0x2

    if-eqz v2, :cond_7

    .line 7932
    move/from16 v0, v24

    int-to-double v7, v0

    const-wide v28, 0x3f9999999999999aL    # 0.025

    mul-double v7, v7, v28

    double-to-int v2, v7

    add-int v24, v24, v2

    .line 7935
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 7936
    return-void

    .line 7778
    .end local v3    # "want":I
    .end local v4    # "hintWant":I
    .end local v13    # "height":I
    .end local v17    # "hintWidth":I
    .end local v20    # "tf":Landroid/graphics/Typeface;
    .end local v21    # "typefaceStyle":I
    .end local v22    # "unpaddedHeight":I
    .end local v23    # "unpaddedWidth":I
    .end local v24    # "width":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_9

    .line 7779
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    .line 7782
    :cond_9
    if-gez v9, :cond_13

    .line 7783
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    .line 7784
    if-eqz v5, :cond_a

    .line 7785
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7791
    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_14

    .line 7792
    :cond_b
    if-gez v9, :cond_c

    .line 7793
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v9, v2

    .line 7795
    :cond_c
    move/from16 v24, v9

    .line 7800
    .restart local v24    # "width":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 7801
    .local v11, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_d

    .line 7802
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 7803
    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 7806
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    .line 7807
    const/16 v16, -0x1

    .line 7810
    .local v16, "hintDes":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_e

    .line 7811
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v16

    .line 7814
    :cond_e
    if-gez v16, :cond_f

    .line 7815
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 7816
    if-eqz v6, :cond_f

    .line 7817
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 7821
    :cond_f
    if-eqz v6, :cond_10

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_15

    .line 7822
    :cond_10
    if-gez v16, :cond_11

    .line 7823
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    .line 7825
    :cond_11
    move/from16 v17, v16

    .line 7830
    .restart local v17    # "hintWidth":I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v24

    if-le v0, v1, :cond_12

    .line 7831
    move/from16 v24, v17

    .line 7835
    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v24, v24, v2

    .line 7837
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_16

    .line 7838
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 7843
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_17

    .line 7844
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 7850
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 7852
    const/high16 v2, -0x80000000

    move/from16 v0, v26

    if-ne v0, v2, :cond_1

    .line 7853
    move/from16 v0, v27

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto/16 :goto_0

    .line 7788
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .end local v24    # "width":I
    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 7797
    :cond_14
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v24, v0

    .restart local v24    # "width":I
    goto/16 :goto_7

    .line 7827
    .restart local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v16    # "hintDes":I
    :cond_15
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v17, v0

    .restart local v17    # "hintWidth":I
    goto :goto_8

    .line 7840
    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto :goto_9

    .line 7846
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_a

    .line 7863
    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "want":I
    .restart local v4    # "hintWant":I
    .restart local v23    # "unpaddedWidth":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v17

    goto/16 :goto_1

    .line 7869
    .restart local v17    # "hintWidth":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_1a

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v24, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_1e

    :cond_1a
    const/16 v18, 0x1

    .line 7874
    .local v18, "layoutChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_1b

    if-eqz v12, :cond_1f

    if-ltz v9, :cond_1f

    if-gt v9, v3, :cond_1f

    :cond_1b
    const/16 v25, 0x1

    .line 7879
    .local v25, "widthChanged":Z
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_20

    :cond_1c
    const/16 v19, 0x1

    .line 7881
    .local v19, "maximumChanged":Z
    :goto_d
    if-nez v18, :cond_1d

    if-eqz v19, :cond_3

    .line 7882
    :cond_1d
    if-nez v19, :cond_21

    if-eqz v25, :cond_21

    .line 7883
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .line 7869
    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v25    # "widthChanged":Z
    :cond_1e
    const/16 v18, 0x0

    goto :goto_b

    .line 7874
    .restart local v18    # "layoutChanged":Z
    :cond_1f
    const/16 v25, 0x0

    goto :goto_c

    .line 7879
    .restart local v25    # "widthChanged":Z
    :cond_20
    const/16 v19, 0x0

    goto :goto_d

    .line 7885
    .restart local v19    # "maximumChanged":Z
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v24, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7887
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    .line 7888
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->initSelectControllersPosition()V

    goto/16 :goto_2

    .line 7901
    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v25    # "widthChanged":Z
    :cond_22
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    .line 7903
    .local v10, "desired":I
    move v13, v10

    .line 7904
    .restart local v13    # "height":I
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 7906
    const/high16 v2, -0x80000000

    if-ne v14, v2, :cond_4

    .line 7907
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_3

    .line 7925
    .end local v10    # "desired":I
    .restart local v22    # "unpaddedHeight":I
    :cond_23
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_4

    .line 7930
    .restart local v20    # "tf":Landroid/graphics/Typeface;
    :cond_24
    const/16 v21, 0x0

    goto/16 :goto_5
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9699
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9701
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9702
    .local v0, "isPassword":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9703
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9704
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9705
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9708
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5837
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    .line 5838
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 5841
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_6

    .line 5846
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5848
    .local v0, "curs":I
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5850
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5858
    :cond_1
    if-gez v0, :cond_2

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    .line 5859
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5862
    :cond_2
    if-ltz v0, :cond_3

    .line 5863
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 5872
    .end local v0    # "curs":I
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v1, :cond_4

    .line 5873
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 5874
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v3, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 5881
    :cond_4
    instance-of v1, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5882
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 5885
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5886
    iput-boolean v3, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5888
    const/4 v1, 0x1

    return v1

    .line 5866
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 7310
    const/4 v0, 0x0

    return v0
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 10801
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_1

    .line 10810
    :cond_0
    :goto_0
    return-void

    .line 10804
    :cond_1
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 10807
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    .line 10808
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 4581
    instance-of v5, p1, Landroid/widget/TextView$SavedState;

    if-nez v5, :cond_1

    .line 4582
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4642
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p1

    .line 4586
    check-cast v4, Landroid/widget/TextView$SavedState;

    .line 4587
    .local v4, "ss":Landroid/widget/TextView$SavedState;
    invoke-virtual {v4}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {p0, v5}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4590
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 4591
    iget-object v3, v4, Landroid/widget/TextView$SavedState;->locale:Ljava/lang/CharSequence;

    .line 4594
    .local v3, "savedLocale":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->getCurrentLocaleAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, p0, Landroid/widget/EditText;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_3

    .line 4595
    :cond_2
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4599
    .end local v3    # "savedLocale":Ljava/lang/CharSequence;
    :cond_3
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->caller:Ljava/lang/CharSequence;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4

    .line 4600
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v4, Landroid/widget/TextView$SavedState;->caller:Ljava/lang/CharSequence;

    iput-object v6, v5, Landroid/widget/Editor;->mCaller:Ljava/lang/CharSequence;

    .line 4604
    :cond_4
    iget v5, v4, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v5, :cond_7

    iget v5, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v5, :cond_7

    .line 4605
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_7

    .line 4606
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4608
    .local v1, "len":I
    iget v5, v4, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v5, v1, :cond_5

    iget v5, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v5, v1, :cond_8

    .line 4609
    :cond_5
    const-string v2, ""

    .line 4611
    .local v2, "restored":Ljava/lang/String;
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    .line 4612
    const-string v2, "(restored) "

    .line 4616
    :cond_6
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_7

    .line 4617
    const-string v5, "TextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved cursor position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " out of range for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCaller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mCaller:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    .end local v1    # "len":I
    .end local v2    # "restored":Ljava/lang/String;
    :cond_7
    :goto_1
    iget-object v5, v4, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 4634
    iget-object v0, v4, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4636
    .local v0, "error":Ljava/lang/CharSequence;
    new-instance v5, Landroid/widget/TextView$1;

    invoke-direct {v5, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4623
    .end local v0    # "error":Ljava/lang/CharSequence;
    .restart local v1    # "len":I
    :cond_8
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    iget v6, v4, Landroid/widget/TextView$SavedState;->selStart:I

    iget v7, v4, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4625
    iget-boolean v5, v4, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v5, :cond_7

    .line 4626
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4627
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 10764
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 10766
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 10767
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 4480
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 4517
    .local v5, "superState":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 4518
    .local v1, "save":Z
    const/4 v4, 0x0

    .line 4519
    .local v4, "start":I
    const/4 v0, 0x0

    .line 4521
    .local v0, "end":I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 4522
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 4523
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4524
    if-gez v4, :cond_0

    if-ltz v0, :cond_1

    .line 4526
    :cond_0
    const/4 v1, 0x1

    .line 4530
    :cond_1
    if-eqz v1, :cond_5

    .line 4531
    new-instance v3, Landroid/widget/TextView$SavedState;

    invoke-direct {v3, v5}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4533
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    iput v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    .line 4534
    iput v0, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 4536
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_4

    .line 4537
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4539
    .local v2, "sp":Landroid/text/Spannable;
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_2

    .line 4540
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 4541
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4544
    :cond_2
    iput-object v2, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 4548
    .end local v2    # "sp":Landroid/text/Spannable;
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->getCurrentLocaleAsString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->locale:Ljava/lang/CharSequence;

    .line 4550
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ltz v4, :cond_3

    if-ltz v0, :cond_3

    .line 4551
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 4554
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4559
    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :goto_1
    return-object v3

    .line 4546
    .restart local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_4
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_0

    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_5
    move-object v3, v5

    .line 4559
    goto :goto_1
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 5936
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 5937
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    .line 5953
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .prologue
    .line 10175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 10176
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10177
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    .line 10179
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 8839
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 8840
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9158
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 9161
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 9165
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 9166
    :cond_1
    return-void
.end method

.method public onStrikeThroughAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 11929
    return-void
.end method

.method public onStrikeThroughAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 11935
    return-void
.end method

.method public onStrikeThroughAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnim"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 11919
    iget-boolean v0, p0, Landroid/widget/TextView;->ADVANCED_VI_EFFECTS_ENABLED:Z

    if-nez v0, :cond_0

    .line 11923
    :goto_0
    return-void

    .line 11921
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mAssociatedCheckBoxAnimationValue:F

    .line 11922
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 8829
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 14
    .param p1, "id"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 9971
    const/4 v5, 0x0

    .line 9972
    .local v5, "min":I
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 9974
    .local v4, "max":I
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 9975
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 9976
    .local v7, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 9978
    .local v6, "selEnd":I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 9979
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9983
    .end local v6    # "selEnd":I
    .end local v7    # "selStart":I
    :cond_0
    const/4 v2, 0x0

    .line 9986
    .local v2, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    sparse-switch p1, :sswitch_data_0

    move v10, v11

    .line 10132
    :cond_1
    :goto_0
    return v10

    .line 9990
    :sswitch_0
    iput-boolean v10, p0, Landroid/widget/TextView;->mSelectall:Z

    .line 9991
    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    .line 9992
    new-instance v11, Landroid/widget/TextView$4;

    invoke-direct {v11, p0}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    const-wide/16 v12, 0xfa0

    invoke-virtual {p0, v11, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10002
    :sswitch_1
    const/4 v11, 0x3

    iput v11, p0, Landroid/widget/TextView;->mLastAction:I

    .line 10003
    iget-boolean v11, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v11, :cond_2

    .line 10004
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    .line 10007
    :cond_2
    invoke-direct {p0, v5, v4}, Landroid/widget/TextView;->paste(II)V

    goto :goto_0

    .line 10012
    :sswitch_2
    iget-object v12, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v12, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v12

    if-nez v12, :cond_3

    move v10, v11

    .line 10013
    goto :goto_0

    .line 10017
    :cond_3
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 10018
    .restart local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 10019
    invoke-direct {p0, v2}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    .line 10022
    iget-boolean v11, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v11, :cond_4

    .line 10023
    iput v13, p0, Landroid/widget/TextView;->mLastAction:I

    .line 10024
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    .line 10027
    :cond_4
    invoke-virtual {p0, v5, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 10028
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_0

    .line 10033
    :sswitch_3
    iget-object v12, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v12, v10}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v12

    if-nez v12, :cond_5

    move v10, v11

    .line 10034
    goto :goto_0

    .line 10038
    :cond_5
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 10039
    .restart local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 10040
    invoke-direct {p0, v2}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    .line 10042
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    .line 10043
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_0

    .line 10049
    :sswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "clipboardEx"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    .line 10050
    .local v1, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v12, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    iget-object v13, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v1, v11, v12, v13}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    move-result v0

    .line 10051
    .local v0, "cData":Z
    if-nez v0, :cond_1

    .line 10052
    const-string v11, "TextView"

    const-string v12, "clip board is not shown"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10057
    .end local v0    # "cData":Z
    .end local v1    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :sswitch_5
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    .line 10058
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10059
    .local v9, "source":Ljava/lang/String;
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 10060
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11, v9, v5, v4}, Landroid/widget/Editor;->translateRegister(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 10065
    .end local v9    # "source":Ljava/lang/String;
    :sswitch_6
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10066
    .local v8, "send":Landroid/content/Intent;
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10067
    .restart local v9    # "source":Ljava/lang/String;
    const-string/jumbo v11, "text/plain"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10068
    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v8, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10070
    iget-boolean v11, p0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v11, :cond_6

    .line 10071
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/util/GeneralUtil;->isThemeDark(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 10072
    const-string/jumbo v11, "theme"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10079
    :cond_6
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x1040887

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 10082
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 10083
    .end local v3    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v11

    goto/16 :goto_0

    .line 10074
    :cond_7
    const-string/jumbo v11, "theme"

    invoke-virtual {v8, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 10089
    .end local v8    # "send":Landroid/content/Intent;
    .end local v9    # "source":Ljava/lang/String;
    :sswitch_7
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10090
    .restart local v8    # "send":Landroid/content/Intent;
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10091
    .restart local v9    # "source":Ljava/lang/String;
    const-string/jumbo v11, "new_search"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10092
    const-string/jumbo v11, "query"

    invoke-virtual {v8, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10093
    const-string v11, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10095
    const/high16 v11, 0x10000000

    :try_start_1
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10096
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 10097
    :catch_1
    move-exception v11

    goto/16 :goto_0

    .line 10104
    .end local v8    # "send":Landroid/content/Intent;
    .end local v9    # "source":Ljava/lang/String;
    :sswitch_8
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v11, :cond_1

    .line 10105
    iget-object v11, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v11, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10106
    .restart local v9    # "source":Ljava/lang/String;
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 10107
    iget-object v11, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v11, v9, v5, v4}, Landroid/widget/Editor;->sendToDictionary(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 10115
    .end local v9    # "source":Ljava/lang/String;
    :sswitch_9
    iget-boolean v11, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v11, :cond_8

    .line 10116
    iput v13, p0, Landroid/widget/TextView;->mLastAction:I

    .line 10117
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    .line 10119
    :cond_8
    invoke-virtual {p0, v5, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_0

    .line 10123
    :sswitch_a
    invoke-virtual {p0}, Landroid/widget/TextView;->runRedo()Z

    goto/16 :goto_0

    .line 10127
    :sswitch_b
    invoke-virtual {p0}, Landroid/widget/TextView;->runUndo()Z

    goto/16 :goto_0

    .line 9986
    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_3
        0x1020022 -> :sswitch_1
        0x10202c1 -> :sswitch_4
        0x10202c2 -> :sswitch_5
        0x10202c3 -> :sswitch_6
        0x10202c4 -> :sswitch_8
        0x10202c5 -> :sswitch_9
        0x10202c6 -> :sswitch_b
        0x10202c7 -> :sswitch_a
        0x1020461 -> :sswitch_7
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 9258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 9260
    .local v0, "action":I
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 9262
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 9269
    .local v4, "superResult":Z
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v7, :cond_2

    if-ne v0, v8, :cond_2

    .line 9270
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 9318
    .end local v4    # "superResult":Z
    :cond_1
    :goto_0
    return v4

    .line 9274
    .restart local v4    # "superResult":Z
    :cond_2
    if-ne v0, v8, :cond_b

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v7, :cond_b

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_b

    move v6, v8

    .line 9277
    .local v6, "touchIsFinished":Z
    :goto_1
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v7, :cond_1

    .line 9279
    const/4 v1, 0x0

    .line 9281
    .local v1, "handled":Z
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_5

    .line 9282
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-interface {v10, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 9285
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    .line 9286
    .local v5, "textIsSelectable":Z
    if-eqz v6, :cond_6

    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v7, :cond_6

    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 9290
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 9293
    .local v3, "links":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    if-lez v7, :cond_6

    .line 9294
    aget-object v7, v3, v9

    invoke-virtual {v7, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 9295
    const/4 v1, 0x1

    .line 9299
    .end local v3    # "links":[Landroid/text/style/ClickableSpan;
    :cond_6
    if-eqz v6, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v5, :cond_a

    .line 9301
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 9302
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 9303
    if-nez v5, :cond_9

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v7, :cond_9

    .line 9304
    if-eqz v2, :cond_8

    invoke-virtual {v2, p0, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_8

    move v9, v8

    :cond_8
    or-int/2addr v1, v9

    .line 9308
    :cond_9
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    .line 9310
    const/4 v1, 0x1

    .line 9313
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_a
    if-eqz v1, :cond_1

    move v4, v8

    .line 9314
    goto/16 :goto_0

    .end local v1    # "handled":Z
    .end local v5    # "textIsSelectable":Z
    .end local v6    # "touchIsFinished":Z
    :cond_b
    move v6, v9

    .line 9274
    goto/16 :goto_1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9363
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 9364
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9365
    const/4 v0, 0x1

    .line 9369
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9214
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9215
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 9216
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    .line 9218
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 9205
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 9207
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    .line 9209
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 9210
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 9843
    sparse-switch p1, :sswitch_data_0

    .line 9893
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    :goto_0
    return v3

    .line 9845
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9846
    const v3, 0x1020021

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 9847
    goto :goto_0

    :cond_0
    move v3, v5

    .line 9850
    goto :goto_0

    .line 9852
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9853
    const v3, 0x1020022

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 9854
    goto :goto_0

    :cond_1
    move v3, v5

    .line 9857
    goto :goto_0

    .line 9859
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9860
    const v3, 0x1020020

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 9861
    goto :goto_0

    :cond_2
    move v3, v5

    .line 9864
    goto :goto_0

    .line 9866
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 9867
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v2

    .line 9868
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_3

    move v3, v5

    .line 9869
    goto :goto_0

    .line 9871
    :cond_3
    if-eqz p2, :cond_5

    const-string v6, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 9873
    .local v1, "start":I
    :goto_1
    if-eqz p2, :cond_6

    const-string v6, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 9875
    .local v0, "end":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-ne v6, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-eq v6, v0, :cond_9

    .line 9877
    :cond_4
    if-ne v1, v0, :cond_7

    if-ne v0, v3, :cond_7

    .line 9878
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    move v3, v4

    .line 9879
    goto/16 :goto_0

    .end local v0    # "end":I
    .end local v1    # "start":I
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_5
    move v1, v3

    .line 9871
    goto :goto_1

    .restart local v1    # "start":I
    :cond_6
    move v0, v3

    .line 9873
    goto :goto_2

    .line 9881
    .restart local v0    # "end":I
    :cond_7
    if-ltz v1, :cond_9

    if-gt v1, v0, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v0, v3, :cond_9

    .line 9882
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9884
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_8

    .line 9885
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_8
    move v3, v4

    .line 9887
    goto/16 :goto_0

    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_9
    move v3, v5

    .line 9891
    goto/16 :goto_0

    .line 9843
    :sswitch_data_0
    .sparse-switch
        0x4000 -> :sswitch_0
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10147
    const/4 v0, 0x0

    .line 10149
    .local v0, "handled":Z
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10150
    const/4 v0, 0x1

    .line 10153
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    .line 10154
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 10157
    :cond_1
    if-eqz v0, :cond_3

    .line 10158
    iget-boolean v1, p0, Landroid/view/View;->mTwHapticFeedbackPerformed:Z

    if-nez v1, :cond_2

    .line 10159
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 10161
    :cond_2
    iput-boolean v2, p0, Landroid/view/View;->mTwHapticFeedbackPerformed:Z

    .line 10162
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 10167
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10168
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10170
    :cond_4
    return v0
.end method

.method public performWBEditorAction(I)V
    .locals 21
    .param p1, "actionCode"    # I

    .prologue
    .line 12162
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_3

    const/16 v17, 0x0

    .line 12163
    .local v17, "ict":Landroid/widget/Editor$InputContentType;
    :goto_0
    if-eqz v17, :cond_9

    .line 12164
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v18

    .line 12166
    .local v18, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_1

    .line 12167
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v2, v0, v1, v5}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12168
    const/4 v2, 0x5

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 12169
    :cond_0
    if-eqz v18, :cond_1

    .line 12170
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 12183
    :cond_1
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 12184
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v19

    .line 12185
    .local v19, "v":Landroid/view/View;
    if-eqz v19, :cond_2

    .line 12186
    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    move-object/from16 v2, v19

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v2}, Landroid/widget/TextView;->requestWritingBuddy()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12238
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "v":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 12162
    .end local v17    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v17, v0

    goto :goto_0

    .line 12188
    .restart local v17    # "ict":Landroid/widget/Editor$InputContentType;
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v19    # "v":Landroid/view/View;
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12189
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 12195
    .end local v19    # "v":Landroid/view/View;
    :cond_5
    const/4 v2, 0x7

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 12196
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v19

    .line 12197
    .restart local v19    # "v":Landroid/view/View;
    if-eqz v19, :cond_2

    .line 12198
    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    move-object/from16 v2, v19

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v2}, Landroid/widget/TextView;->requestWritingBuddy()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12200
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12201
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 12207
    .end local v19    # "v":Landroid/view/View;
    :cond_7
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 12208
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12209
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 12215
    :cond_8
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12222
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 12223
    .local v20, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v20, :cond_2

    .line 12224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 12225
    .local v3, "eventTime":J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 12231
    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1
.end method

.method prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 7
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "paste"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0xa

    .line 10487
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 10488
    if-lez p1, :cond_0

    .line 10489
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 10490
    .local v1, "charBefore":C
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 10492
    .local v0, "charAfter":C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10494
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 10495
    .local v3, "originalLength":I
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 10498
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 10499
    .local v2, "delta":I
    add-int/2addr p1, v2

    .line 10500
    add-int/2addr p2, v2

    .line 10513
    .end local v0    # "charAfter":C
    .end local v1    # "charBefore":C
    .end local v2    # "delta":I
    .end local v3    # "originalLength":I
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_1

    .line 10514
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 10515
    .restart local v1    # "charBefore":C
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 10517
    .restart local v0    # "charAfter":C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10519
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, p2, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 10528
    .end local v0    # "charAfter":C
    .end local v1    # "charBefore":C
    :cond_1
    :goto_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 10501
    .restart local v0    # "charAfter":C
    .restart local v1    # "charBefore":C
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v1, v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v0, v6, :cond_0

    .line 10504
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 10505
    .restart local v3    # "originalLength":I
    const-string v4, " "

    invoke-virtual {p0, p1, p1, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 10507
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 10508
    .restart local v2    # "delta":I
    add-int/2addr p1, v2

    .line 10509
    add-int/2addr p2, v2

    goto :goto_0

    .line 10520
    .end local v2    # "delta":I
    .end local v3    # "originalLength":I
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v1, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, v6, :cond_1

    .line 10523
    const-string v4, " "

    invoke-virtual {p0, p2, p2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 8917
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    .line 8931
    :cond_0
    return-void

    .line 8918
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 8920
    .local v5, "text":Landroid/text/Editable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .line 8921
    .local v4, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v1, v4

    .line 8922
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 8923
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 8924
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 8925
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_2

    if-ne v3, p1, :cond_3

    .line 8926
    :cond_2
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8927
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 8922
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p1, "spannable"    # Landroid/text/Spannable;

    .prologue
    .line 4568
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 4570
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4571
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 4572
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    .line 4574
    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4570
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4577
    .end local v0    # "flags":I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 5058
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 5060
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 5061
    check-cast v1, Landroid/text/Spannable;

    .line 5067
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 5068
    .local v2, "spans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 5069
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 5068
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5063
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5064
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .line 5072
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 8865
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 8866
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 8868
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 8869
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8872
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public removeTextEffect(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 3708
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->removeTextEffect(I)V

    .line 3709
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 10842
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10843
    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    .prologue
    .line 6987
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 6988
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    .prologue
    .line 10816
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 10817
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 10818
    return-void
.end method

.method runRedo()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 10407
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 10408
    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 10410
    .local v0, "end":I
    const/4 v2, 0x5

    iput v2, p0, Landroid/widget/TextView;->mLastAction:I

    .line 10411
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;)Z

    .line 10413
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5, v2, v3}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 10414
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    iget v3, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iget v4, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10416
    iget v2, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    .line 10417
    iget v2, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iput v2, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    .line 10418
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    .line 10419
    iput v0, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    .line 10421
    iget-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    .line 10422
    iget-object v2, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    .line 10423
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    .line 10424
    iput v5, p0, Landroid/widget/TextView;->mLastAction:I

    .line 10425
    const/4 v2, 0x1

    return v2
.end method

.method runUndo()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 10383
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 10384
    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 10386
    .local v0, "end":I
    const/4 v2, 0x4

    iput v2, p0, Landroid/widget/TextView;->mLastAction:I

    .line 10387
    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 10388
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;)Z

    .line 10390
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5, v2, v3}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 10392
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    iget v3, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iget v4, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10394
    iget v2, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    .line 10395
    iget v2, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iput v2, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    .line 10396
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    .line 10397
    iput v0, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    .line 10399
    iget-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    .line 10400
    iget-object v2, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    .line 10401
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    .line 10402
    iput v5, p0, Landroid/widget/TextView;->mLastAction:I

    .line 10403
    const/4 v2, 0x1

    return v2
.end method

.method savePreText(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 10436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10437
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    .line 10441
    :goto_0
    iput v1, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    .line 10442
    iput v1, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    .line 10443
    const/4 v0, 0x1

    return v0

    .line 10439
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method savePreText(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 10429
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 10430
    .local v0, "ret":Z
    iput p2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    .line 10431
    iput p3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    .line 10432
    return v0
.end method

.method saveRedoText(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10467
    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    .line 10468
    iput-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    .line 10469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10470
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    .line 10474
    :goto_0
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    .line 10475
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    .line 10476
    const/4 v0, 0x1

    return v0

    .line 10472
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method saveUndoText(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10454
    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    .line 10455
    iput-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    .line 10456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10457
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    .line 10461
    :goto_0
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    .line 10462
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    .line 10463
    const/4 v0, 0x1

    return v0

    .line 10459
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method saveUndoText(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 10447
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 10448
    .local v0, "ret":Z
    iput p2, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    .line 10449
    iput p3, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    .line 10450
    return v0
.end method

.method selectAllText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10347
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 10348
    .local v0, "length":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10349
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 10350
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->showNewActionPopupWindow()V

    .line 10352
    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 9903
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    .line 9907
    :goto_0
    return-void

    .line 9906
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    .line 9927
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 9929
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 9930
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 9931
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 9932
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 9933
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9934
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 8957
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/TextView;->mChangedText:Z

    .line 8958
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8959
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8960
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8961
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8962
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 8961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8965
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 8939
    iput p4, p0, Landroid/widget/TextView;->mChangedSize:I

    .line 8940
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8941
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8942
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8943
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8944
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8943
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8948
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    .line 8949
    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10948
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 10964
    :goto_0
    return-void

    .line 10955
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    .line 10956
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideControllers()V

    .line 10958
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .line 10959
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 10960
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 10962
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public setAllCaps(Z)V
    .locals 2
    .param p1, "allCaps"    # Z

    .prologue
    .line 8552
    if-eqz p1, :cond_0

    .line 8553
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8557
    :goto_0
    return-void

    .line 8555
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .param p1, "mask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3803
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 3804
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .param p1, "pad"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3056
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3057
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    .line 3058
    if-eqz v0, :cond_0

    .line 3059
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 3068
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3069
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3070
    return-void

    .line 3062
    :cond_1
    if-nez v0, :cond_2

    .line 3063
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3065
    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2669
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2671
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 2674
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_9

    .line 2676
    if-eqz v1, :cond_1

    .line 2677
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_4

    .line 2678
    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2770
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 2771
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 2772
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 2775
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2776
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2777
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2778
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2779
    return-void

    .end local v2    # "drawables":Z
    :cond_3
    move v2, v4

    .line 2671
    goto :goto_0

    .line 2682
    .restart local v2    # "drawables":Z
    :cond_4
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2683
    :cond_5
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 2684
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2685
    :cond_6
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 2686
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2687
    :cond_7
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 2688
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2689
    :cond_8
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 2690
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2691
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2692
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2693
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 2697
    :cond_9
    if-nez v1, :cond_a

    .line 2698
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2701
    :cond_a
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v4, v5, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2703
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    .line 2704
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2706
    :cond_b
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 2708
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    .line 2709
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2711
    :cond_c
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 2713
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    .line 2714
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2716
    :cond_d
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 2718
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e

    .line 2719
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2721
    :cond_e
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 2723
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2726
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    .line 2728
    .local v3, "state":[I
    if-eqz p1, :cond_f

    .line 2729
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2730
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2731
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2732
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2733
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 2738
    :goto_2
    if-eqz p3, :cond_10

    .line 2739
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2740
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2741
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2742
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2743
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 2748
    :goto_3
    if-eqz p2, :cond_11

    .line 2749
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2750
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2751
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2752
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2753
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2758
    :goto_4
    if-eqz p4, :cond_12

    .line 2759
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2760
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2761
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2762
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2763
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 2735
    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_2

    .line 2745
    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_3

    .line 2755
    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 2765
    :cond_12
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2848
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2850
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    move v2, v5

    .line 2853
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_8

    .line 2855
    if-eqz v1, :cond_1

    .line 2856
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_3

    .line 2857
    iput-object v7, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2948
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2949
    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    .line 2950
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2951
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2952
    return-void

    .end local v2    # "drawables":Z
    :cond_2
    move v2, v4

    .line 2850
    goto :goto_0

    .line 2861
    .restart local v2    # "drawables":Z
    :cond_3
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2862
    :cond_4
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2863
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2864
    :cond_5
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 2865
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2866
    :cond_6
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2867
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2868
    :cond_7
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 2869
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2870
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2871
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2872
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 2876
    :cond_8
    if-nez v1, :cond_9

    .line 2877
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2880
    :cond_9
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2882
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    .line 2883
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2885
    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2887
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    .line 2888
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2890
    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 2892
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    .line 2893
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2895
    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2897
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    .line 2898
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2900
    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 2902
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2905
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    .line 2907
    .local v3, "state":[I
    if-eqz p1, :cond_e

    .line 2908
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2909
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2910
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2911
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2912
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 2917
    :goto_2
    if-eqz p3, :cond_f

    .line 2918
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2919
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2920
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2921
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2922
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 2927
    :goto_3
    if-eqz p2, :cond_10

    .line 2928
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2929
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2930
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2931
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2932
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2937
    :goto_4
    if-eqz p4, :cond_11

    .line 2938
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2939
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2940
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2941
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2942
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 2914
    :cond_e
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    .line 2924
    :cond_f
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    .line 2934
    :cond_10
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 2944
    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2973
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2974
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2979
    return-void

    :cond_1
    move-object v4, v1

    .line 2974
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 2995
    if-eqz p1, :cond_0

    .line 2996
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2998
    :cond_0
    if-eqz p3, :cond_1

    .line 2999
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3001
    :cond_1
    if-eqz p2, :cond_2

    .line 3002
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3004
    :cond_2
    if-eqz p4, :cond_3

    .line 3005
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3007
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3008
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2799
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2800
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2804
    return-void

    :cond_1
    move-object v4, v1

    .line 2800
    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 2820
    if-eqz p1, :cond_0

    .line 2821
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2823
    :cond_0
    if-eqz p3, :cond_1

    .line 2824
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2826
    :cond_1
    if-eqz p2, :cond_2

    .line 2827
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2829
    :cond_2
    if-eqz p4, :cond_3

    .line 2830
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2832
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2833
    return-void
.end method

.method public setCursorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 11364
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 11365
    const v0, 0x10800b4

    iput v0, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    .line 11369
    :cond_0
    :goto_0
    return-void

    .line 11366
    :cond_1
    const/high16 v0, -0x1000000

    if-ne p1, v0, :cond_0

    .line 11367
    const v0, 0x10800b5

    iput v0, p0, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto :goto_0
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10860
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10861
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 8728
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    .line 8739
    :cond_0
    :goto_0
    return-void

    .line 8729
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 8730
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_0

    .line 8731
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 8732
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8734
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    .line 8737
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 10246
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 10247
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 10248
    return-void
.end method

.method public setDeviceDefaultTheme(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 12004
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 12005
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setDeviceDefaultTheme(Z)V

    .line 12007
    :cond_0
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    .prologue
    .line 4680
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 4681
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4682
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, -0x1

    .line 8628
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 8629
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_1

    .line 8630
    iput v1, p0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    .line 8631
    iput v1, p0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    .line 8642
    :cond_0
    :goto_0
    return-void

    .line 8634
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 8636
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8637
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8638
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8639
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;II)V
    .locals 1
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p2, "keywordStart"    # I
    .param p3, "keywordCount"    # I

    .prologue
    .line 8649
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 8650
    if-gez p2, :cond_1

    .line 8664
    :cond_0
    :goto_0
    return-void

    .line 8653
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 8654
    iput p2, p0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    .line 8655
    iput p3, p0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    .line 8658
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8659
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8660
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8661
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setEms(I)V
    .locals 1
    .param p1, "ems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4319
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4320
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 4322
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4323
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4324
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2060
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 2088
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    if-nez p1, :cond_2

    .line 2066
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2067
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2068
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2072
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2074
    if-eqz p1, :cond_3

    .line 2076
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2077
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2081
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 2082
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 2083
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 2086
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 5552
    if-nez p1, :cond_0

    .line 5553
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5561
    :goto_0
    return-void

    .line 5555
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080588

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5558
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5559
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5573
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5574
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5575
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 5577
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v7, 0x0

    .line 7191
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 7192
    .local v1, "content":Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 7193
    if-nez v1, :cond_4

    .line 7194
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7213
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 7214
    .local v3, "sp":Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 7215
    .local v0, "N":I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 7216
    .local v4, "start":I
    if-gez v4, :cond_8

    const/4 v4, 0x0

    .line 7218
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 7219
    .local v2, "end":I
    if-gez v2, :cond_9

    const/4 v2, 0x0

    .line 7221
    :cond_2
    :goto_2
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7223
    instance-of v5, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7224
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 7229
    :cond_3
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_a

    .line 7230
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 7234
    :goto_3
    return-void

    .line 7195
    .end local v0    # "N":I
    .end local v2    # "end":I
    .end local v3    # "sp":Landroid/text/Spannable;
    .end local v4    # "start":I
    :cond_4
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_5

    .line 7196
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 7197
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 7199
    :cond_5
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 7200
    .restart local v0    # "N":I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 7201
    .restart local v4    # "start":I
    if-le v4, v0, :cond_6

    move v4, v0

    .line 7202
    :cond_6
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 7203
    .restart local v2    # "end":I
    if-le v2, v0, :cond_7

    move v2, v0

    .line 7204
    :cond_7
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 7205
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 7217
    .end local v2    # "end":I
    .restart local v3    # "sp":Landroid/text/Spannable;
    :cond_8
    if-le v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    .line 7220
    .restart local v2    # "end":I
    :cond_9
    if-le v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    .line 7232
    :cond_a
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .param p1, "req"    # Landroid/view/inputmethod/ExtractedTextRequest;

    .prologue
    .line 7240
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    .line 7241
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 7246
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    .line 7247
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 5604
    if-nez p1, :cond_0

    .line 5605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5608
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 5610
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    .line 5611
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 5613
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 5581
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 5583
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    .line 5585
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 5587
    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4659
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 4660
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .param p1, "gravity"    # I

    .prologue
    const v4, 0x800007

    .line 3951
    and-int v0, p1, v4

    if-nez v0, :cond_0

    .line 3952
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 3954
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 3955
    or-int/lit8 p1, p1, 0x30

    .line 3958
    :cond_1
    const/4 v7, 0x0

    .line 3960
    .local v7, "newLayout":Z
    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    .line 3962
    const/4 v7, 0x1

    .line 3965
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    .line 3966
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3969
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 3971
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 3973
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 3974
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    .line 3976
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 3980
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    :cond_4
    return-void

    .line 3974
    .restart local v1    # "want":I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4192
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4193
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4195
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4197
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3525
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 3526
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 3527
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3529
    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5028
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 5029
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    .line 5031
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 5032
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5001
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 5002
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 5003
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(Ljava/lang/CharSequence;)V

    .line 5006
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 5007
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 5010
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 5011
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5015
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 5016
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 5018
    :cond_3
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3858
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3859
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3860
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3873
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3874
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3875
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .param p1, "whether"    # Z

    .prologue
    .line 4025
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    .line 4026
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 4028
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 4029
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4030
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4031
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4034
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    .prologue
    .line 5334
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5335
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5336
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 5337
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    .line 5338
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 5307
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5308
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5309
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    .line 5310
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "includepad"    # Z

    .prologue
    .line 7729
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    .line 7730
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 7732
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7733
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7734
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7735
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7738
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5502
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5503
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 5504
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5505
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5506
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 5507
    return-void
.end method

.method public setInputType(I)V
    .locals 11
    .param p1, "type"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5091
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 5092
    .local v5, "wasPassword":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 5093
    .local v6, "wasVisiblePassword":Z
    invoke-direct {p0, p1, v8}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 5094
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 5095
    .local v2, "isPassword":Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 5096
    .local v3, "isVisiblePassword":Z
    const/4 v0, 0x0

    .line 5097
    .local v0, "forceUpdate":Z
    if-eqz v2, :cond_7

    .line 5098
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 5115
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_a

    move v4, v7

    .line 5119
    .local v4, "singleLine":Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_3

    .line 5122
    :cond_1
    if-nez v2, :cond_2

    move v8, v7

    :cond_2
    invoke-direct {p0, v4, v8, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 5125
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 5126
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 5130
    :cond_4
    const-string v7, "eng"

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5131
    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    .line 5135
    :cond_5
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 5136
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_6

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 5137
    :cond_6
    return-void

    .line 5101
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "singleLine":Z
    :cond_7
    if-eqz v3, :cond_8

    .line 5102
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    .line 5103
    const/4 v0, 0x1

    goto :goto_0

    .line 5107
    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_0

    .line 5109
    :cond_9
    const/4 v9, 0x0

    invoke-direct {p0, v9, v10, v10}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 5110
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    .line 5111
    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    move v4, v8

    .line 5115
    goto :goto_1
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 2315
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 2316
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 2318
    if-eqz p1, :cond_2

    .line 2319
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2321
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v3

    iput v3, v2, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2327
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 2332
    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2333
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2334
    :cond_1
    return-void

    .line 2322
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 2323
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    .line 2329
    .end local v0    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_1
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 4355
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 4356
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 4357
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 4359
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 4360
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4361
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4362
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4365
    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4173
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4174
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4176
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4177
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4178
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3910
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 3911
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3912
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3925
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 3926
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3927
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3816
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 3817
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1, "marqueeLimit"    # I

    .prologue
    .line 8675
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 8676
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4260
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4261
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 4263
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4264
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4265
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4144
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4145
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4147
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4148
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4149
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4115
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 4116
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 4118
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4119
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4120
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "maxpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4287
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4288
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 4290
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4291
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4292
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4206
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 4207
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 4209
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4210
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4211
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4087
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 4088
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 4090
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4091
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4092
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4059
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 4060
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 4062
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4063
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4064
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "minpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4233
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 4234
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 4236
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4237
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4238
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    .prologue
    .line 2370
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    .line 2371
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 2373
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 2374
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2377
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 2381
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 2383
    :cond_1
    return-void
.end method

.method public setNewActionPopupMenu(IZ)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 11991
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 11992
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setNewActionPopupMenu(IZ)V

    .line 11994
    :cond_0
    return-void
.end method

.method public setOnDragResult(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 10749
    iput-boolean p1, p0, Landroid/widget/TextView;->mOnDragResult:Z

    .line 10750
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 5371
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5372
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5373
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 5374
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3084
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 3088
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3092
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 3093
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3094
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3098
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 3102
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3106
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 3107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3108
    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4007
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4008
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 4010
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 4011
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 4012
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4013
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4016
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 5474
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5475
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5476
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 5477
    return-void
.end method

.method public setRawInputType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 5191
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    .line 5199
    :cond_0
    :goto_0
    return-void

    .line 5192
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5193
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    .line 5195
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5196
    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    goto :goto_0
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/Scroller;

    .prologue
    .line 9373
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 9374
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .param p1, "selectAllOnFocus"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 8710
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 8711
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 8713
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 8714
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 8716
    :cond_0
    return-void
.end method

.method public setSelected(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 9237
    if-ne v0, p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9238
    return-void

    .line 9237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 9243
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 9245
    .local v0, "wasSelected":Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 9247
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 9248
    if-eqz p1, :cond_1

    .line 9249
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 9254
    :cond_0
    :goto_0
    return-void

    .line 9251
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 3573
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3575
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 3576
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 3577
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 3580
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 3581
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3582
    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3549
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 3550
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 3551
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 8536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 8537
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 8573
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 8574
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 8575
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 10850
    if-lt p3, p2, :cond_0

    .line 10851
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 10853
    :cond_0
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    .prologue
    .line 4688
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 4689
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4690
    return-void
.end method

.method public setStrikeThroughAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 11958
    iget-boolean v0, p0, Landroid/widget/TextView;->ADVANCED_VI_EFFECTS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 11959
    iput-boolean p1, p0, Landroid/widget/TextView;->mTextStrikeThroughEnabled:Z

    .line 11961
    :cond_0
    return-void
.end method

.method public final setStringName(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 4986
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 4987
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    .line 4989
    :cond_0
    return-void
.end method

.method public final setStringName(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4973
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    .line 4974
    iget-boolean v1, p0, Landroid/widget/TextView;->fromResLock:Z

    if-nez v1, :cond_0

    .line 4975
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4976
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    .line 4979
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4955
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 4956
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    .line 4958
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4959
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 4962
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 4963
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    .line 4965
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4966
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4705
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4706
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 4730
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 4732
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    .line 4733
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 4735
    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 4904
    const/4 v0, 0x0

    .line 4906
    .local v0, "oldlen":I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 4907
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4915
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 4916
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4917
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 4922
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    .line 4923
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 4928
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 4929
    return-void

    .line 4919
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 4925
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 40
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 3126
    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 3134
    .local v17, "appearance":Landroid/content/res/TypedArray;
    const/4 v5, 0x4

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    .line 3136
    .local v18, "color":I
    if-eqz v18, :cond_0

    .line 3137
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 3140
    :cond_0
    const/4 v5, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    .line 3142
    .local v19, "colors":Landroid/content/res/ColorStateList;
    if-eqz v19, :cond_1

    .line 3143
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3146
    :cond_1
    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v38

    .line 3148
    .local v38, "ts":I
    if-eqz v38, :cond_2

    .line 3149
    move/from16 v0, v38

    int-to-float v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 3152
    :cond_2
    const/4 v5, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    .line 3154
    if-eqz v19, :cond_3

    .line 3155
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 3158
    :cond_3
    const/4 v5, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    .line 3160
    if-eqz v19, :cond_4

    .line 3161
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 3167
    :cond_4
    const/16 v5, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 3169
    .local v22, "familyName":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v39

    .line 3171
    .local v39, "typefaceIndex":I
    const/4 v5, 0x2

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v37

    .line 3188
    .local v37, "styleIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v39

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 3193
    const/16 v24, -0x1

    .line 3194
    .local v24, "hintStyleIndex":I
    const/16 v26, -0x1

    .line 3195
    .local v26, "pressStyleIndex":I
    const/16 v29, -0x1

    .line 3197
    .local v29, "selectStyleIndex":I
    const/16 v5, 0xd

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 3199
    .local v23, "hintFontFamily":Ljava/lang/String;
    const/16 v5, 0x10

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 3201
    const/16 v5, 0xe

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 3203
    .local v25, "pressFontFamily":Ljava/lang/String;
    const/16 v5, 0x11

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    .line 3205
    const/16 v5, 0xf

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 3207
    .local v28, "selectFontFamily":Ljava/lang/String;
    const/16 v5, 0x12

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    .line 3211
    sget-boolean v5, Landroid/widget/TextView;->B_USE_HINT_LIGHT_FONT:Z

    if-eqz v5, :cond_5

    .line 3212
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    move/from16 v0, v39

    if-ne v0, v5, :cond_5

    if-nez v23, :cond_5

    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-nez v5, :cond_5

    .line 3214
    const-string/jumbo v23, "sec-roboto-light"

    .line 3217
    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    .line 3218
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    .line 3219
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v5}, Landroid/widget/TextView;->setTypefaceForState(Ljava/lang/String;II)V

    .line 3222
    const/4 v5, 0x7

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 3224
    .local v36, "shadowcolor":I
    if-eqz v36, :cond_6

    .line 3225
    const/16 v5, 0x8

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .line 3227
    .local v20, "dx":F
    const/16 v5, 0x9

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    .line 3229
    .local v21, "dy":F
    const/16 v5, 0xa

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 3232
    .local v27, "r":F
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 3236
    .end local v20    # "dx":F
    .end local v21    # "dy":F
    .end local v27    # "r":F
    :cond_6
    const/16 v5, 0x16

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 3238
    .local v9, "sfeOuterShadowColor":I
    if-eqz v9, :cond_7

    .line 3239
    const/16 v5, 0x13

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 3241
    .local v6, "sfeOuterShadowAngle":F
    const/16 v5, 0x14

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 3243
    .local v7, "sfeOuterShadowOffset":F
    const/16 v5, 0x15

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 3245
    .local v8, "sfeOuterShadowSoftness":F
    const/16 v5, 0x17

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .local v10, "sfeOuterShadowOpacity":F
    move-object/from16 v5, p0

    .line 3248
    invoke-virtual/range {v5 .. v10}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 3251
    .end local v6    # "sfeOuterShadowAngle":F
    .end local v7    # "sfeOuterShadowOffset":F
    .end local v8    # "sfeOuterShadowSoftness":F
    .end local v10    # "sfeOuterShadowOpacity":F
    :cond_7
    const/16 v5, 0x1b

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 3253
    .local v15, "sfeInnerShadowColor":I
    if-eqz v15, :cond_8

    .line 3254
    const/16 v5, 0x18

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 3256
    .local v12, "sfeInnerShadowAngle":F
    const/16 v5, 0x19

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 3258
    .local v13, "sfeInnerShadowOffset":F
    const/16 v5, 0x1a

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 3260
    .local v14, "sfeInnerShadowSoftness":F
    const/16 v5, 0x1c

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .local v16, "sfeInnerShadowOpacity":F
    move-object/from16 v11, p0

    .line 3263
    invoke-virtual/range {v11 .. v16}, Landroid/widget/TextView;->addInnerShadowTextEffect(FFFIF)I

    .line 3266
    .end local v12    # "sfeInnerShadowAngle":F
    .end local v13    # "sfeInnerShadowOffset":F
    .end local v14    # "sfeInnerShadowSoftness":F
    .end local v16    # "sfeInnerShadowOpacity":F
    :cond_8
    const/16 v5, 0x1e

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v33

    .line 3268
    .local v33, "sfeStokeColor":I
    if-eqz v33, :cond_9

    .line 3269
    const/16 v5, 0x1d

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v35

    .line 3271
    .local v35, "sfeStokeSize":F
    const/16 v5, 0x1f

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v34

    .line 3274
    .local v34, "sfeStokeOpacity":F
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 3277
    .end local v34    # "sfeStokeOpacity":F
    .end local v35    # "sfeStokeSize":F
    :cond_9
    const/16 v5, 0x23

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 3279
    .local v30, "sfeOuterGlowColor":I
    if-eqz v30, :cond_a

    .line 3280
    const/16 v5, 0x22

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    .line 3282
    .local v32, "sfeOuterGlowSize":F
    const/16 v5, 0x24

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    .line 3285
    .local v31, "sfeOuterGlowOpacity":F
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->addOuterGlowTextEffect(FIF)I

    .line 3289
    .end local v31    # "sfeOuterGlowOpacity":F
    .end local v32    # "sfeOuterGlowSize":F
    :cond_a
    const/16 v5, 0xb

    const/4 v11, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3291
    new-instance v5, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3294
    :cond_b
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 3295
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3474
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 3475
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3476
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3489
    if-nez p1, :cond_0

    .line 3490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3493
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 3494
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3495
    return-void
.end method

.method public setTextEffectOpacity(F)V
    .locals 1
    .param p1, "blendingOpacity"    # F

    .prologue
    .line 3719
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextEffectOpacity(F)V

    .line 3720
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .param p1, "selectable"    # Z

    .prologue
    .line 6142
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    .line 6167
    :cond_0
    :goto_0
    return-void

    .line 6144
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6145
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eq v0, p1, :cond_0

    .line 6148
    invoke-virtual {p0}, Landroid/view/View;->isTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6149
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/widget/TextView;->mAttachedWindow:Z

    if-eqz v0, :cond_2

    .line 6150
    invoke-direct {p0}, Landroid/widget/TextView;->registerForStylusPenEvent()V

    .line 6154
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    .line 6155
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6156
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 6157
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 6158
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 6162
    if-eqz p1, :cond_3

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 6163
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6166
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0

    .line 6162
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 6163
    :cond_4
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_2
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4718
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4719
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v6, 0x0

    .line 4938
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 4939
    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4940
    .local v0, "end":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4942
    .local v1, "len":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4944
    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    .line 4945
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 4946
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4951
    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 3315
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 3316
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3389
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 3391
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 3393
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3394
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3395
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3396
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3399
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3337
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3338
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 3350
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3353
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 3354
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3358
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 3360
    return-void

    .line 3356
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    .prologue
    const/4 v2, 0x0

    .line 2417
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_1

    .line 2444
    :cond_0
    :goto_0
    return-void

    .line 2422
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_2

    .line 2423
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 2424
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2428
    :cond_2
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 2430
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_4

    move-object v0, p1

    .line 2431
    check-cast v0, Landroid/text/method/TransformationMethod2;

    .line 2432
    .local v0, "method2":Landroid/text/method/TransformationMethod2;
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 2433
    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 2438
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :goto_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2440
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2441
    invoke-virtual {p0, v2}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    .restart local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_3
    move v1, v2

    .line 2432
    goto :goto_1

    .line 2435
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_4
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 3415
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 3416
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3418
    iget-boolean v0, p0, Landroid/widget/TextView;->mSkipSaveTypeface:Z

    if-nez v0, :cond_0

    .line 3419
    iput-object p1, p0, Landroid/widget/TextView;->mCurTextTypeface:Landroid/graphics/Typeface;

    .line 3423
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 3424
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3425
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3426
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3429
    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2100
    if-lez p2, :cond_4

    .line 2101
    if-nez p1, :cond_1

    .line 2102
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 2106
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2108
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 2109
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 2110
    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2111
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 2117
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 2104
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2108
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 2111
    goto :goto_2

    .line 2113
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2114
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 2115
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTypefaceForState(Ljava/lang/String;II)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "state"    # I

    .prologue
    .line 2123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2124
    iget-boolean v0, p0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sans-serif-light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2125
    const-string/jumbo p1, "sec-roboto-light"

    .line 2126
    const/4 p2, 0x0

    .line 2132
    :cond_0
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 2149
    :cond_1
    :goto_1
    return-void

    .line 2127
    :cond_2
    iget-boolean v0, p0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sans-serif-medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2128
    const-string/jumbo p1, "sec-roboto-light"

    .line 2129
    const/4 p2, 0x1

    goto :goto_0

    .line 2134
    :pswitch_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    .line 2138
    :pswitch_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mPressTextTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    .line 2142
    :pswitch_2
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mSelectTextTypeface:Landroid/graphics/Typeface;

    goto :goto_1

    .line 2132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "undoManager"    # Landroid/content/UndoManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2259
    if-eqz p1, :cond_2

    .line 2260
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 2261
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 2262
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1, p2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 2263
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    new-instance v1, Landroid/widget/Editor$UndoInputFilter;

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-direct {v1, v2}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v1, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    .line 2264
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 2265
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2268
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 2275
    :cond_1
    :goto_0
    return-void

    .line 2269
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 2271
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 2272
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    .line 2273
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    goto :goto_0
.end method

.method public setWBPositionListenerEnalbed(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 12153
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 12154
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setWBPositionListenerEnalbed(Z)V

    .line 12156
    :cond_0
    return-void
.end method

.method public setWBTextBuffer(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 12109
    iput-object p1, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    .line 12110
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4340
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 4341
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 4343
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4344
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4345
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 8
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    const/4 v7, 0x1

    .line 9038
    const/4 v4, 0x0

    .line 9039
    .local v4, "selChanged":Z
    const/4 v3, -0x1

    .local v3, "newSelStart":I
    const/4 v2, -0x1

    .line 9041
    .local v2, "newSelEnd":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v5, :cond_14

    const/4 v1, 0x0

    .line 9043
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_0
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_1

    .line 9044
    const/4 v4, 0x1

    .line 9045
    move v2, p4

    .line 9047
    if-gez p3, :cond_0

    if-ltz p4, :cond_1

    .line 9048
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 9049
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 9050
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 9051
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->makeBlink()V

    .line 9055
    :cond_1
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_3

    .line 9056
    const/4 v4, 0x1

    .line 9057
    move v3, p4

    .line 9059
    if-gez p3, :cond_2

    if-ltz p4, :cond_3

    .line 9060
    :cond_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 9061
    .local v0, "end":I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 9065
    .end local v0    # "end":I
    :cond_3
    if-eqz v4, :cond_7

    .line 9066
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9067
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v7, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 9069
    :cond_4
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_7

    .line 9070
    if-gez v3, :cond_5

    .line 9071
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 9073
    :cond_5
    if-gez v2, :cond_6

    .line 9074
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 9076
    :cond_6
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 9080
    :cond_7
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_8

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-nez v5, :cond_8

    instance-of v5, p2, Landroid/text/style/CharacterStyle;

    if-eqz v5, :cond_b

    .line 9082
    :cond_8
    if-eqz v1, :cond_9

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_15

    .line 9083
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9084
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9085
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 9089
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_b

    .line 9090
    if-ltz p3, :cond_a

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 9091
    :cond_a
    if-ltz p4, :cond_b

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 9095
    :cond_b
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 9096
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9097
    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 9098
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 9101
    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 9102
    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_16

    .line 9103
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 9110
    :cond_e
    :goto_2
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    .line 9113
    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    .line 9114
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_17

    .line 9115
    if-ltz p3, :cond_10

    .line 9116
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    .line 9117
    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9119
    :cond_f
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    .line 9120
    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9123
    :cond_10
    if-ltz p4, :cond_12

    .line 9124
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    .line 9125
    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9127
    :cond_11
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    .line 9128
    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 9140
    :cond_12
    :goto_3
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_13

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_13

    if-gez p4, :cond_13

    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v5, :cond_13

    .line 9142
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2    # "what":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    .line 9144
    :cond_13
    return-void

    .line 9041
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local p2    # "what":Ljava/lang/Object;
    :cond_14
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v5, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto/16 :goto_0

    .line 9087
    .restart local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_15
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto/16 :goto_1

    .line 9105
    :cond_16
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_2

    .line 9135
    :cond_17
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_3
.end method

.method public stopCursorBlink(Z)V
    .locals 1
    .param p1, "stop"    # Z

    .prologue
    .line 12144
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 12145
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->stopCursorBlink(Z)V

    .line 12147
    :cond_0
    return-void
.end method

.method protected stopSelectionActionMode()V
    .locals 1

    .prologue
    .line 10263
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 10264
    return-void
.end method

.method textCanBeSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9607
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9608
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    .line 8968
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8969
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8971
    .local v0, "curs":I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 8972
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8975
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 8977
    if-ltz v0, :cond_3

    .line 8978
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8979
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 8980
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 8982
    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 6011
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 6012
    .local v0, "verified":Z
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    .line 6013
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 6017
    :goto_0
    return v1

    .line 6013
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 6017
    goto :goto_0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 10824
    if-eqz p1, :cond_0

    .line 10825
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 10827
    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    .line 8467
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    .line 8471
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v1, v2

    .line 8472
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 8473
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 8475
    :cond_0
    return v0
.end method

.method tos_TextView_init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->NEW_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "QROM: framework xposed rebuild ::yongchen::2015-09-10"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 1346
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1347
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v3, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1348
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 1349
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 1350
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1351
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 1352
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1353
    const-string v1, "android.widget.TextView#TextView"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1354
    return-void
.end method
