.class public Lcom/android/server/smartclip/SmartClipView;
.super Landroid/widget/FrameLayout;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;,
        Lcom/android/server/smartclip/SmartClipView$SPenVibrator;,
        Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;,
        Lcom/android/server/smartclip/SmartClipView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field public static final CROPPING_MODE_EXCLUSIVE:I = 0x1

.field public static final CROPPING_MODE_NORMAL:I = 0x0

.field private static final ESTIMATE_INVALID_VALUE:I = -0x1

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MAX_DATA_EXTRACTION_DELAY:I = 0x7d0

.field private static final MAX_EXTRACTION_REQUEST_ID:I = 0x186a0

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MIN_DATA_EXTRACTION_DELAY:I = 0x64

.field private static final MIN_EXTRACTION_REQUEST_ID:I = 0x0

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x96

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x5

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final DEBUG:Z

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private final SMART_CLIP_NON_CLOSED_CURVE_AREA:I

.field private final SMART_CLIP_POINT_DISTANCE_MIN:I

.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field private mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mCropStartingTime:J

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

.field private mCroppingMode:I

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDataExtractionRequestId:I

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

.field mFocusedWindow:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

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

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field private mIsClosedCurve:Z

.field private mIsDisplayMetaArea:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field mIsEnableGestureEffect:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsExtractingDataFromView:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastDataExtractionRequestTime:J

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

.field private final mMinCroppingTime:J

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private mPathPaintBlack:Landroid/graphics/Paint;

.field private mPathPaintOrange:Landroid/graphics/Paint;

.field private mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/smartclip/SmartClipView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field public mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 640
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    const-string v0, "SmartClipView"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->TAG:Ljava/lang/String;

    .line 130
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->DEBUG:Z

    .line 131
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 140
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    .line 141
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBootCompleted:Z

    .line 153
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z

    .line 155
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsDisplayMetaArea:Z

    .line 158
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    .line 159
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableGestureEffect:Z

    .line 162
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    .line 163
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 166
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    .line 169
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    .line 177
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    .line 178
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    .line 181
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    .line 183
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 184
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.sec.android.gesturepad"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 191
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_STROKE_WIDTH:I

    .line 192
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 193
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 194
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 196
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 197
    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_START_LOADING_ANIMATION:S

    .line 198
    iput-short v6, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_FINISH_LOADING_ANIMATION:S

    .line 201
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_NONE:I

    .line 202
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 203
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 205
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_POINT_DISTANCE_MIN:I

    .line 206
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_NON_CLOSED_CURVE_AREA:I

    .line 265
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 303
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    .line 305
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    .line 306
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    .line 332
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    .line 333
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 334
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 335
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 336
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 337
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 338
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    .line 339
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 344
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 345
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUri:Landroid/net/Uri;

    .line 346
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    .line 350
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    .line 351
    iput-short v3, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_SUGGESTION_SERVICE_START:S

    .line 352
    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_CROPPING_IMG_SAVE:S

    .line 354
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    .line 355
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCroppingTime:J

    .line 360
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 364
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    .line 367
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 374
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    .line 376
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    .line 483
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$1;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$2;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    .line 529
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 558
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    .line 926
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$5;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    .line 1006
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$6;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 1039
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$7;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$7;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePad:Ljava/lang/Runnable;

    .line 641
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    .line 643
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->init()V

    .line 645
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 648
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SpenGestureManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Lcom/samsung/android/smartclip/SpenGestureManager;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 651
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    const-string v0, "SmartClipView"

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->TAG:Ljava/lang/String;

    .line 130
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->DEBUG:Z

    .line 131
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 140
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    .line 141
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBootCompleted:Z

    .line 153
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z

    .line 155
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsDisplayMetaArea:Z

    .line 158
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    .line 159
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableGestureEffect:Z

    .line 162
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    .line 163
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 166
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    .line 169
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    .line 177
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    .line 178
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    .line 181
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    .line 183
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 184
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.sec.android.gesturepad"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 191
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_STROKE_WIDTH:I

    .line 192
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 193
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 194
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 196
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 197
    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_START_LOADING_ANIMATION:S

    .line 198
    iput-short v6, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_FINISH_LOADING_ANIMATION:S

    .line 201
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_NONE:I

    .line 202
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 203
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 205
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_POINT_DISTANCE_MIN:I

    .line 206
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->SMART_CLIP_NON_CLOSED_CURVE_AREA:I

    .line 265
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 303
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    .line 305
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    .line 306
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    .line 332
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    .line 333
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 334
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 335
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 336
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 337
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 338
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    .line 339
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 344
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 345
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUri:Landroid/net/Uri;

    .line 346
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    .line 350
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    .line 351
    iput-short v3, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_SUGGESTION_SERVICE_START:S

    .line 352
    iput-short v5, p0, Lcom/android/server/smartclip/SmartClipView;->MSG_CROPPING_IMG_SAVE:S

    .line 354
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    .line 355
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCroppingTime:J

    .line 360
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 364
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    .line 367
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 374
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    .line 376
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    .line 483
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$1;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$2;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    .line 529
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 558
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    .line 926
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$5;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    .line 1006
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$6;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 1039
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$7;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$7;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePad:Ljava/lang/Runnable;

    .line 652
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    .line 653
    iput-object p2, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 655
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->init()V

    .line 657
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 660
    :cond_0
    return-void
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2216
    const-string v7, "SmartClipView"

    const-string v8, "GetDefaultDisplayBimap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2219
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2221
    const/4 v7, 0x2

    new-array v2, v7, [F

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v2, v6

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v2, v5

    .line 2222
    .local v2, "dims":[F
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/smartclip/SmartClipView;->getDegreesForRotation(I)F

    move-result v1

    .line 2223
    .local v1, "degrees":F
    cmpl-float v7, v1, v11

    if-lez v7, :cond_4

    move v3, v5

    .line 2225
    .local v3, "requiresRotation":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 2226
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2227
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2228
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2229
    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v6

    .line 2230
    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v5

    .line 2233
    :cond_0
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2236
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    if-eqz v7, :cond_1

    .line 2237
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->playCaptureSound()V

    .line 2242
    :cond_1
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_2

    .line 2243
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2247
    :cond_2
    if-eqz v3, :cond_3

    .line 2248
    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2250
    .local v4, "ss":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2251
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2252
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2253
    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v10

    aget v5, v2, v5

    neg-float v5, v5

    div-float/2addr v5, v10

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2254
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2255
    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2256
    iput-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2258
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v4    # "ss":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v5

    .end local v3    # "requiresRotation":Z
    :cond_4
    move v3, v6

    .line 2223
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->isVzwSetupRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/smartclip/SmartClipView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/smartclip/SmartClipView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/smartclip/SmartClipView;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/smartclip/SmartClipView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    return-void
.end method

.method static synthetic access$5602(Lcom/android/server/smartclip/SmartClipView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/smartclip/SmartClipView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/smartclip/SmartClipView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkClosedCurve(III)V
    .locals 7
    .param p1, "resultCoordsX"    # I
    .param p2, "resultCoordsY"    # I
    .param p3, "markNumber"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1340
    const/4 v2, -0x1

    .line 1341
    .local v2, "markNumberFromMatrix":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 1342
    add-int v3, p2, v1

    if-ltz v3, :cond_0

    if-ltz p1, :cond_0

    add-int v3, p2, v1

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_0

    .line 1344
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    add-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1347
    :cond_0
    if-eq v2, v5, :cond_6

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_6

    .line 1349
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1350
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1351
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_5

    .line 1353
    :cond_1
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    .line 1354
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 1355
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 1356
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    .line 1361
    :goto_1
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1391
    :cond_2
    :goto_2
    const/16 v0, 0xc

    .line 1392
    .local v0, "circleRadius":I
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x48

    if-gt v3, p1, :cond_3

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x48

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x48

    if-gt v3, p2, :cond_3

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x48

    if-ge v3, p2, :cond_4

    .line 1394
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    .line 1396
    :cond_4
    return-void

    .line 1358
    .end local v0    # "circleRadius":I
    :cond_5
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 1359
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    goto :goto_1

    .line 1366
    :cond_6
    sub-int v3, p2, v1

    if-ltz v3, :cond_7

    if-ltz p1, :cond_7

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_7

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_7

    .line 1368
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    sub-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1371
    :cond_7
    if-eq v2, v5, :cond_a

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_a

    .line 1373
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1374
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1375
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_8

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_9

    .line 1377
    :cond_8
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    .line 1378
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 1379
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 1380
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    .line 1385
    :goto_3
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    goto :goto_2

    .line 1382
    :cond_9
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 1383
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    goto :goto_3

    .line 1341
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private checkClosedCurveForActionUp(III)V
    .locals 4
    .param p1, "resultCoordsX"    # I
    .param p2, "resultCoordsY"    # I
    .param p3, "markNumber"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1399
    const/16 v0, 0xc

    .line 1401
    .local v0, "circleRadius":I
    iget-boolean v1, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    if-ne v1, v3, :cond_1

    .line 1402
    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit16 v1, v1, -0xf0

    if-gt v1, p1, :cond_1

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    add-int/lit16 v1, v1, 0xf0

    if-lt v1, p1, :cond_1

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit16 v1, v1, -0xf0

    if-gt v1, p2, :cond_1

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    add-int/lit16 v1, v1, 0xf0

    if-lt v1, p2, :cond_1

    .line 1406
    iput-boolean v3, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1407
    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    if-ne v1, v2, :cond_2

    .line 1409
    :cond_0
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 1413
    :goto_0
    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1416
    :cond_1
    return-void

    .line 1411
    :cond_2
    iput p3, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2262
    packed-switch p1, :pswitch_data_0

    .line 2270
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2264
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 2266
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 2268
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 2262
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
    .line 1099
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1100
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1101
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1103
    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private init()V
    .locals 15

    .prologue
    .line 664
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    .line 665
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 666
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 667
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    .line 668
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 670
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 671
    .local v13, "size":Landroid/graphics/Point;
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    .line 672
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 674
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    .line 676
    .local v14, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v14}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;

    .line 683
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mLongPressIntent:Landroid/content/Intent;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 687
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.diotek.mini_penmemo"

    const-string v3, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    .line 692
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.gesturepad"

    const-string v2, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 696
    const-string v0, "SmartClipView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMedianValueForGesturePosX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    .line 699
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    .line 701
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 703
    .local v7, "captureFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v0, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 709
    .end local v7    # "captureFilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 710
    .local v11, "mediaFilter":Landroid/content/IntentFilter;
    if-eqz v11, :cond_1

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 711
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    const-string v0, "file"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 717
    :cond_1
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/smartclip/SmartClipView$3;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SmartClipView$3;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 773
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$4;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCropHandler:Landroid/os/Handler;

    .line 793
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDirectionHandler:Landroid/os/Handler;

    .line 794
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipView;->setFocusableInTouchMode(Z)V

    .line 795
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mVC:Landroid/view/ViewConfiguration;

    .line 797
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 798
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->setDisplayDegrees()Z

    .line 800
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v0, :cond_4

    .line 801
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    .line 802
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    .line 808
    :goto_2
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayWidthForMatrix:I

    .line 809
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayHeightForMatrix:I

    .line 811
    new-instance v1, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayHeightForMatrix:I

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayWidthForMatrix:I

    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;-><init>(IIZ)V

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    .line 813
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLastPointer:Z

    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstPointer:Z

    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    .line 822
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    .line 823
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    .line 824
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    .line 825
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    .line 826
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    .line 827
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    .line 828
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    .line 829
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    .line 830
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 831
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 832
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    .line 833
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    .line 834
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    .line 836
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    .line 837
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    .line 839
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    .line 840
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    .line 841
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    .line 842
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 843
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    .line 844
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 845
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 846
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    .line 847
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointX:I

    .line 848
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointY:I

    .line 849
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointX:I

    .line 850
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointY:I

    .line 851
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 852
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    .line 853
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 854
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 856
    new-instance v9, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {v9, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 858
    .local v9, "dashPath":Landroid/graphics/DashPathEffect;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    .line 859
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 860
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 861
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 862
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 863
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 865
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    .line 866
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 867
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 868
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 869
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 870
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintOrange:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 873
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    .line 874
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 875
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 876
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 877
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 878
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 880
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    .line 881
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 882
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 883
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 884
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 885
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 893
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    .line 894
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 895
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 897
    new-instance v12, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-direct {v12}, Lcom/android/server/smartclip/SmartClipView$PointerState;-><init>()V

    .line 898
    .local v12, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 904
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    .line 906
    new-instance v0, Lcom/android/server/smartclip/GestureEffectManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/GestureEffectManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    .line 907
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mPenLongPress:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mPenDoubleTap:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView;->mGesturePad:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/GestureEffectManager;->init(Lcom/android/server/smartclip/SmartClipView;Landroid/os/Handler;Lcom/android/server/smartclip/SmartClipView$SPenVibrator;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 909
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 910
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 911
    .local v8, "country":Ljava/lang/String;
    const-string v0, "JP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    .line 914
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->load(I)V

    .line 917
    .end local v8    # "country":Ljava/lang/String;
    :cond_2
    return-void

    .line 676
    .end local v9    # "dashPath":Landroid/graphics/DashPathEffect;
    .end local v11    # "mediaFilter":Landroid/content/IntentFilter;
    .end local v12    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 677
    :catch_0
    move-exception v10

    .line 678
    .local v10, "ex":Landroid/os/RemoteException;
    const-string v0, "SmartClipView"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView;->mIsPhone:Z

    goto/16 :goto_1

    .line 804
    .end local v10    # "ex":Landroid/os/RemoteException;
    .restart local v11    # "mediaFilter":Landroid/content/IntentFilter;
    :cond_4
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    .line 805
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    goto/16 :goto_2

    .line 811
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 856
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private isPossibleCapture()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1081
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1082
    .local v0, "EDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 1083
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_0

    .line 1084
    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1085
    const-string v3, "SmartClipView"

    const-string v4, "MDM: Screen Capture Disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :goto_0
    return v2

    .line 1091
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mScreenCaptureOn:Z

    if-eq v4, v3, :cond_1

    .line 1092
    const-string v3, "SmartClipView"

    const-string v4, "flashannotate couldn\'t by MDM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1095
    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    .prologue
    .line 2374
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    .line 2376
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2381
    :goto_0
    return v1

    .line 2377
    :catch_0
    move-exception v0

    .line 2378
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartClipView"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2381
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1108
    .local v0, "topComponentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .locals 4
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
    .line 1112
    .local p1, "findList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1114
    .local v1, "topComponentName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1115
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1116
    const/4 v2, 0x1

    .line 1118
    :goto_1
    return v2

    .line 1114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isVzwSetupRunning()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 995
    const-string v1, "VZW"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    const-string v1, "persist.sys.vzw_setup_running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 997
    .local v0, "isVzwSetupRunning":Z
    const-string v1, "SmartClipView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard is Running ?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .end local v0    # "isVzwSetupRunning":Z
    :cond_0
    return v0
.end method

.method private markMatrixForCropping(FFFFI)V
    .locals 16
    .param p1, "oldCoordsX"    # F
    .param p2, "oldCoordsY"    # F
    .param p3, "newCoordsX"    # F
    .param p4, "newCoordsY"    # F
    .param p5, "markNumber"    # I

    .prologue
    .line 1201
    const/4 v10, 0x0

    .line 1202
    .local v10, "startCoordsX":F
    const/4 v11, 0x0

    .line 1203
    .local v11, "startCoordsY":F
    const/4 v2, 0x0

    .line 1204
    .local v2, "endCoordsX":F
    const/4 v3, 0x0

    .line 1205
    .local v3, "endCoordsY":F
    const/4 v7, 0x0

    .line 1206
    .local v7, "resultCoordsX":F
    const/4 v8, 0x0

    .line 1207
    .local v8, "resultCoordsY":F
    const/4 v9, 0x0

    .line 1208
    .local v9, "slope":F
    const/4 v5, 0x0

    .line 1210
    .local v5, "interceptY":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 1211
    :cond_0
    move/from16 v0, p1

    float-to-int v12, v0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    .line 1212
    move/from16 v0, p2

    float-to-int v12, v0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    .line 1218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 1219
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1222
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v13, p3, p1

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v14, p4, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1, v13, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1225
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1226
    .local v6, "point":Landroid/graphics/Point;
    add-float v12, p3, p1

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    add-float v13, p4, p2

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    cmpl-float v12, p1, p3

    if-nez v12, :cond_2

    cmpl-float v12, p2, p4

    if-eqz v12, :cond_11

    .line 1231
    :cond_2
    move/from16 v10, p1

    .line 1232
    move/from16 v11, p2

    .line 1233
    move/from16 v2, p3

    .line 1234
    move/from16 v3, p4

    .line 1236
    sub-float v12, v10, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_5

    .line 1237
    sub-float v12, v3, v11

    sub-float v13, v2, v10

    div-float v9, v12, v13

    .line 1241
    :goto_0
    mul-float v12, v10, v9

    sub-float v5, v11, v12

    .line 1243
    cmpg-float v12, p1, p3

    if-gtz v12, :cond_c

    .line 1244
    :goto_1
    cmpg-float v12, v10, v2

    if-gtz v12, :cond_11

    .line 1245
    move v7, v10

    .line 1246
    mul-float v12, v10, v9

    add-float v8, v12, v5

    .line 1248
    float-to-int v12, v7

    float-to-int v13, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/smartclip/SmartClipView;->checkClosedCurve(III)V

    .line 1259
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 1260
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 1263
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 1264
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float v13, v8, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_6

    .line 1265
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    if-ltz v12, :cond_4

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_4

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_4

    .line 1268
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1264
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1239
    .end local v4    # "i":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 1272
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, -0x40800000    # -1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    .line 1273
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_3
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float/2addr v13, v8

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_8

    .line 1274
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    if-ltz v12, :cond_7

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_7

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_7

    .line 1277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1273
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1282
    .end local v4    # "i":I
    :cond_8
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 1283
    float-to-int v12, v8

    if-ltz v12, :cond_9

    float-to-int v12, v7

    if-ltz v12, :cond_9

    float-to-int v12, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_9

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_9

    .line 1286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    float-to-int v14, v7

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1244
    :cond_9
    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v10, v12

    goto/16 :goto_1

    .line 1328
    :cond_a
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 1329
    float-to-int v12, v8

    if-ltz v12, :cond_b

    float-to-int v12, v7

    if-ltz v12, :cond_b

    float-to-int v12, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_b

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_b

    .line 1332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    float-to-int v14, v7

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1290
    :cond_b
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v10, v12

    :cond_c
    cmpl-float v12, v10, v2

    if-ltz v12, :cond_11

    .line 1291
    move v7, v10

    .line 1292
    mul-float v12, v10, v9

    add-float v8, v12, v5

    .line 1294
    float-to-int v12, v7

    float-to-int v13, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/smartclip/SmartClipView;->checkClosedCurve(III)V

    .line 1305
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_d

    .line 1306
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 1309
    :cond_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    .line 1310
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_4
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float v13, v8, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_f

    .line 1311
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    if-ltz v12, :cond_e

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_e

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_e

    .line 1314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    add-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1310
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1318
    .end local v4    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, -0x40800000    # -1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_a

    .line 1319
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_5
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    int-to-float v13, v13

    sub-float/2addr v13, v8

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_a

    .line 1320
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    if-ltz v12, :cond_10

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_10

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_10

    .line 1323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    sub-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1319
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1337
    .end local v4    # "i":I
    :cond_11
    return-void
.end method

.method private playCaptureSound()V
    .locals 2

    .prologue
    .line 2205
    const-string v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    const-string v0, "SmartClipView"

    const-string v1, "Camera is running!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    if-eqz v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->play(I)V

    .line 2211
    :cond_0
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2347
    iget-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_0

    .line 2348
    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2351
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 2353
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2354
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2356
    .local v3, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SmartClipService.SmartClipAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2359
    const-string v4, "SmartClipView"

    const-string v5, "addSPenEvent : SuggestionService is running!."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    .line 2369
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    return-void

    .line 2364
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const-string v4, "SmartClipView"

    const-string v5, "addSPenEvent : SuggestionService is not running!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    goto :goto_0
.end method

.method private setDisplayDegrees()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2301
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    .line 2302
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    .line 2304
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2305
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iget v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-le v2, v5, :cond_2

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    :goto_0
    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mVerticalMovingSlop:I

    .line 2311
    :goto_1
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SmartClipView;->getDegreesForRotation(I)F

    move-result v1

    .line 2313
    .local v1, "degress":F
    const-string v2, "SmartClipView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentDisplayWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentDisplayHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Rot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const/4 v0, 0x0

    .line 2318
    .local v0, "changed":Z
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_5

    .line 2320
    :cond_0
    const-string v2, "SmartClipView"

    const-string v5, "setDisplayDegrees : mDisplayRoateDegress is 0"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-ne v2, v3, :cond_4

    .line 2322
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    .line 2323
    const/4 v0, 0x1

    .line 2339
    :goto_2
    if-eqz v0, :cond_1

    .line 2340
    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->setPortrait(Z)V

    .line 2343
    :cond_1
    return v0

    .line 2305
    .end local v0    # "changed":Z
    .end local v1    # "degress":F
    :cond_2
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    goto :goto_0

    .line 2308
    :cond_3
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mVerticalMovingSlop:I

    goto :goto_1

    .line 2325
    .restart local v0    # "changed":Z
    .restart local v1    # "degress":F
    :cond_4
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    goto :goto_2

    .line 2329
    :cond_5
    const-string v2, "SmartClipView"

    const-string v5, "setDisplayDegrees : mDisplayRoateDegress is 1"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    if-nez v2, :cond_6

    .line 2332
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    .line 2333
    const/4 v0, 0x1

    goto :goto_2

    .line 2335
    :cond_6
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateDegress:I

    goto :goto_2

    :cond_7
    move v2, v4

    .line 2340
    goto :goto_3
.end method

.method private setPointGroupClear()V
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, -0x1

    .line 2017
    const-string v0, "SmartClipView"

    const-string v1, "setPointGroupClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    .line 2019
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    .line 2020
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    .line 2021
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    .line 2022
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointX:I

    .line 2023
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointY:I

    .line 2024
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointX:I

    .line 2025
    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointY:I

    .line 2026
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    .line 2027
    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    .line 2028
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2201
    return-void
.end method

.method private startAniForLoadingService()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 2032
    invoke-virtual {p0, v6}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    .line 2033
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2034
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080449

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 2035
    .local v11, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2036
    .local v10, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2037
    .local v9, "rectForAnimation":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2039
    .local v7, "bitmapForAnimation":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2040
    .local v8, "canvasForAnimation":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v8, v10, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2042
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2043
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2045
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mFinishSaveImg:Z

    .line 2047
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2049
    .local v0, "ani":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2050
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2051
    new-instance v1, Lcom/android/server/smartclip/SmartClipView$9;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SmartClipView$9;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2070
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2071
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenVibrator:Lcom/android/server/smartclip/SmartClipView$SPenVibrator;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipView$SPenVibrator;->playVibrator()V

    .line 2072
    return-void
.end method


# virtual methods
.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 29
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isKeyguardOn"    # Z
    .param p3, "isLiveGlanceView"    # Z

    .prologue
    .line 1422
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    .line 1424
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsKeyguardOn:Z

    if-nez v2, :cond_34

    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->isVzwSetupRunning()Z

    move-result v2

    if-nez v2, :cond_34

    .line 1425
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 1426
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 1430
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1431
    .local v8, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1433
    .local v24, "totalPointerSize":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    :cond_1
    const/16 v2, 0x9

    if-eq v8, v2, :cond_1c

    const/4 v2, 0x7

    if-eq v8, v2, :cond_1c

    const/16 v2, 0xa

    if-eq v8, v2, :cond_1c

    .line 1437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 1438
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1439
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 1440
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    .line 1442
    monitor-exit v28

    .line 2013
    .end local v8    # "action":I
    .end local v24    # "totalPointerSize":I
    :cond_2
    :goto_0
    return-void

    .line 1445
    .restart local v8    # "action":I
    .restart local v24    # "totalPointerSize":I
    :cond_3
    if-eqz v8, :cond_4

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 1449
    :cond_4
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : addSPenEvent event down start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->updateRotation()V

    .line 1452
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setAboutStartingSuggestionService()V

    .line 1454
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_5

    .line 1456
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : can not cropping because SuggestionService is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    monitor-exit v28

    goto :goto_0

    .line 1969
    .end local v8    # "action":I
    .end local v24    # "totalPointerSize":I
    :catchall_0
    move-exception v2

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1460
    .restart local v8    # "action":I
    .restart local v24    # "totalPointerSize":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_6

    .line 1461
    const-string v2, "SmartClipView"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1463
    monitor-exit v28

    goto :goto_0

    .line 1466
    :cond_6
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v18, v2, 0x8

    .line 1468
    .local v18, "index":I
    if-nez v8, :cond_8

    .line 1469
    const/16 v21, 0x0

    .local v21, "p":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 1470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 1471
    .local v22, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->clearTrace()V

    .line 1472
    const/4 v2, 0x0

    move-object/from16 v0, v22

    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2702(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    .line 1469
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 1474
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    .line 1475
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    .line 1476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    .line 1479
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 1480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    .line 1481
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    .line 1484
    .end local v21    # "p":I
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    .line 1485
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    if-ge v2, v3, :cond_9

    .line 1486
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    .line 1489
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1490
    .local v17, "id":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v17

    if-gt v0, v1, :cond_a

    .line 1491
    new-instance v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;-><init>()V

    .line 1492
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    add-int/lit8 v24, v24, 0x1

    .line 1494
    goto :goto_2

    .line 1496
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    if-ltz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2700(Lcom/android/server/smartclip/SmartClipView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1497
    :cond_b
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mActivePointerId:I

    .line 1500
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 1501
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2702(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    .line 1502
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLastPointer:Z

    .line 1507
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 1509
    const-string v2, "SmartClipView"

    const-string v3, "mBrType : BROADCAST_VIDEOPLAYER_PAUSE SET"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    .end local v17    # "id":I
    .end local v18    # "index":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_e

    .line 1514
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : can not cropping because SuggestionService is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    monitor-exit v28

    goto/16 :goto_0

    .line 1518
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_f

    .line 1519
    const-string v2, "SmartClipView"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1521
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1522
    monitor-exit v28

    goto/16 :goto_0

    .line 1525
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    .line 1530
    .local v13, "eventPointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 1532
    .local v15, "historySize":I
    const/4 v14, 0x0

    .local v14, "historyPos":I
    :goto_3
    if-ge v14, v15, :cond_16

    .line 1533
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v13, :cond_15

    .line 1534
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1535
    .restart local v17    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    move-object/from16 v22, v2

    .line 1536
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :goto_5
    if-eqz v22, :cond_14

    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2800(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    .line 1537
    .local v10, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14, v10}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1539
    if-eqz v22, :cond_12

    .line 1540
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/android/server/smartclip/SmartClipView$PointerState;->addTrace(FF)V

    .line 1541
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_11

    .line 1542
    :cond_10
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    .line 1543
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    .line 1544
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    .line 1545
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    .line 1546
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 1547
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 1548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1550
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mPathOfCurveForDrawing reset 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1553
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v6, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    iget v7, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1557
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 1558
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 1533
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 1535
    .end local v10    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 1536
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_6

    .line 1532
    .end local v17    # "id":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_15
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1564
    .end local v16    # "i":I
    :cond_16
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_7
    move/from16 v0, v16

    if-ge v0, v13, :cond_1c

    .line 1565
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1566
    .restart local v17    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    move-object/from16 v22, v2

    .line 1567
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :goto_8
    if-eqz v22, :cond_1b

    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2800(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    .line 1568
    .restart local v10    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_9
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1570
    if-eqz v22, :cond_19

    .line 1571
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/android/server/smartclip/SmartClipView$PointerState;->addTrace(FF)V

    .line 1572
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18

    .line 1573
    :cond_17
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    .line 1574
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    .line 1575
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointXForCircle:F

    .line 1576
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointYForCircle:F

    .line 1577
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 1578
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1581
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mPathOfCurveForDrawing reset 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1584
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v6, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    iget v7, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1587
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 1588
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 1589
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v22

    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2902(Lcom/android/server/smartclip/SmartClipView$PointerState;I)I

    .line 1564
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 1566
    .end local v10    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 1567
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/smartclip/SmartClipView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_9

    .line 1594
    .end local v13    # "eventPointerCount":I
    .end local v14    # "historyPos":I
    .end local v15    # "historySize":I
    .end local v16    # "i":I
    .end local v17    # "id":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_1d

    .line 1597
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mDisplayRoateChanged is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1599
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 1600
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1604
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->getBoundRectOfPath()Landroid/graphics/Rect;

    move-result-object v9

    .line 1605
    .local v9, "boundRectOfPath":Landroid/graphics/Rect;
    if-eqz v9, :cond_1e

    .line 1606
    const/4 v2, 0x2

    if-ne v8, v2, :cond_26

    .line 1607
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/android/server/smartclip/SmartClipView;->requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z

    .line 1613
    :cond_1e
    :goto_a
    const-string v2, "SmartClipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MotionEvent, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1f

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_21

    .line 1618
    :cond_1f
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1625
    .local v23, "totalPointerCount":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosX:I

    .line 1626
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mMedianValueForGesturePosY:I

    .line 1629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/smartclip/SmartClipView;->mCropStartingTime:J

    sub-long v11, v2, v4

    .line 1635
    .local v11, "croppingTime":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v11, v2

    if-gez v2, :cond_27

    .line 1636
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1732
    :cond_20
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1735
    .end local v11    # "croppingTime":J
    .end local v23    # "totalPointerCount":I
    :cond_21
    const/4 v2, 0x3

    if-ne v8, v2, :cond_22

    .line 1736
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1740
    :cond_22
    const/16 v2, 0xa

    if-ne v8, v2, :cond_23

    .line 1741
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1745
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    .line 1747
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    if-eqz v2, :cond_24

    .line 1748
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1751
    const-string v2, "SmartClipView"

    const-string v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1753
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView;->resetVariable(I)V

    .line 1754
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    .line 1755
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1756
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    .line 1757
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1967
    :goto_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1969
    :cond_24
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1972
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    packed-switch v2, :pswitch_data_0

    .line 1995
    .end local v8    # "action":I
    .end local v9    # "boundRectOfPath":Landroid/graphics/Rect;
    .end local v24    # "totalPointerSize":I
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_35

    .line 1996
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1998
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_0

    .line 2005
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1608
    .restart local v8    # "action":I
    .restart local v9    # "boundRectOfPath":Landroid/graphics/Rect;
    .restart local v24    # "totalPointerSize":I
    :cond_26
    const/4 v2, 0x1

    if-ne v8, v2, :cond_1e

    .line 1609
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Lcom/android/server/smartclip/SmartClipView;->requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z

    goto/16 :goto_a

    .line 1637
    .restart local v11    # "croppingTime":J
    .restart local v23    # "totalPointerCount":I
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z

    if-nez v2, :cond_32

    .line 1638
    const/16 v21, 0x0

    .restart local v21    # "p":I
    :goto_e
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2a

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 1640
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3000(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v25

    .line 1641
    .local v25, "traceCount":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_f
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_29

    .line 1642
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v2

    aget v26, v2, v16

    .line 1643
    .local v26, "x":F
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3200(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v2

    aget v27, v2, v16

    .line 1645
    .local v27, "y":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    if-nez v2, :cond_28

    .line 1646
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    .line 1647
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    .line 1648
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    .line 1641
    :goto_10
    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    .line 1650
    :cond_28
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    .line 1651
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    .line 1652
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/smartclip/SmartClipView;->markMatrixForCropping(FFFFI)V

    .line 1654
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    .line 1655
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    .line 1656
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    goto :goto_10

    .line 1659
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->checkClosedCurveForActionUp(III)V

    .line 1638
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_e

    .line 1663
    .end local v16    # "i":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v25    # "traceCount":I
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 1665
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mNumColsedCurves is 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1668
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1681
    :cond_2b
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    if-nez v2, :cond_2e

    .line 1682
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableGestureEffect:Z

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/smartclip/GestureEffectManager;->checkDirectionGesture(FFFFLjava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1683
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2e

    .line 1684
    :cond_2d
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "so close pointer return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_2f

    .line 1692
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mIsUsablePath is false and mIsUsableSecondPath is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1695
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    .line 1697
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1698
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1699
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    .line 1702
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    if-nez v2, :cond_30

    .line 1709
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mBrType:I

    .line 1711
    const-string v2, "SmartClipView"

    const-string v3, "mBrType : BROADCAST_VIDEOPLAYER_PLAY SET"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1719
    const-string v2, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/smartclip/SmartClipView;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1720
    const-string v2, "SmartClipView"

    const-string v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z

    .line 1722
    invoke-direct/range {p0 .. p0}, Lcom/android/server/smartclip/SmartClipView;->setPointGroupClear()V

    .line 1723
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    .line 1724
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    goto/16 :goto_b

    .line 1670
    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 1672
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mNumColsedCurves is 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1675
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsablePath:Z

    .line 1677
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/smartclip/SmartClipView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsUsableSecondPath:Z

    goto/16 :goto_11

    .line 1729
    .end local v21    # "p":I
    :cond_32
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveScreencapture:Z

    goto/16 :goto_b

    .line 1761
    .end local v11    # "croppingTime":J
    .end local v23    # "totalPointerCount":I
    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z

    .line 1763
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/smartclip/SmartClipView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/smartclip/SmartClipView$8;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_c

    .line 1976
    :pswitch_2
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1977
    .local v19, "intentForVideoPause":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1979
    const-string v2, "SmartClipView"

    const-string v3, "mContext.sendBroadcast : VIDEOPLAYER_PAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1983
    .end local v19    # "intentForVideoPause":Landroid/content/Intent;
    :pswitch_3
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1984
    .local v20, "intentForVideoPlay":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1986
    const-string v2, "SmartClipView"

    const-string v3, "mContext.sendBroadcast : VIDEOPLAYER_PLAY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1990
    .end local v8    # "action":I
    .end local v9    # "boundRectOfPath":Landroid/graphics/Rect;
    .end local v20    # "intentForVideoPlay":Landroid/content/Intent;
    .end local v24    # "totalPointerSize":I
    :cond_34
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    .line 1991
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    .line 1992
    const-string v2, "SmartClipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true, GlanceView is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/smartclip/SmartClipView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SmartClipSvc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2011
    :cond_35
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "this event couldn\'t send to GestureDetector"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1972
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1998
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

.method public closeView()V
    .locals 1

    .prologue
    .line 2429
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipView;->setVisibility(I)V

    .line 2430
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipView;->setCroppingMode(I)V

    .line 2431
    return-void
.end method

.method public cropDraggedRect()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2461
    const-string v3, "SmartClipView"

    const-string v4, "cropDraggedRect()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v3, :cond_1

    .line 2569
    :cond_0
    :goto_0
    return v2

    .line 2467
    :cond_1
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2470
    :cond_2
    const-string v3, "SmartClipView"

    const-string v4, "Starting cropping dragged area!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    const/4 v1, 0x0

    .line 2474
    .local v1, "croppedRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v3, :cond_3

    .line 2475
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2478
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_5

    .line 2479
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->getBoundRectOfPath()Landroid/graphics/Rect;

    move-result-object v1

    .line 2483
    :cond_5
    if-eqz v1, :cond_a

    .line 2484
    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_6

    .line 2485
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2486
    :cond_6
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_7

    .line 2487
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2488
    :cond_7
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    if-le v3, v4, :cond_8

    .line 2489
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayWidth:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 2490
    :cond_8
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    if-le v3, v4, :cond_9

    .line 2491
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCurrentDisplayHeight:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2494
    :cond_9
    const-string v3, "SmartClipView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cropDraggedRect : croppedRect(adjusted) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    .line 2497
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    .line 2498
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    .line 2499
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    .line 2502
    :cond_a
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    .line 2503
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    .line 2505
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mCropImageHeight:I

    if-lez v3, :cond_0

    .line 2509
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordX:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I

    .line 2510
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordX:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I

    .line 2511
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordY:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I

    .line 2512
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordY:I

    iput v2, p0, Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I

    .line 2514
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2515
    .local v0, "cropImgSaveHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/smartclip/SmartClipView$10;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SmartClipView$10;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2569
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)Z
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "color"    # I

    .prologue
    .line 2450
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2451
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2452
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2453
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2454
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2455
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2456
    const/4 v0, 0x1

    return v0
.end method

.method protected getBoundRectOfPath()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 2434
    const/4 v0, 0x0

    .line 2436
    .local v0, "boundsOfPath":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    .line 2437
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 2439
    .local v1, "rectf":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2440
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "boundsOfPath":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2445
    .end local v1    # "rectf":Landroid/graphics/RectF;
    .restart local v0    # "boundsOfPath":Landroid/graphics/Rect;
    :cond_0
    return-object v0
.end method

.method public getCroppingMode()I
    .locals 1

    .prologue
    .line 2425
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    return v0
.end method

.method public isExclusiveModeActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2414
    iget v1, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLockScreenShowing()Z
    .locals 3

    .prologue
    .line 2385
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 2387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2392
    :goto_0
    return v1

    .line 2388
    :catch_0
    move-exception v0

    .line 2389
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartClipView"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2392
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowingGestureEffect()Z
    .locals 1

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v0}, Lcom/android/server/smartclip/GestureEffectManager;->isShowingGestureEffect()Z

    move-result v0

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .locals 22
    .param p1, "intersectionPointPrev"    # I
    .param p2, "intersectionPointLast"    # I
    .param p3, "isFirstCurve"    # Z

    .prologue
    .line 2075
    const/4 v4, 0x0

    .line 2076
    .local v4, "existOldCoords":Z
    const/4 v9, 0x0

    .line 2077
    .local v9, "oldCoordsX":F
    const/4 v10, 0x0

    .line 2078
    .local v10, "oldCoordsY":F
    const/4 v6, 0x0

    .line 2079
    .local v6, "newCoordsX":F
    const/4 v7, 0x0

    .line 2080
    .local v7, "newCoordsY":F
    const/4 v8, 0x0

    .line 2083
    .local v8, "numberOfAddTrace":I
    const-string v18, "SmartClipView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "makePathForClosedCurve : isFirstCurve : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const-string v18, "SmartClipView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "makePathForClosedCurve : intersectionPointPrev : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", intersectionPointLast "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2090
    .local v14, "totalPointerCount":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_0
    if-ge v11, v14, :cond_5

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2092
    .local v13, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3000(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v15

    .line 2093
    .local v15, "traceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v15, :cond_4

    .line 2094
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v18

    aget v16, v18, v5

    .line 2095
    .local v16, "x":F
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3200(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v18

    aget v17, v18, v5

    .line 2097
    .local v17, "y":F
    move/from16 v0, p1

    if-gt v0, v8, :cond_0

    add-int/lit8 v18, p2, 0x1

    move/from16 v0, v18

    if-lt v0, v8, :cond_0

    .line 2098
    if-nez v4, :cond_2

    .line 2099
    move/from16 v9, v16

    .line 2100
    move/from16 v10, v17

    .line 2101
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2104
    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointX:I

    .line 2105
    float-to-int v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mFirstIntersectionPointY:I

    .line 2112
    :goto_2
    const/4 v4, 0x1

    .line 2133
    :goto_3
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 2134
    .local v12, "point":Landroid/graphics/Point;
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2138
    .end local v12    # "point":Landroid/graphics/Point;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 2093
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2107
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2109
    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointX:I

    .line 2110
    float-to-int v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/smartclip/SmartClipView;->mSecondIntersectionPointY:I

    goto :goto_2

    .line 2114
    :cond_2
    move/from16 v6, v16

    .line 2115
    move/from16 v7, v17

    .line 2116
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v6, v9

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v20, v7, v10

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2128
    :goto_4
    move/from16 v9, v16

    .line 2129
    move/from16 v10, v17

    goto :goto_3

    .line 2120
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v6, v9

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v20, v7, v10

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    .line 2090
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 2142
    .end local v5    # "i":I
    .end local v13    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v15    # "traceCount":I
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 2143
    .local v3, "boundsOfPath":Landroid/graphics/RectF;
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2152
    :goto_5
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x42200000    # 40.0f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x42200000    # 40.0f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_7

    .line 2154
    const/16 v18, 0x0

    .line 2157
    :goto_6
    return v18

    .line 2146
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/smartclip/SmartClipView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_5

    .line 2157
    :cond_7
    const/16 v18, 0x1

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1123
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v1, p0}, Lcom/android/server/smartclip/GestureEffectManager;->onAttachedToWindow(Lcom/android/server/smartclip/SmartClipView;)V

    .line 1125
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 1126
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1127
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1128
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1129
    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/smartclip/SmartClipView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    return-void
.end method

.method public onDataExtractionResponseArrived(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .prologue
    .line 498
    iget-object v1, p1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 499
    .local v1, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 502
    .local v0, "croppedRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/server/smartclip/SmartClipView;->setSmartClipDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    .line 503
    invoke-virtual {p0}, Lcom/android/server/smartclip/SmartClipView;->postInvalidate()V

    .line 504
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    .line 508
    .end local v0    # "croppedRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string v2, "SmartClipView"

    const-string v3, "onDataExtractionResponseArrived : Repository is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    .line 1169
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    .line 1170
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    const/high16 v4, 0x41000000    # 8.0f

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1175
    :cond_0
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1176
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1178
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1

    .line 1179
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    iget v3, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    const/high16 v4, 0x40800000    # 4.0f

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1183
    :cond_1
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    if-eq v2, v7, :cond_2

    iget-boolean v2, p0, Lcom/android/server/smartclip/SmartClipView;->mIsDisplayMetaArea:Z

    if-ne v2, v7, :cond_3

    .line 1184
    :cond_2
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v2, :cond_3

    .line 1186
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1187
    .local v0, "contentRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_3

    .line 1189
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1190
    .local v1, "paint":Landroid/graphics/Paint;
    const v2, 0x3087cefa

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1191
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1192
    const v2, -0x783106

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/smartclip/SmartClipView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)Z

    .line 1197
    .end local v0    # "contentRect":Landroid/graphics/Rect;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1135
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView;->mHeaderBottom:I

    .line 1137
    return-void
.end method

.method protected requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z
    .locals 11
    .param p1, "rectToExtract"    # Landroid/graphics/Rect;
    .param p2, "ignoreRequestDuringExtraction"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 448
    if-nez p1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v5

    .line 451
    :cond_1
    const-string/jumbo v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 453
    .local v4, "windowManager":Landroid/view/IWindowManager;
    if-ne p2, v6, :cond_2

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    sub-long v0, v7, v9

    .line 456
    .local v0, "deltaTime":J
    iget-boolean v7, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    if-ne v7, v6, :cond_4

    .line 457
    const-wide/16 v7, 0x7d0

    cmp-long v7, v0, v7

    if-ltz v7, :cond_0

    .line 466
    .end local v0    # "deltaTime":J
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/smartclip/SmartClipView;->mIsExtractingDataFromView:Z

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/smartclip/SmartClipView;->mLastDataExtractionRequestTime:J

    .line 470
    :try_start_0
    iget v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    .line 471
    iget v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    const v8, 0x186a0

    if-le v7, v8, :cond_3

    .line 472
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    .line 474
    :cond_3
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v7, p0, Lcom/android/server/smartclip/SmartClipView;->mDataExtractionRequestId:I

    invoke-direct {v3, v7, p1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;)V

    .line 475
    .local v3, "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    const/4 v7, 0x0

    invoke-interface {v4, v3, v7}, Landroid/view/IWindowManager;->dispatchSmartClipDataExtractionEvent(Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 480
    goto :goto_0

    .line 460
    .end local v3    # "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .restart local v0    # "deltaTime":J
    :cond_4
    const-wide/16 v7, 0x64

    cmp-long v7, v0, v7

    if-gez v7, :cond_2

    goto :goto_0

    .line 476
    .end local v0    # "deltaTime":J
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SmartClipView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetVariable(I)V
    .locals 8
    .param p1, "totalPointerSize"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 2162
    const-string v2, "SmartClipView"

    const-string v3, "resetVariable : reset"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 2165
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2166
    .local v1, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipView$PointerState;->clearTrace()V

    .line 2167
    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v1, v4}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2702(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    .line 2164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2170
    .end local v1    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurDown:Z

    .line 2171
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mCurNumPointers:I

    .line 2172
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mMaxNumPointers:I

    .line 2173
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mExistOldCoords:Z

    .line 2174
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mIsLastPointer:Z

    .line 2175
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/smartclip/SmartClipView;->mIsFirstPointer:Z

    .line 2176
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mEnableCheckClosedCurve:Z

    .line 2177
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsX:F

    .line 2178
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mOldCoordsY:F

    .line 2179
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsX:F

    .line 2180
    iput v6, p0, Lcom/android/server/smartclip/SmartClipView;->mNewCoordsY:F

    .line 2182
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointX:F

    .line 2183
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mEndPointY:F

    .line 2184
    iput v4, p0, Lcom/android/server/smartclip/SmartClipView;->mNumberOfAddTrace:I

    .line 2185
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointX:I

    .line 2186
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mFirstStartPointY:I

    .line 2187
    iput v7, p0, Lcom/android/server/smartclip/SmartClipView;->mPrevCoordY:I

    .line 2189
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2191
    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1

    .line 2192
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    invoke-virtual {v2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->reset()V

    .line 2195
    :cond_1
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointX:F

    .line 2196
    iput v5, p0, Lcom/android/server/smartclip/SmartClipView;->mStartPointY:F

    .line 2197
    return-void
.end method

.method public setCroppingMode(I)V
    .locals 0
    .param p1, "croppingMode"    # I

    .prologue
    .line 2421
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mCroppingMode:I

    .line 2422
    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 1003
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 1004
    return-void
.end method

.method public setFocusWindow(I)V
    .locals 0
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 921
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView;->mFocusedWindow:I

    .line 922
    return-void
.end method

.method public setHapticEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 532
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView;->mIsEnabledHapticFeedback:Z

    .line 533
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .locals 1
    .param p1, "isInvisible"    # Z

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView;->mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/GestureEffectManager;->setPhoneWindowMangerFlag(Z)V

    .line 2403
    return-void
.end method

.method public setSmartClipDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .locals 1
    .param p1, "smartClipDataRepository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 2408
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 2409
    const/4 v0, 0x1

    return v0
.end method

.method public updateRotation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2277
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "updateRotation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-direct {p0}, Lcom/android/server/smartclip/SmartClipView;->setDisplayDegrees()Z

    move-result v1

    .line 2281
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2282
    .local v0, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3000(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v2

    if-le v2, v5, :cond_1

    .line 2283
    if-ne v1, v5, :cond_0

    .line 2284
    iput-boolean v5, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 2286
    const-string v2, "SmartClipView"

    const-string v3, "setDisplayDegrees : mDisplayRoateChanged is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :goto_0
    return-void

    .line 2288
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 2290
    const-string v2, "SmartClipView"

    const-string v3, "setDisplayDegrees : mDisplayRoateChanged is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2293
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/smartclip/SmartClipView;->mDisplayRoateChanged:Z

    .line 2295
    const-string v2, "SmartClipView"

    const-string v3, "setDisplayDegrees : mDisplayRoateChanged is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
