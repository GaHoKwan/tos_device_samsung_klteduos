.class public Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.super Landroid/widget/FrameLayout;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field private static final DEBUG:Z = false

.field private static final ESTIMATE_INVALID_VALUE:I = -0x1

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE_FOR_ANIMATION:Ljava/lang/String; = "%s/%s/tmp%s"

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field private static final TAG:Ljava/lang/String; = "SPenGesture"

.field private static final TEMP_CROP_IMAGE_FILE_PATH:Ljava/lang/String; = "/data/easyclip/crop_image.png"

.field private static final TEMP_CROP_IMAGE_FILE_PATH_FOR_ANIM:Ljava/lang/String; = "/data/easyclip/crop_image_anim.png"

.field private static final TEMP_CROP_IMAGE_PATH:Ljava/lang/String; = "/data/easyclip"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_SHOW_DRM_MESSAGE:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private final mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private final mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDirectionHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeightForMatrix:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mDisplayWidthForMatrix:I

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mEnableCheckClosedCurve:Z

.field private mEndPointX:F

.field private mEndPointY:F

.field private mExistOldCoords:Z

.field private mFinishSaveImg:Z

.field private mFirstIntersectionPointLast:I

.field private mFirstIntersectionPointPrev:I

.field private mFirstIntersectionPointX:I

.field private mFirstIntersectionPointY:I

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureEffectImgView:Landroid/widget/ImageView;

.field mGesturePad:Ljava/lang/Runnable;

.field private mGesturePadBlockTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mImageFilePath:Ljava/lang/String;

.field private mImageFilePathForAnimation:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsClosedCurve:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsShowingGestureEffect:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLoadingAniImgView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMaxCoordX:I

.field private mMaxCoordXForIntent:I

.field private mMaxCoordY:I

.field private mMaxCoordYForIntent:I

.field private mMaxNumPointers:I

.field mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

.field private mMedianValueForGesturePosX:I

.field private mMedianValueForGesturePosY:I

.field private mMinCoordX:I

.field private mMinCoordXForIntent:I

.field private mMinCoordY:I

.field private mMinCoordYForIntent:I

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private final mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field mToastHandler:Landroid/os/Handler;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mToastHandler:Landroid/os/Handler;

    .line 155
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    .line 156
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBootCompleted:Z

    .line 166
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 168
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 170
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    .line 173
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 178
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    .line 179
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 181
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    .line 182
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 185
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenCaptureOn:Z

    .line 188
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 196
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    .line 197
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    .line 200
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    .line 202
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 203
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 204
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "com.sec.android.gesturepad"

    aput-object v15, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 209
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_STROKE_WIDTH:I

    .line 210
    const/16 v12, 0x320

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 211
    const/16 v12, 0x500

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 212
    const/16 v12, 0x12c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    .line 213
    const/16 v12, 0x12c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    .line 216
    const/16 v12, 0x8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 217
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 218
    const/16 v12, 0x14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 220
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 225
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_START_LOADING_ANIMATION:S

    .line 226
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_FINISH_LOADING_ANIMATION:S

    .line 227
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_SHOW_DRM_MESSAGE:S

    .line 230
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_NONE:I

    .line 231
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 232
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 235
    const/16 v12, 0x32

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MIN_DISTANCE:I

    .line 236
    const/16 v12, 0x320

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE:I

    .line 237
    const/16 v12, 0x4b0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    .line 282
    new-instance v12, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v12}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 283
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    .line 284
    new-instance v12, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v12}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 388
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    .line 390
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosX:I

    .line 391
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosY:I

    .line 417
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 418
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 419
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 420
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 421
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 422
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 423
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    .line 424
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 429
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 430
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 431
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 433
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 434
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_SUGGESTION_SERVICE_START:S

    .line 435
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_CROPPING_IMG_SAVE:S

    .line 440
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 442
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 455
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 476
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 477
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    .line 797
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 865
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 899
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    .line 511
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    .line 512
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mToastHandler:Landroid/os/Handler;

    .line 523
    new-instance v12, Landroid/app/Instrumentation;

    invoke-direct {v12}, Landroid/app/Instrumentation;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 526
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 527
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v12, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 531
    const-string v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 532
    const-string v12, "phone2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    .line 533
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 535
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 536
    .local v10, "size":Landroid/graphics/Point;
    const-string v12, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v12, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 539
    const-string v12, "window"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v11

    .line 541
    .local v11, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v11}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_1
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    .line 548
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v13, "com.sec.spen.flashannotatesvc"

    const-string v14, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 551
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v13, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.diotek.mini_penmemo"

    const-string v15, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 554
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    .line 555
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v13, "com.sec.android.gesturepad"

    const-string v14, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v13, 0x14000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 558
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 559
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .local v2, "captureFilter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v2, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v12, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v2, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    .end local v2    # "captureFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 568
    .local v7, "mediaFilter":Landroid/content/IntentFilter;
    if-eqz v7, :cond_1

    .line 569
    const-string v12, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v12, "file"

    invoke-virtual {v7, v12}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 576
    :cond_1
    new-instance v12, Landroid/view/GestureDetector;

    new-instance v13, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 655
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    .line 656
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    .line 675
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDirectionHandler:Landroid/os/Handler;

    .line 676
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 677
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVC:Landroid/view/ViewConfiguration;

    .line 679
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    .line 683
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 684
    .local v8, "point":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 685
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 687
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v12, :cond_3

    .line 688
    iget v12, v8, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 689
    iget v12, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 690
    const-string v12, "SPenGesture"

    const-string v13, "Initialized to portrait"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    .line 698
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    .line 700
    new-instance v13, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_3
    invoke-direct {v13, v14, v15, v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;-><init>(IIZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    .line 702
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 703
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 704
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 705
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    .line 706
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 707
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 708
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 709
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 710
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 711
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 712
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 713
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 714
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 715
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 716
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 717
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 718
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 719
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 720
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 721
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 722
    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 723
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    .line 724
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    .line 725
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    .line 726
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    .line 727
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    .line 728
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    .line 729
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    .line 730
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    .line 731
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 732
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 733
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 734
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 735
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 736
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 737
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 738
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 739
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 740
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 741
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 742
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 743
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 745
    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    const/4 v13, 0x0

    invoke-direct {v3, v12, v13}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 746
    .local v3, "dashPath":Landroid/graphics/DashPathEffect;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    .line 747
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 748
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0xff

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 749
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 751
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 752
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x1000000

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 761
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    .line 762
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 763
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0xff

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 764
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x40400000    # 3.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, -0x1000000

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 775
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    .line 776
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 777
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 779
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct {v9}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    .line 780
    .local v9, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    .line 784
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 786
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    .line 788
    return-void

    .line 541
    .end local v3    # "dashPath":Landroid/graphics/DashPathEffect;
    .end local v4    # "display":Landroid/view/Display;
    .end local v7    # "mediaFilter":Landroid/content/IntentFilter;
    .end local v8    # "point":Landroid/graphics/Point;
    .end local v9    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 542
    :catch_0
    move-exception v5

    .line 543
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v12, "SPenGesture"

    const-string v13, "RemoteException"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    goto/16 :goto_1

    .line 692
    .end local v5    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "display":Landroid/view/Display;
    .restart local v7    # "mediaFilter":Landroid/content/IntentFilter;
    .restart local v8    # "point":Landroid/graphics/Point;
    :cond_3
    iget v12, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 693
    iget v12, v8, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 694
    const-string v12, "SPenGesture"

    const-string v13, "Initialized to Landscape"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 700
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 745
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2199
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 2200
    .local v4, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v4, :cond_0

    .line 2201
    invoke-virtual {v4, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2202
    const-string v7, "SPenGesture"

    const-string v8, "MDM: Screen Capture Disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :goto_0
    return-object v6

    .line 2208
    :cond_0
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2209
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2211
    const/4 v9, 0x2

    new-array v2, v9, [F

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    aput v9, v2, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    aput v9, v2, v7

    .line 2212
    .local v2, "dims":[F
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2213
    .local v1, "degrees":F
    cmpl-float v9, v1, v12

    if-lez v9, :cond_4

    move v3, v7

    .line 2215
    .local v3, "requiresRotation":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 2216
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 2217
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v10, v1

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2218
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2219
    aget v9, v2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v2, v8

    .line 2220
    aget v9, v2, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v2, v7

    .line 2223
    :cond_1
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v2, v7

    float-to-int v10, v10

    invoke-static {v9, v10}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2226
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_2

    .line 2227
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v2, v7

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2231
    :cond_2
    if-eqz v3, :cond_3

    .line 2232
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2234
    .local v5, "ss":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2235
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2236
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2237
    aget v8, v2, v8

    neg-float v8, v8

    div-float/2addr v8, v13

    aget v7, v2, v7

    neg-float v7, v7

    div-float/2addr v7, v13

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2238
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2239
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2240
    iput-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2242
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v5    # "ss":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .end local v3    # "requiresRotation":Z
    :cond_4
    move v3, v8

    .line 2213
    goto/16 :goto_1
.end method

.method private SaveImage()Z
    .locals 13

    .prologue
    .line 2085
    const-string v9, "SPenGesture"

    const-string v10, "SaveImage"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2088
    .local v5, "mImageTime":J
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2089
    .local v2, "imageDate":Ljava/lang/String;
    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2090
    .local v3, "imageDir":Ljava/lang/String;
    const-string v9, "Screenshot_%s.png"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2093
    .local v4, "mImageFileName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/easyclip"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2094
    .local v8, "tmpDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2095
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2096
    const-string v9, "SPenGesture"

    const-string v10, "Dir creation failed!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const/4 v9, 0x0

    .line 2140
    :goto_0
    return v9

    .line 2099
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2100
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2101
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2105
    :cond_1
    const-string v9, "%s/%s/%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    .line 2107
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v9, "/data/easyclip/crop_image.png"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2108
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2109
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2110
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2111
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2113
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2114
    .local v7, "outStream":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2115
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2116
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    .end local v1    # "file":Ljava/io/File;
    .end local v7    # "outStream":Ljava/io/FileOutputStream;
    :goto_1
    const-string v9, "%s/%s/tmp%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    .line 2125
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v9, "/data/easyclip/crop_image_anim.png"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2126
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2127
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 2128
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2129
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2131
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2132
    .restart local v7    # "outStream":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2133
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 2134
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2139
    .end local v1    # "file":Ljava/io/File;
    .end local v7    # "outStream":Ljava/io/FileOutputStream;
    :goto_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 2140
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2117
    :catch_0
    move-exception v0

    .line 2118
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "SPenGesture"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SaveImage : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2135
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2136
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "SPenGesture"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SaveImage : anim / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->sendKeyDownUpSync(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$4502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$4602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$4702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return v0
.end method

.method static synthetic access$5202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return p1
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return v0
.end method

.method static synthetic access$5302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return p1
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$7002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$7100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->SaveImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    return p1
.end method

.method private checkClosedCurve(III)V
    .locals 7
    .param p1, "resultCoordsX"    # I
    .param p2, "resultCoordsY"    # I
    .param p3, "markNumber"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1258
    const/4 v2, -0x1

    .line 1261
    .local v2, "markNumberFromMatrix":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 1262
    add-int v3, p2, v1

    if-ltz v3, :cond_0

    if-ltz p1, :cond_0

    add-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_0

    .line 1265
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    add-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1271
    :cond_0
    if-eq v2, v5, :cond_8

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_8

    .line 1273
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1274
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1278
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_7

    .line 1279
    :cond_1
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1280
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1281
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1282
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1288
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1326
    :cond_2
    :goto_2
    const/16 v0, 0xc

    .line 1327
    .local v0, "circleRadius":I
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x18

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p2, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x18

    if-ge v3, p2, :cond_4

    .line 1329
    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1332
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    if-ne v3, v6, :cond_6

    .line 1333
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p2, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p2, :cond_6

    .line 1335
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1337
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_d

    .line 1338
    :cond_5
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1339
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1345
    :goto_3
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1350
    :cond_6
    return-void

    .line 1285
    .end local v0    # "circleRadius":I
    :cond_7
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1286
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_1

    .line 1295
    :cond_8
    sub-int v3, p2, v1

    if-ltz v3, :cond_9

    if-ltz p1, :cond_9

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_9

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_9

    .line 1298
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    sub-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1301
    :cond_9
    if-eq v2, v5, :cond_c

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_c

    .line 1303
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1304
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1308
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_b

    .line 1309
    :cond_a
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1310
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1311
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1312
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1318
    :goto_4
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    goto/16 :goto_2

    .line 1315
    :cond_b
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1316
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_4

    .line 1261
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1342
    .restart local v0    # "circleRadius":I
    :cond_d
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1343
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_3
.end method

.method private checkDirectionGesture()Z
    .locals 31

    .prologue
    .line 2262
    const-string v25, "SPenGesture"

    const-string v26, "checkDirectionGesture"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    const/4 v5, 0x0

    .line 2264
    .local v5, "distance":I
    const/16 v21, 0x0

    .line 2265
    .local v21, "vertexX":I
    const/16 v22, 0x0

    .line 2266
    .local v22, "vertexY":I
    const/4 v6, 0x0

    .line 2267
    .local v6, "distanceMax":I
    const/4 v7, 0x0

    .line 2268
    .local v7, "distanceStartAndEnd":I
    const/4 v12, 0x0

    .line 2269
    .local v12, "minX":I
    const/4 v13, 0x0

    .line 2270
    .local v13, "minY":I
    const/4 v10, 0x0

    .line 2271
    .local v10, "maxX":I
    const/4 v11, 0x0

    .line 2272
    .local v11, "maxY":I
    const/16 v16, 0x0

    .line 2273
    .local v16, "result1":F
    const/16 v17, 0x0

    .line 2274
    .local v17, "result2":F
    const/16 v18, 0x0

    .line 2275
    .local v18, "slope":F
    const/4 v9, 0x0

    .line 2278
    .local v9, "interceptY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v3, v0

    .line 2279
    .local v3, "Xdistance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v4, v0

    .line 2283
    .local v4, "Ydistance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v7, v0

    .line 2285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-nez v25, :cond_2

    .line 2286
    :cond_0
    const/16 v18, 0x0

    .line 2291
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    mul-float v26, v26, v18

    sub-float v9, v25, v26

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2296
    .local v19, "totalPointerCount":I
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2298
    .local v15, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v20

    .line 2299
    .local v20, "traceCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 2300
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v23, v25, v8

    .line 2301
    .local v23, "x":F
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v24, v25, v8

    .line 2304
    .local v24, "y":F
    mul-float v25, v18, v23

    const/high16 v26, -0x40800000    # -1.0f

    mul-float v26, v26, v24

    add-float v25, v25, v26

    add-float v25, v25, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2305
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, -0x4010000000000000L    # -1.0

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    add-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v17, v0

    .line 2307
    div-float v25, v16, v17

    move/from16 v0, v25

    float-to-int v5, v0

    .line 2309
    if-ge v6, v5, :cond_1

    .line 2310
    move v6, v5

    .line 2311
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2312
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2299
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2289
    .end local v8    # "i":I
    .end local v14    # "p":I
    .end local v15    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v19    # "totalPointerCount":I
    .end local v20    # "traceCount":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    div-float v18, v25, v26

    goto/16 :goto_0

    .line 2296
    .restart local v8    # "i":I
    .restart local v14    # "p":I
    .restart local v15    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .restart local v19    # "totalPointerCount":I
    .restart local v20    # "traceCount":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 2319
    .end local v8    # "i":I
    .end local v15    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v20    # "traceCount":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_6

    .line 2320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    .line 2327
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_7

    .line 2328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    .line 2336
    :goto_4
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v6, v0, :cond_5

    const/16 v25, 0x320

    move/from16 v0, v25

    if-ge v6, v0, :cond_5

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v7, v0, :cond_5

    const/16 v25, 0x4b0

    move/from16 v0, v25

    if-ge v7, v0, :cond_5

    .line 2338
    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, v18, v25

    if-gtz v25, :cond_c

    const/high16 v25, -0x40800000    # -1.0f

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_c

    .line 2339
    move/from16 v0, v21

    if-gt v10, v0, :cond_8

    .line 2403
    :cond_5
    const/16 v25, 0x0

    :goto_5
    return v25

    .line 2324
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    goto :goto_3

    .line 2332
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    goto :goto_4

    .line 2343
    :cond_8
    move/from16 v0, v21

    if-le v12, v0, :cond_a

    .line 2346
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_9

    .line 2347
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2348
    :cond_9
    const/16 v25, 0x1

    goto :goto_5

    .line 2351
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2354
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_b

    .line 2355
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2356
    :cond_b
    const/16 v25, 0x1

    goto :goto_5

    .line 2365
    :cond_c
    move/from16 v0, v22

    if-le v11, v0, :cond_5

    .line 2369
    move/from16 v0, v22

    if-le v13, v0, :cond_e

    .line 2372
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_d

    .line 2373
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2374
    :cond_d
    const/16 v25, 0x1

    goto/16 :goto_5

    .line 2377
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2380
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_f

    .line 2381
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2382
    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_5
.end method

.method private checkDownGesture()V
    .locals 19

    .prologue
    .line 2411
    const/4 v6, 0x0

    .line 2412
    .local v6, "distanceY":I
    const/4 v5, 0x0

    .line 2413
    .local v5, "distanceX":I
    const/4 v15, 0x0

    .line 2414
    .local v15, "vertexX":I
    const/16 v16, 0x0

    .line 2415
    .local v16, "vertexY":I
    const/4 v3, 0x0

    .line 2416
    .local v3, "distanceMax":I
    const/4 v4, 0x0

    .line 2417
    .local v4, "distanceStartAndEnd":I
    const/4 v10, 0x0

    .line 2418
    .local v10, "minX":I
    const/4 v11, 0x0

    .line 2419
    .local v11, "minY":I
    const/4 v8, 0x0

    .line 2420
    .local v8, "maxX":I
    const/4 v9, 0x0

    .line 2421
    .local v9, "maxY":I
    const/4 v12, 0x0

    .line 2422
    .local v12, "result1":F
    const/4 v13, 0x0

    .line 2423
    .local v13, "result2":F
    const/4 v14, 0x0

    .line 2424
    .local v14, "slope":F
    const/4 v7, 0x0

    .line 2432
    .local v7, "interceptY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44200000    # 640.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a00000    # 1280.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44200000    # 640.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a00000    # 1280.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2436
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 2439
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-le v6, v0, :cond_0

    .line 2440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43960000    # 300.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43960000    # 300.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    .line 2443
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2454
    :cond_0
    :goto_0
    return-void

    .line 2445
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa0000    # 500.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x44480000    # 800.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa0000    # 500.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x44480000    # 800.0f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2450
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2248
    packed-switch p1, :pswitch_data_0

    .line 2256
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2250
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 2252
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 2254
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 2248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 951
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 952
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 953
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 955
    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1010
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1028
    return-void
.end method

.method private isAvailableCapacity()Z
    .locals 15

    .prologue
    .line 2146
    const-string v13, "SPenGesture"

    const-string v14, "isAvailableCapacity"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 2149
    .local v7, "extStoragePath":Ljava/io/File;
    if-eqz v7, :cond_1

    .line 2152
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2159
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 2160
    .local v4, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v9, v13

    .line 2161
    .local v9, "totalBlocks":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v0, v13

    .line 2165
    .local v0, "availableBlocks":J
    mul-long v11, v9, v4

    .line 2166
    .local v11, "totalSpace":J
    mul-long v2, v0, v4

    .line 2174
    .local v2, "availableSpace":J
    const-wide/16 v13, 0x2800

    cmp-long v13, v2, v13

    if-gez v13, :cond_0

    .line 2176
    const v13, 0x10401c3

    invoke-direct {p0, v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->showToast(I)V

    .line 2177
    const/4 v13, 0x0

    .line 2183
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    .end local v9    # "totalBlocks":J
    .end local v11    # "totalSpace":J
    :goto_0
    return v13

    .line 2153
    :catch_0
    move-exception v6

    .line 2156
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    goto :goto_0

    .line 2179
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "availableSpace":J
    .restart local v4    # "blockSize":J
    .restart local v8    # "stat":Landroid/os/StatFs;
    .restart local v9    # "totalBlocks":J
    .restart local v11    # "totalSpace":J
    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    .line 2183
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    .end local v9    # "totalBlocks":J
    .end local v11    # "totalSpace":J
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private isLockScreenShowing()Z
    .locals 3

    .prologue
    .line 2571
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 2573
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2578
    :goto_0
    return v1

    .line 2574
    :catch_0
    move-exception v0

    .line 2575
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2578
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPossibleCapture()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 932
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_0

    .line 933
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 936
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_1

    .line 938
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 945
    :cond_1
    :goto_0
    return v1

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SPenGesture"

    const-string v3, "StatusBarService RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    .prologue
    .line 2560
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    .line 2562
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2567
    :goto_0
    return v1

    .line 2563
    :catch_0
    move-exception v0

    .line 2564
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2567
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 4
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 962
    .local v0, "topComponentName":Landroid/content/ComponentName;
    const-string v1, "SPenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, "findList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 970
    .local v1, "topComponentName":Landroid/content/ComponentName;
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 973
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 974
    const/4 v2, 0x1

    .line 976
    :goto_1
    return v2

    .line 972
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private markMatrixForCropping(FFFFI)V
    .locals 14
    .param p1, "oldCoordsX"    # F
    .param p2, "oldCoordsY"    # F
    .param p3, "newCoordsX"    # F
    .param p4, "newCoordsY"    # F
    .param p5, "markNumber"    # I

    .prologue
    .line 1112
    const/4 v8, 0x0

    .line 1113
    .local v8, "startCoordsX":F
    const/4 v9, 0x0

    .line 1114
    .local v9, "startCoordsY":F
    const/4 v1, 0x0

    .line 1115
    .local v1, "endCoordsX":F
    const/4 v2, 0x0

    .line 1116
    .local v2, "endCoordsY":F
    const/4 v5, 0x0

    .line 1117
    .local v5, "resultCoordsX":F
    const/4 v6, 0x0

    .line 1118
    .local v6, "resultCoordsY":F
    const/4 v7, 0x0

    .line 1119
    .local v7, "slope":F
    const/4 v4, 0x0

    .line 1121
    .local v4, "interceptY":F
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 1122
    :cond_0
    float-to-int v10, p1

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 1123
    move/from16 v0, p2

    float-to-int v10, v0

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 1129
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 1130
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1133
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v11, p3, p1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v12, p4, p2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1135
    cmpl-float v10, p1, p3

    if-nez v10, :cond_2

    cmpl-float v10, p2, p4

    if-eqz v10, :cond_11

    .line 1137
    :cond_2
    move v8, p1

    .line 1138
    move/from16 v9, p2

    .line 1139
    move/from16 v1, p3

    .line 1140
    move/from16 v2, p4

    .line 1142
    sub-float v10, v8, v1

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    .line 1143
    sub-float v10, v2, v9

    sub-float v11, v1, v8

    div-float v7, v10, v11

    .line 1148
    :goto_0
    mul-float v10, v8, v7

    sub-float v4, v9, v10

    .line 1150
    cmpg-float v10, p1, p3

    if-gtz v10, :cond_c

    .line 1151
    :goto_1
    cmpg-float v10, v8, v1

    if-gtz v10, :cond_11

    .line 1152
    move v5, v8

    .line 1153
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1155
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    .line 1170
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 1171
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1174
    :cond_3
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    .line 1175
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    .line 1176
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_4

    .line 1179
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1175
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1146
    .end local v3    # "i":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 1183
    :cond_6
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x40800000    # -1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 1184
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_3
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_8

    .line 1185
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_7

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_7

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_7

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_7

    .line 1188
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1184
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1193
    .end local v3    # "i":I
    :cond_8
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1194
    float-to-int v10, v6

    if-ltz v10, :cond_9

    float-to-int v10, v5

    if-ltz v10, :cond_9

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_9

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_9

    .line 1197
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1151
    :cond_9
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v8, v10

    goto/16 :goto_1

    .line 1244
    :cond_a
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1245
    float-to-int v10, v6

    if-ltz v10, :cond_b

    float-to-int v10, v5

    if-ltz v10, :cond_b

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_b

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_b

    .line 1248
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1202
    :cond_b
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v8, v10

    :cond_c
    cmpl-float v10, v8, v1

    if-ltz v10, :cond_11

    .line 1203
    move v5, v8

    .line 1204
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1206
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    .line 1221
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    .line 1222
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1225
    :cond_d
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_f

    .line 1226
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_4
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_f

    .line 1227
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_e

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_e

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_e

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_e

    .line 1230
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1226
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1234
    .end local v3    # "i":I
    :cond_f
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x40800000    # -1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    .line 1235
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_5
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    .line 1236
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_10

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_10

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_10

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_10

    .line 1239
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1235
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1253
    .end local v3    # "i":I
    :cond_11
    return-void
.end method

.method private sendKeyDownUpSync(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "source"    # I

    .prologue
    .line 1031
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1032
    .local v0, "eventDown":Landroid/view/KeyEvent;
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 1033
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1035
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1036
    .local v1, "eventUp":Landroid/view/KeyEvent;
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent;->setSource(I)V

    .line 1037
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1038
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2531
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_0

    .line 2532
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2538
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 2541
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2542
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2544
    .local v3, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SuggestionService.SuggestionAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2546
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 2554
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    return-void

    .line 2550
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    goto :goto_0
.end method

.method private setDisplayDegrees()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2483
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 2484
    .local v3, "point":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2485
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2487
    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 2488
    iget v4, v3, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 2490
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2491
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-le v4, v7, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    :goto_0
    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    .line 2496
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2498
    .local v1, "degress":F
    const-string v4, "SPenGesture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentDisplayWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentDisplayHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Rot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", deg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const/4 v0, 0x0

    .line 2502
    .local v0, "changed":Z
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_5

    .line 2504
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-ne v4, v5, :cond_4

    .line 2505
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    .line 2506
    const/4 v0, 0x1

    .line 2521
    :goto_2
    if-eqz v0, :cond_1

    .line 2522
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->setPortrait(Z)V

    .line 2525
    :cond_1
    return v0

    .line 2491
    .end local v0    # "changed":Z
    .end local v1    # "degress":F
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    goto :goto_0

    .line 2493
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    goto :goto_1

    .line 2508
    .restart local v0    # "changed":Z
    .restart local v1    # "degress":F
    :cond_4
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_2

    .line 2513
    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_6

    .line 2514
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    .line 2515
    const/4 v0, 0x1

    goto :goto_2

    .line 2517
    :cond_6
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_2

    :cond_7
    move v4, v6

    .line 2522
    goto :goto_3
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2191
    return-void
.end method

.method private startAniForLoadingService()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 1922
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1924
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1925
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080449

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 1926
    .local v11, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1927
    .local v10, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1928
    .local v9, "rectForAnimation":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1929
    .local v7, "bitmapForAnimation":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1930
    .local v8, "canvasForAnimation":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v8, v10, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1932
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1933
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1935
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 1937
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1938
    .local v0, "ani":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1939
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1940
    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1959
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1960
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;->playVibrator()V

    .line 1961
    return-void
.end method

.method private startEffectForGesture(IZ)V
    .locals 8
    .param p1, "key"    # I
    .param p2, "isDownGesture"    # Z

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v5, 0x41100000    # 9.0f

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 2585
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2725
    :cond_0
    :goto_0
    return-void

    .line 2589
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-eqz v0, :cond_2

    .line 2590
    const-string v0, "SPenGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " couldn\'t execute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2594
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2596
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2597
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2598
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2599
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2600
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2602
    if-eqz p2, :cond_3

    .line 2603
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2604
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42040000    # 33.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2606
    packed-switch p1, :pswitch_data_0

    .line 2621
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2622
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$12;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2715
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2717
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2718
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->IsKnoxRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2720
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2608
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2611
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2617
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2618
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 2619
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    .line 2722
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2606
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IsKnoxRunning()Z
    .locals 3

    .prologue
    .line 2741
    const-string v0, "true"

    const-string v1, "dev.knoxapp.running"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isKeyguardOn"    # Z
    .param p3, "isLiveGlanceView"    # Z

    .prologue
    .line 1357
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    .line 1358
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    if-nez v2, :cond_2d

    .line 1359
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1360
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1364
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1365
    .local v8, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1367
    .local v21, "totalPointerSize":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    const/16 v2, 0x9

    if-eq v8, v2, :cond_1a

    const/4 v2, 0x7

    if-eq v8, v2, :cond_1a

    const/16 v2, 0xa

    if-eq v8, v2, :cond_1a

    .line 1370
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 1371
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1372
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1373
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1374
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1375
    monitor-exit v25

    .line 1917
    .end local v8    # "action":I
    .end local v21    # "totalPointerSize":I
    :cond_0
    :goto_0
    return-void

    .line 1378
    .restart local v8    # "action":I
    .restart local v21    # "totalPointerSize":I
    :cond_1
    if-eqz v8, :cond_2

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 1383
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->updateRotation()V

    .line 1384
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setAboutStartingSuggestionService()V

    .line 1386
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_3

    .line 1388
    monitor-exit v25

    goto :goto_0

    .line 1878
    .end local v8    # "action":I
    .end local v21    # "totalPointerSize":I
    :catchall_0
    move-exception v2

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1391
    .restart local v8    # "action":I
    .restart local v21    # "totalPointerSize":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_4

    .line 1392
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1394
    monitor-exit v25

    goto :goto_0

    .line 1397
    :cond_4
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v15, v2, 0x8

    .line 1399
    .local v15, "index":I
    if-nez v8, :cond_6

    .line 1400
    const/16 v18, 0x0

    .local v18, "p":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1402
    .local v19, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    .line 1403
    const/4 v2, 0x0

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1400
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1405
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    .line 1406
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1407
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1411
    .end local v18    # "p":I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1412
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    if-ge v2, v3, :cond_7

    .line 1413
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1416
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1417
    .local v14, "id":I
    :goto_2
    move/from16 v0, v21

    if-gt v0, v14, :cond_8

    .line 1418
    new-instance v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    .line 1419
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    add-int/lit8 v21, v21, 0x1

    .line 1421
    goto :goto_2

    .line 1423
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1425
    :cond_9
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    .line 1428
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1429
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1430
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 1434
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1438
    .end local v14    # "id":I
    .end local v15    # "index":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_c

    .line 1440
    monitor-exit v25

    goto/16 :goto_0

    .line 1443
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_d

    .line 1444
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1446
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1447
    monitor-exit v25

    goto/16 :goto_0

    .line 1450
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 1455
    .local v10, "eventPointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 1457
    .local v12, "histroySize":I
    const/4 v11, 0x0

    .local v11, "historyPos":I
    :goto_3
    if-ge v11, v12, :cond_14

    .line 1458
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v10, :cond_13

    .line 1459
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1460
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    .line 1461
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :goto_5
    if-eqz v19, :cond_12

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1462
    .local v9, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v9}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1464
    if-eqz v19, :cond_10

    .line 1465
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1466
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_f

    .line 1467
    :cond_e
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 1468
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 1469
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1470
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1471
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1472
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1478
    :cond_f
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1479
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1458
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 1460
    .end local v9    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_11
    const/16 v19, 0x0

    goto :goto_5

    .line 1461
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_6

    .line 1457
    .end local v14    # "id":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1483
    .end local v13    # "i":I
    :cond_14
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    if-ge v13, v10, :cond_1a

    .line 1484
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1485
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    .line 1486
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :goto_8
    if-eqz v19, :cond_19

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1487
    .restart local v9    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v9}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1489
    if-eqz v19, :cond_17

    .line 1490
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1491
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    .line 1492
    :cond_15
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 1493
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 1494
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1495
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1496
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1497
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1502
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v6, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    iget v7, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1504
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1505
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1506
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;I)I

    .line 1483
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 1485
    .end local v9    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1486
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_19
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_9

    .line 1511
    .end local v10    # "eventPointerCount":I
    .end local v11    # "historyPos":I
    .end local v12    # "histroySize":I
    .end local v13    # "i":I
    .end local v14    # "id":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_1b

    .line 1514
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1515
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1516
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1520
    :cond_1b
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1c

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_24

    .line 1523
    :cond_1c
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1527
    .local v20, "totalPointerCount":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    if-nez v2, :cond_2a

    .line 1528
    const/16 v18, 0x0

    .restart local v18    # "p":I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1530
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v22

    .line 1531
    .local v22, "traceCount":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_b
    move/from16 v0, v22

    if-ge v13, v0, :cond_1e

    .line 1532
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v23, v2, v13

    .line 1533
    .local v23, "x":F
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v24, v2, v13

    .line 1535
    .local v24, "y":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    if-nez v2, :cond_1d

    .line 1536
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1537
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 1538
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 1531
    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 1541
    :cond_1d
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 1542
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 1543
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->markMatrixForCropping(FFFFI)V

    .line 1544
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 1545
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1546
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    goto :goto_c

    .line 1528
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_1e
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1551
    .end local v13    # "i":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v22    # "traceCount":I
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 1553
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1561
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_21

    .line 1563
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1564
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1565
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1566
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1567
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1568
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1569
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1570
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1571
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1572
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1573
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1575
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1576
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1579
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-nez v2, :cond_22

    .line 1581
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkDirectionGesture()Z

    .line 1590
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1597
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1598
    const-string v2, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1599
    const-string v2, "SPenGesture"

    const-string v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1601
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1602
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1603
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1604
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1605
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1606
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1607
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1608
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1609
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1610
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1611
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1612
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1613
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1620
    .end local v18    # "p":I
    :cond_23
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1623
    .end local v20    # "totalPointerCount":I
    :cond_24
    const/4 v2, 0x3

    if-ne v8, v2, :cond_25

    .line 1624
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1628
    :cond_25
    const/16 v2, 0xa

    if-ne v8, v2, :cond_26

    .line 1629
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1633
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1635
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-eqz v2, :cond_27

    .line 1636
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1639
    const-string v2, "SPenGesture"

    const-string v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1641
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1642
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1643
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1644
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1645
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1646
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1647
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1648
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1649
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1650
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1651
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1652
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1653
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1876
    :goto_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1878
    :cond_27
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1881
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    packed-switch v2, :pswitch_data_0

    .line 1901
    .end local v8    # "action":I
    .end local v21    # "totalPointerSize":I
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_0

    .line 1902
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1903
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_0

    .line 1910
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1555
    .restart local v8    # "action":I
    .restart local v18    # "p":I
    .restart local v20    # "totalPointerCount":I
    .restart local v21    # "totalPointerSize":I
    :cond_29
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 1557
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1558
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    goto/16 :goto_d

    .line 1617
    .end local v18    # "p":I
    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    goto/16 :goto_e

    .line 1657
    .end local v20    # "totalPointerCount":I
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    if-nez v2, :cond_2c

    .line 1658
    const-string v2, "SPenGesture"

    const-string v3, "media scanning is not finished yet!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const v2, 0x1040986

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->showToast(I)V

    goto/16 :goto_f

    .line 1663
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    .line 1665
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    .line 1885
    :pswitch_2
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1886
    .local v16, "intentForVideoPause":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1891
    .end local v16    # "intentForVideoPause":Landroid/content/Intent;
    :pswitch_3
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1892
    .local v17, "intentForVideoPlay":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1897
    .end local v8    # "action":I
    .end local v17    # "intentForVideoPlay":Landroid/content/Intent;
    .end local v21    # "totalPointerSize":I
    :cond_2d
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1898
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1881
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1903
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isShowingGestureEffect()Z
    .locals 1

    .prologue
    .line 2730
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .locals 21
    .param p1, "intersectionPointPrev"    # I
    .param p2, "intersectionPointLast"    # I
    .param p3, "isFirstCurve"    # Z

    .prologue
    .line 1966
    const/4 v4, 0x0

    .line 1967
    .local v4, "existOldCoords":Z
    const/4 v9, 0x0

    .line 1968
    .local v9, "oldCoordsX":F
    const/4 v10, 0x0

    .line 1969
    .local v10, "oldCoordsY":F
    const/4 v6, 0x0

    .line 1970
    .local v6, "newCoordsX":F
    const/4 v7, 0x0

    .line 1971
    .local v7, "newCoordsY":F
    const/4 v8, 0x0

    .line 1976
    .local v8, "numberOfAddTrace":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1978
    .local v13, "totalPointerCount":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_0
    if-ge v11, v13, :cond_5

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1980
    .local v12, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v14

    .line 1981
    .local v14, "traceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v14, :cond_4

    .line 1982
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v15, v17, v5

    .line 1983
    .local v15, "x":F
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v16, v17, v5

    .line 1985
    .local v16, "y":F
    move/from16 v0, p1

    if-gt v0, v8, :cond_0

    add-int/lit8 v17, p2, 0x1

    move/from16 v0, v17

    if-lt v0, v8, :cond_0

    .line 1986
    if-nez v4, :cond_2

    .line 1987
    move v9, v15

    .line 1988
    move/from16 v10, v16

    .line 1989
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1992
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1993
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 2001
    :goto_2
    const/4 v4, 0x1

    .line 2019
    :cond_0
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 1981
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1996
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1998
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1999
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    goto :goto_2

    .line 2004
    :cond_2
    move v6, v15

    .line 2005
    move/from16 v7, v16

    .line 2006
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2015
    :goto_4
    move v9, v15

    .line 2016
    move/from16 v10, v16

    goto :goto_3

    .line 2010
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    .line 1978
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 2023
    .end local v5    # "i":I
    .end local v12    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v14    # "traceCount":I
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 2024
    .local v3, "boundsOfPath":Landroid/graphics/RectF;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2032
    :goto_5
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x42200000    # 40.0f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x42200000    # 40.0f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    .line 2034
    const/16 v17, 0x0

    .line 2037
    :goto_6
    return v17

    .line 2028
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_5

    .line 2037
    :cond_7
    const/16 v17, 0x1

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    .line 983
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080446

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080447

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080445

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080448

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108044b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108044a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 991
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 993
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 995
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 996
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 997
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 998
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 999
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 1096
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 1097
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1104
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    .line 1105
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    const/high16 v2, 0x40800000    # 4.0f

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1107
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1045
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1046
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHeaderBottom:I

    .line 1047
    return-void
.end method

.method public resetVariable(I)V
    .locals 7
    .param p1, "totalPointerSize"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 2045
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 2046
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2047
    .local v1, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    .line 2048
    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 2045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2051
    .end local v1    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    .line 2052
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 2053
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 2054
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 2055
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 2056
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    .line 2057
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 2058
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 2059
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 2060
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 2061
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 2063
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 2064
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 2065
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 2066
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 2067
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 2068
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 2070
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2072
    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 2074
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->reset()V

    .line 2077
    :cond_1
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 2078
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 2079
    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 860
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 861
    return-void
.end method

.method public setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 792
    const-string v0, "SPenGesture"

    const-string v1, "SpenGestureView: setFocusedWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 794
    return-void
.end method

.method public setHapticEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 481
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .locals 1
    .param p1, "isInvisible"    # Z

    .prologue
    .line 2736
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-nez v0, :cond_0

    .line 2737
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2739
    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2460
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    move-result v1

    .line 2462
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2463
    .local v0, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v2

    if-le v2, v4, :cond_1

    .line 2464
    if-ne v1, v4, :cond_0

    .line 2465
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 2477
    :goto_0
    return-void

    .line 2469
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0

    .line 2474
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0
.end method
