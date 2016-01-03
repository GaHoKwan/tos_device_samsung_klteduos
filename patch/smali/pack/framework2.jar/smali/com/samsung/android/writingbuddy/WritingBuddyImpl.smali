.class public final Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;
    }
.end annotation


# static fields
.field public static final BIND_MSG_REQUEST_IME_RECT:I = 0x2

.field public static final BIND_MSG_REQUEST_TARGET_RECT:I = 0x1

.field public static final BIND_MSG_RESULT_IME_CLOSED:I = 0x2

.field public static final BIND_MSG_RESULT_IME_OPENED:I = 0x1

.field public static final BIND_MSG_RESULT_WRITING_TYPE_IMAGE:I = 0x2

.field public static final BIND_MSG_RESULT_WRITING_TYPE_TEXT:I = 0x1

.field private static final CLIENT_SEQUENCE_MASK:I = 0xff

.field private static final CLIENT_UNIQUE_ID_MASK:I = -0x100

.field public static final CMD_ID_RECEIVE_ACTION_BUTTON:I = 0x2

.field public static final CMD_ID_WATCH_ACTION:I = 0x1

.field private static final DEBUG:Z

.field public static final FLAG_HELP_MODE:I = 0x4

.field public static final FLAG_IMAGE_WRITING:I = 0x1

.field public static final FLAG_MATH_WRITING:I = 0x2

.field public static final FLAG_MMS_MODE:I = 0x8

.field public static final FLAG_START_DRAWING_MODE:I = 0x10

.field private static final HELP_MODE_RESULT_CLOSED:Ljava/lang/String; = "CLOSED"

.field private static final HELP_MODE_RESULT_HOVERED:Ljava/lang/String; = "HOVERED"

.field private static final HELP_MODE_RESULT_HOVER_CANCELED:Ljava/lang/String; = "HOVER_CANCELED"

.field private static final HELP_MODE_RESULT_OPENED:Ljava/lang/String; = "OPENED"

.field private static final HELP_MODE_RESULT_TEXT_INSERTED:Ljava/lang/String; = "TEXT_INSERTED"

.field public static final IME_CMD_CANCEL_CLOSE:Ljava/lang/String; = "com.samsung.android.writingbuddy/CANCEL_CLOSE"

.field public static final IME_CMD_SEND_BINDER:Ljava/lang/String; = "com.samsung.android.writingbuddy/SEND_BINDER"

.field private static final MMS_DATA_DELETE:Ljava/lang/String; = "MMS_DATA_DELETE"

.field private static final MSG_CANCEL_WRITINGBUDDY_CUE:I = 0x7

.field private static final MSG_EDITOR_ACTION_DOWN:I = 0x8

.field private static final MSG_SERVICE_IMAGE_ADDED:I = 0x1

.field private static final MSG_SERVICE_RESULT_RECEIVED:I = 0x4

.field private static final MSG_SERVICE_TEXT_DELETED:I = 0x3

.field private static final MSG_SERVICE_TEXT_INSERTED:I = 0x2

.field private static final MSG_SERVICE_UPDATE_DIALOG:I = 0x9

.field private static final MSG_SERVICE_UPDATE_POSITION:I = 0x5

.field private static final MSG_SHOW_WRITINGBUDDY_CUE:I = 0x6

.field public static final PRIVATE_CMD_HELP_MODE:Ljava/lang/String; = "HELP_MODE"

.field public static final PRIVATE_CMD_RECEIVE_ACTION_BUTTON:Ljava/lang/String; = "RECEIVE_ACTION_BUTTON"

.field public static final PRIVATE_CMD_WACTH_ACTION:Ljava/lang/String; = "WATCH_ACTION"

.field public static final RESULT_FIELD_DELIMITER:Ljava/lang/String; = "//"

.field public static final RESULT_STRING_DELIMITER:Ljava/lang/String; = "//"

.field public static final SERVICE_CB_CLIENT_CHANGED:Ljava/lang/String; = "service_cb_client_changed"

.field public static final SERVICE_CB_CLOSED:Ljava/lang/String; = "service_cb_closed"

.field public static final SERVICE_CB_DRAWING_MODE_SET:Ljava/lang/String; = "service_cb_drawing_mode_set"

.field public static final SERVICE_CB_HELP_MODE_RESULT:Ljava/lang/String; = "service_cb_help_mode_result"

.field public static final SERVICE_CB_INFLATE_DONE:Ljava/lang/String; = "service_cb_inflate_done"

.field public static final SERVICE_CB_MATH_WRITING_RESULT:Ljava/lang/String; = "service_cb_math_writing_result"

.field public static final SERVICE_CB_MMS_DATA_DELETE:Ljava/lang/String; = "service_cb_mms_data_delete"

.field public static final SERVICE_CB_PERFORM_EDITOR_ACTION:Ljava/lang/String; = "service_cb_perform_editor_action"

.field public static final SERVICE_CB_WRITING_DONE:Ljava/lang/String; = "service_cb_writing_done"

.field private static final START_DELAY_TIME_MS:I = 0x96

.field private static final STATE_EVENT_SERVICE_CALLBACK_CLOSED:I = 0x2

.field private static final STATE_EVENT_SERVICE_CALLBACK_INFLATE_DONE:I = 0x1

.field private static final STATE_EVENT_TYPE_MOTION:I = 0x1

.field private static final STATE_EVENT_TYPE_SERVICE_CALLBACK:I = 0x2

.field private static final STATE_RESET_COUNT:I = 0x3

.field private static final STATE_STEP_STANDBY:I = 0x0

.field private static final STATE_STEP_WRITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WritingBuddyImpl"

.field public static final TEMPLATE_ALARM:I = 0xc

.field public static final TEMPLATE_ALARM_AM:I = 0xd

.field public static final TEMPLATE_ALARM_PM:I = 0xe

.field public static final TEMPLATE_CALCULATOR:I = 0x14

.field public static final TEMPLATE_DATEPICKER:I = 0x12

.field public static final TEMPLATE_DATEPICKER_NO_YEAR:I = 0x13

.field public static final TEMPLATE_DIALER:I = 0x15

.field public static final TEMPLATE_NONE:I = 0x0

.field public static final TEMPLATE_TIME:I = 0x1

.field public static final TEMPLATE_TIMEPICKER:I = 0xf

.field public static final TEMPLATE_TIMEPICKER_AM:I = 0x10

.field public static final TEMPLATE_TIMEPICKER_PM:I = 0x11

.field public static final TEMPLATE_TIMER:I = 0xb

.field public static final TYPE_BOARD_EDITOR:I = 0x1

.field public static final TYPE_BOARD_NONE:I = 0x0

.field public static final TYPE_BOARD_TEMPLATE:I = 0x2

.field public static final TYPE_EDITOR_DATETIME:I = 0x3

.field public static final TYPE_EDITOR_NONE:I = 0x0

.field public static final TYPE_EDITOR_NUMBER:I = 0x1

.field public static final TYPE_EDITOR_TEXT:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mBoardTemplate:I

.field private mBoardType:I

.field private mCanShowAutoCompletePopup:Z

.field private mCanStartWritingBuddy:Z

.field private mEditCount:I

.field private mEditorType:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreSizeChange:Z

.field private mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

.field private mInitRect:Landroid/graphics/Rect;

.field private mIsCursorBlinkDisabled:Z

.field private mIsHelpModeEnabled:Z

.field private mIsImageModePenDrawing:Z

.field private mIsImageWritingEnabled:Z

.field private mIsMathWritingEnabled:Z

.field private mIsMultiLineEditor:Z

.field private mIsPerformingAction:Z

.field private mIsPopupCueShowMSGCalled:Z

.field private mIsReceiveActionButtonEnabled:Z

.field private mIsWatchActionEnabled:Z

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParentView:Landroid/view/View;

.field private mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

.field private mPrivateCMD:Ljava/lang/String;

.field private mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

.field mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

.field private mShowCnt:I

.field private mState:I

.field private mStateResetCnt:I

.field private mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

.field private mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

.field private mViewID:I

.field private mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

.field private mWBRect:Landroid/graphics/Rect;

.field private mWindowMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    .line 351
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    .line 367
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 369
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    .line 371
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    .line 373
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 375
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 377
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 379
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    .line 381
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    .line 385
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    .line 387
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 389
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    .line 391
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    .line 393
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    .line 1896
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$5;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1905
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    .line 1919
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    .line 2450
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$6;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->initVariable()V

    .line 488
    invoke-virtual {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setParentView(Landroid/view/View;)V

    .line 489
    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p1, p0}, Landroid/view/View;->setWritingBuddy(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    .line 493
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardType(I)V

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardType(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/view/View;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method private canStartTemplateWritingBuddy(Z)Z
    .locals 10
    .param p1, "refresh"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1662
    iget-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 1664
    .local v2, "result":Z
    if-nez p1, :cond_0

    move v3, v2

    .line 1724
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 1669
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    move v2, v7

    .line 1672
    :goto_1
    if-eqz v2, :cond_1

    .line 1673
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_writing_buddy"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_6

    move v2, v7

    .line 1678
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1680
    .local v0, "context":Landroid/content/Context;
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getWindowMode()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    .line 1681
    if-eqz v0, :cond_2

    .line 1682
    invoke-virtual {v0}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1683
    instance-of v6, v0, Landroid/app/Activity;

    if-eqz v6, :cond_8

    .line 1684
    if-eqz v2, :cond_2

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    const/high16 v8, 0x2000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit8 v6, v6, 0xf

    if-nez v6, :cond_2

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_2

    .line 1687
    const/4 v2, 0x0

    .line 1698
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 1699
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1700
    .local v1, "p":Landroid/view/ViewParent;
    :goto_5
    if-eqz v1, :cond_3

    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    move-object v6, v1

    .line 1701
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1702
    const/4 v2, 0x0

    .line 1709
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_3
    if-eqz v2, :cond_4

    .line 1710
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_6
    invoke-direct {p0, v6, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v5

    .line 1711
    .local v5, "visibleRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_7
    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1714
    .local v4, "viewRect":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-eq v6, v7, :cond_4

    .line 1715
    const/4 v2, 0x0

    .line 1717
    sget-boolean v6, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "WritingBuddyImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VisibleRect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ViewRect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    .end local v4    # "viewRect":Landroid/graphics/Rect;
    .end local v5    # "visibleRect":Landroid/graphics/Rect;
    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 1723
    const-string v6, "WritingBuddyImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canStartWritingBuddy() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1724
    .restart local v3    # "result":I
    goto/16 :goto_0

    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "result":I
    :cond_5
    move v2, v6

    .line 1669
    goto/16 :goto_1

    :cond_6
    move v2, v6

    .line 1673
    goto/16 :goto_2

    .line 1678
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1689
    .restart local v0    # "context":Landroid/content/Context;
    :cond_8
    instance-of v6, v0, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_2

    .line 1690
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v8, 0x800

    invoke-virtual {v6, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 1692
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1705
    .restart local v1    # "p":Landroid/view/ViewParent;
    :cond_9
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto/16 :goto_5

    .line 1710
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_6

    .line 1711
    .restart local v5    # "visibleRect":Landroid/graphics/Rect;
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_7
.end method

.method private canStartWritingBuddy(Z)Z
    .locals 14
    .param p1, "refresh"    # Z

    .prologue
    .line 1558
    iget-boolean v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 1560
    .local v5, "result":Z
    if-nez p1, :cond_0

    move v6, v5

    .line 1657
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 1565
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v5, 0x1

    .line 1568
    :goto_1
    if-eqz v5, :cond_1

    .line 1569
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "pen_writing_buddy"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    const/4 v5, 0x1

    .line 1574
    :cond_1
    :goto_2
    if-eqz v5, :cond_3

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v11, v11, Landroid/widget/EditText;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->isFocusable()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1575
    :cond_2
    const/4 v5, 0x0

    .line 1579
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1581
    .local v0, "context":Landroid/content/Context;
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getWindowMode()I

    move-result v11

    iput v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    .line 1582
    if-eqz v0, :cond_4

    .line 1583
    invoke-virtual {v0}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1584
    instance-of v11, v0, Landroid/app/Activity;

    if-eqz v11, :cond_d

    .line 1585
    if-eqz v5, :cond_4

    iget v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    const/high16 v12, 0x2000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    iget v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit8 v11, v11, 0xf

    if-nez v11, :cond_4

    iget v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_4

    .line 1588
    const/4 v5, 0x0

    .line 1599
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 1600
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1601
    .local v3, "p":Landroid/view/ViewParent;
    :goto_5
    if-eqz v3, :cond_5

    instance-of v11, v3, Landroid/view/ViewGroup;

    if-eqz v11, :cond_5

    move-object v11, v3

    .line 1602
    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1603
    const/4 v5, 0x0

    .line 1611
    .end local v3    # "p":Landroid/view/ViewParent;
    :cond_5
    if-eqz v5, :cond_9

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v11, v11, Landroid/widget/EditText;

    if-eqz v11, :cond_9

    .line 1612
    new-instance v2, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v2}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1613
    .local v2, "ei":Landroid/view/inputmethod/EditorInfo;
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    .line 1614
    .local v4, "parent":Landroid/widget/EditText;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1617
    iget v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v11, 0xf

    .line 1618
    .local v1, "editorClass":I
    iget v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v11, 0xff0

    .line 1620
    .local v7, "variation":I
    const/16 v11, 0x80

    if-eq v7, v11, :cond_6

    const/16 v11, 0x90

    if-eq v7, v11, :cond_6

    const/16 v11, 0xe0

    if-eq v7, v11, :cond_6

    const/4 v11, 0x2

    if-ne v1, v11, :cond_7

    const/16 v11, 0x10

    if-ne v7, v11, :cond_7

    .line 1624
    :cond_6
    const/4 v5, 0x0

    .line 1628
    :cond_7
    if-eqz v5, :cond_8

    iget-object v11, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v11, :cond_8

    iget-object v11, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v12, "com.samsung.android/disableDirectPenInput"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1630
    const/4 v5, 0x0

    .line 1634
    :cond_8
    iget v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v11, v11, 0xf

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    iget v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v12, 0x20000

    and-int/2addr v11, v12

    iput v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-lez v11, :cond_f

    const/4 v11, 0x1

    :goto_6
    iput-boolean v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    .line 1638
    if-eqz v5, :cond_9

    iget-boolean v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_9

    .line 1639
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_7
    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v10

    .line 1640
    .local v10, "visibleRect":Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_8
    invoke-direct {p0, v11}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1643
    .local v8, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 1645
    .local v9, "visibleRatio":F
    const v11, 0x3e4ccccd    # 0.2f

    cmpg-float v11, v9, v11

    if-gez v11, :cond_9

    .line 1646
    const/4 v5, 0x0

    .line 1648
    const-string v11, "WritingBuddyImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "View is scrolled."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    .end local v1    # "editorClass":I
    .end local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "parent":Landroid/widget/EditText;
    .end local v7    # "variation":I
    .end local v8    # "viewRect":Landroid/graphics/Rect;
    .end local v9    # "visibleRatio":F
    .end local v10    # "visibleRect":Landroid/graphics/Rect;
    :cond_9
    iput-boolean v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 1656
    const-string v11, "WritingBuddyImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canStartWritingBuddy() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1657
    .restart local v6    # "result":I
    goto/16 :goto_0

    .line 1565
    .end local v0    # "context":Landroid/content/Context;
    .end local v6    # "result":I
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1569
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1579
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1590
    .restart local v0    # "context":Landroid/content/Context;
    :cond_d
    instance-of v11, v0, Landroid/content/ContextWrapper;

    if-eqz v11, :cond_4

    .line 1591
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x800

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 1593
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1606
    .restart local v3    # "p":Landroid/view/ViewParent;
    :cond_e
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto/16 :goto_5

    .line 1634
    .end local v3    # "p":Landroid/view/ViewParent;
    .restart local v1    # "editorClass":I
    .restart local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v4    # "parent":Landroid/widget/EditText;
    .restart local v7    # "variation":I
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 1639
    :cond_10
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_7

    .line 1640
    .restart local v10    # "visibleRect":Landroid/graphics/Rect;
    :cond_11
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_8
.end method

.method private closeWritingBuddy(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 1546
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v1, :cond_0

    .line 1547
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1553
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    const-string v2, "Can not close WritingBuddy, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2215
    move-object v0, p2

    .line 2216
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    .line 2217
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2219
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private createPopupCue()V
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v0, :cond_0

    .line 1313
    :goto_0
    return-void

    .line 1259
    :cond_0
    new-instance v0, Lcom/samsung/android/writingbuddy/PopupCue;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    .line 1262
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    new-instance v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1282
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    new-instance v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method private dismissPopupCue(Z)Z
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    .line 1742
    const-string v1, "WritingBuddyImpl"

    const-string v2, "dismissPopupCue()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/4 v0, 0x0

    .line 1748
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1749
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1750
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 1754
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v1, :cond_2

    .line 1755
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1756
    const/4 v0, 0x1

    .line 1759
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->dismiss(Z)V

    .line 1762
    :cond_2
    return v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2201
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2202
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    .line 2209
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    return-object v0

    .line 2204
    :cond_1
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Attempting to create Handler from background thread."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private getModeFlag()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 576
    const/4 v1, 0x0

    .line 578
    .local v1, "flag":I
    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    if-eqz v4, :cond_0

    .line 579
    or-int/lit8 v1, v1, 0x1

    .line 582
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMathWritingEnabled:Z

    if-eqz v4, :cond_1

    .line 583
    or-int/lit8 v1, v1, 0x2

    .line 586
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    if-eqz v4, :cond_2

    .line 587
    or-int/lit8 v1, v1, 0x4

    .line 590
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_4

    .line 591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 592
    .local v0, "b":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 593
    const-string v4, "isMmsMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 594
    .local v2, "isMmsMode":Z
    if-eqz v2, :cond_5

    .line 595
    or-int/lit8 v1, v1, 0x8

    .line 602
    :cond_3
    :goto_0
    const-string v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 603
    .local v3, "isStartDrawingMode":Z
    if-eqz v3, :cond_6

    .line 604
    or-int/lit8 v1, v1, 0x10

    .line 605
    const-string v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 613
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "isMmsMode":Z
    .end local v3    # "isStartDrawingMode":Z
    :cond_4
    :goto_1
    return v1

    .line 597
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v2    # "isMmsMode":Z
    :cond_5
    and-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 598
    xor-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 607
    .restart local v3    # "isStartDrawingMode":Z
    :cond_6
    and-int/lit8 v4, v1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 608
    xor-int/lit8 v1, v1, 0x10

    goto :goto_1
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2243
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2245
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2246
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 2247
    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2248
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2250
    .end local v0    # "locInWindow":[I
    :cond_0
    return-object v1

    .line 2246
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2232
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2234
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 2235
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 2236
    .local v0, "locOnScr":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2237
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2239
    .end local v0    # "locOnScr":[I
    :cond_0
    return-object v1

    .line 2235
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getTargetWBRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 824
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    .line 2254
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 2256
    .local v4, "r":Landroid/graphics/Rect;
    move-object/from16 v8, p1

    .line 2257
    .local v8, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2259
    .local v9, "vp":Landroid/view/ViewParent;
    const/4 v7, 0x0

    .line 2260
    .local v7, "top":I
    const/4 v0, 0x0

    .line 2261
    .local v0, "bottomDiff":I
    const/4 v2, 0x0

    .line 2262
    .local v2, "left":I
    const/4 v5, 0x0

    .line 2264
    .local v5, "rightDiff":I
    :goto_0
    instance-of v12, v9, Landroid/view/View;

    if-eqz v12, :cond_9

    move-object v3, v9

    .line 2265
    check-cast v3, Landroid/view/View;

    .line 2268
    .local v3, "parent":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 2269
    .local v11, "y":I
    add-int/2addr v7, v11

    .line 2271
    if-gez v11, :cond_0

    .line 2272
    if-gez v7, :cond_0

    .line 2273
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 2274
    const/4 v7, 0x0

    .line 2278
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    if-lez v12, :cond_1

    .line 2279
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    if-le v12, v7, :cond_5

    .line 2280
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v13, v7

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 2281
    const/4 v7, 0x0

    .line 2294
    :cond_1
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int v1, v12, v13

    .line 2295
    .local v1, "bottomPosY":I
    add-int v12, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 2296
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int v13, v1, v0

    sub-int/2addr v12, v13

    neg-int v0, v12

    .line 2302
    :goto_2
    if-eqz p2, :cond_4

    .line 2304
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 2305
    .local v10, "x":I
    add-int/2addr v2, v10

    .line 2307
    if-gez v10, :cond_2

    .line 2308
    if-gez v2, :cond_2

    .line 2309
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 2310
    const/4 v2, 0x0

    .line 2314
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    if-lez v12, :cond_3

    .line 2315
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    if-le v12, v2, :cond_7

    .line 2316
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int/2addr v13, v2

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 2317
    const/4 v2, 0x0

    .line 2324
    :cond_3
    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int v6, v12, v13

    .line 2325
    .local v6, "rightPosX":I
    add-int v12, v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_8

    .line 2326
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int v13, v6, v5

    sub-int/2addr v12, v13

    neg-int v5, v12

    .line 2333
    .end local v6    # "rightPosX":I
    .end local v10    # "x":I
    :cond_4
    :goto_4
    move-object v8, v3

    .line 2334
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2335
    goto/16 :goto_0

    .line 2283
    .end local v1    # "bottomPosY":I
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v7, v12

    goto :goto_1

    .line 2298
    .restart local v1    # "bottomPosY":I
    :cond_6
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    add-int v13, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 2299
    const/4 v0, 0x0

    goto :goto_2

    .line 2319
    .restart local v10    # "x":I
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v2, v12

    goto :goto_3

    .line 2328
    .restart local v6    # "rightPosX":I
    :cond_8
    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int v13, v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 2329
    const/4 v5, 0x0

    goto :goto_4

    .line 2337
    .end local v1    # "bottomPosY":I
    .end local v3    # "parent":Landroid/view/View;
    .end local v6    # "rightPosX":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_9
    sget-boolean v12, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "WritingBuddyImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getVisibleRectInWindow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_a
    return-object v4
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    .line 2342
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 2344
    .local v4, "r":Landroid/graphics/Rect;
    move-object/from16 v8, p1

    .line 2345
    .local v8, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2347
    .local v9, "vp":Landroid/view/ViewParent;
    const/4 v7, 0x0

    .line 2348
    .local v7, "top":I
    const/4 v0, 0x0

    .line 2349
    .local v0, "bottomDiff":I
    const/4 v2, 0x0

    .line 2350
    .local v2, "left":I
    const/4 v5, 0x0

    .line 2352
    .local v5, "rightDiff":I
    :goto_0
    instance-of v12, v9, Landroid/view/View;

    if-eqz v12, :cond_9

    move-object v3, v9

    .line 2353
    check-cast v3, Landroid/view/View;

    .line 2356
    .local v3, "parent":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 2357
    .local v11, "y":I
    add-int/2addr v7, v11

    .line 2359
    if-gez v11, :cond_0

    .line 2360
    if-gez v7, :cond_0

    .line 2361
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 2362
    const/4 v7, 0x0

    .line 2366
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    if-lez v12, :cond_1

    .line 2367
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    if-le v12, v7, :cond_5

    .line 2368
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v13, v7

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 2369
    const/4 v7, 0x0

    .line 2382
    :cond_1
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int v1, v12, v13

    .line 2383
    .local v1, "bottomPosY":I
    add-int v12, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 2384
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int v13, v1, v0

    sub-int/2addr v12, v13

    neg-int v0, v12

    .line 2390
    :goto_2
    if-eqz p2, :cond_4

    .line 2392
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 2393
    .local v10, "x":I
    add-int/2addr v2, v10

    .line 2395
    if-gez v10, :cond_2

    .line 2396
    if-gez v2, :cond_2

    .line 2397
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 2398
    const/4 v2, 0x0

    .line 2402
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    if-lez v12, :cond_3

    .line 2403
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    if-le v12, v2, :cond_7

    .line 2404
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int/2addr v13, v2

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 2405
    const/4 v2, 0x0

    .line 2412
    :cond_3
    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int v6, v12, v13

    .line 2413
    .local v6, "rightPosX":I
    add-int v12, v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_8

    .line 2414
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int v13, v6, v5

    sub-int/2addr v12, v13

    neg-int v5, v12

    .line 2421
    .end local v6    # "rightPosX":I
    .end local v10    # "x":I
    :cond_4
    :goto_4
    move-object v8, v3

    .line 2422
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2423
    goto/16 :goto_0

    .line 2371
    .end local v1    # "bottomPosY":I
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v7, v12

    goto :goto_1

    .line 2386
    .restart local v1    # "bottomPosY":I
    :cond_6
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    add-int v13, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 2387
    const/4 v0, 0x0

    goto :goto_2

    .line 2407
    .restart local v10    # "x":I
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v2, v12

    goto :goto_3

    .line 2416
    .restart local v6    # "rightPosX":I
    :cond_8
    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int v13, v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 2417
    const/4 v5, 0x0

    goto :goto_4

    .line 2425
    .end local v1    # "bottomPosY":I
    .end local v3    # "parent":Landroid/view/View;
    .end local v6    # "rightPosX":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_9
    sget-boolean v12, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "WritingBuddyImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getVisibleRectOnScreen : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    :cond_a
    return-object v4
.end method

.method private getWindowMode()I
    .locals 2

    .prologue
    .line 2184
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2186
    .local v0, "context":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_1

    .line 2187
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 2188
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    .line 2195
    :goto_1
    return v1

    .line 2184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2195
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    const/high16 v1, 0x1000000

    goto :goto_1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1819
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1860
    :goto_0
    :pswitch_0
    return-void

    .line 1821
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onImageInserted(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1825
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    .line 1826
    .local v4, "text":Ljava/lang/CharSequence;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1827
    .local v5, "where":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1828
    .local v1, "nextCursor":I
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onTextInserted(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 1832
    .end local v1    # "nextCursor":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "where":I
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1833
    .local v3, "start":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1834
    .local v0, "end":I
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onTextDeleted(II)V

    goto :goto_0

    .line 1838
    .end local v0    # "end":I
    .end local v3    # "start":I
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1839
    .local v2, "result":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onResultReceived(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 1843
    .end local v2    # "result":Landroid/os/Bundle;
    :pswitch_5
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->notifyPositionChanged(I)V

    goto :goto_0

    .line 1847
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddyCue()V

    goto :goto_0

    .line 1851
    :pswitch_7
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    goto :goto_0

    .line 1855
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onUpdateDialog()V

    goto :goto_0

    .line 1819
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private initVariable()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    .line 506
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 508
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    .line 510
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    .line 512
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 516
    invoke-virtual {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardType(I)V

    .line 518
    invoke-virtual {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setEditorType(I)V

    .line 520
    invoke-virtual {p0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 521
    return-void
.end method

.method private isWBRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 814
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pointInView(FF)Z
    .locals 1
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 2227
    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    cmpl-float v0, p3, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerEventListener(Landroid/view/View;)V
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 783
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$1;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 790
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$2;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 797
    return-void
.end method

.method private registerPositionChangeListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1880
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v1, v2, :cond_1

    .line 1882
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWBPositionListenerEnalbed(Z)V

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1886
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1887
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1888
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1889
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1890
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method private resetPenPointerIcon()V
    .locals 3

    .prologue
    .line 1243
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 932
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 934
    iput-boolean v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    .line 937
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->unregisterPositionChangeListener()V

    .line 938
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    .line 940
    const-string v0, "WritingBuddyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report current WB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 944
    iput v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    .line 945
    iput v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    .line 946
    return-void
.end method

.method private scheduleState(IILandroid/view/MotionEvent;I)Z
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 1924
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1925
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z

    move-result v0

    .line 1927
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method private scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 1939
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    .line 1940
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1941
    .local v1, "clientViewID":I
    move v4, p4

    .line 1943
    .local v4, "receivedClientID":I
    if-ne v1, v4, :cond_0

    .line 1944
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 1947
    :cond_0
    const-string v7, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const/4 v6, 0x0

    .line 2048
    .end local v1    # "clientViewID":I
    .end local v4    # "receivedClientID":I
    :goto_2
    return v6

    .line 1947
    .restart local v1    # "clientViewID":I
    .restart local v4    # "receivedClientID":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1955
    .end local v1    # "clientViewID":I
    .end local v4    # "receivedClientID":I
    :cond_3
    const/4 v5, 0x1

    .line 1957
    .local v5, "showLog":Z
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-nez v6, :cond_c

    .line 1958
    const/4 v6, 0x1

    if-ne p1, v6, :cond_5

    .line 1959
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1960
    .local v0, "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_7

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1962
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1963
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1964
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 1988
    :cond_4
    :goto_3
    const/4 v6, 0x7

    if-ne v0, v6, :cond_5

    .line 1989
    const/4 v5, 0x0

    .line 2042
    .end local v0    # "action":I
    :cond_5
    :goto_4
    if-eqz v5, :cond_6

    .line 2043
    const-string v7, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1966
    .restart local v0    # "action":I
    :cond_7
    const/16 v6, 0xa

    if-ne v0, v6, :cond_a

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1967
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 1968
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(FF)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1969
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1971
    const-string v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1973
    :cond_8
    if-eqz v2, :cond_9

    const/4 v6, -0x1

    const/16 v7, -0x100

    const/16 v8, 0x140

    invoke-virtual {v2, v6, v7, v8}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v6

    if-nez v6, :cond_9

    .line 1974
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1976
    const-string v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1980
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    const-wide/16 v8, 0x28

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1982
    .end local v2    # "im":Landroid/hardware/input/InputManager;
    :cond_a
    if-nez v0, :cond_b

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1983
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    goto/16 :goto_3

    .line 1984
    :cond_b
    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1985
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x8

    const-wide/16 v8, 0x1e

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1992
    .end local v0    # "action":I
    :cond_c
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 1993
    const/4 v6, 0x1

    if-ne p1, v6, :cond_d

    .line 1994
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1996
    .restart local v0    # "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_d

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_d

    .line 1997
    const-string v6, "WritingBuddyImpl"

    const-string v7, "Reset state"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    .line 1999
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 2002
    .end local v0    # "action":I
    :cond_d
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    .line 2003
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    .line 2006
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    .line 2009
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetPenPointerIcon()V

    .line 2012
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_e

    .line 2013
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 2017
    :cond_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 2018
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_10

    .line 2019
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 2025
    :goto_7
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_f

    .line 2026
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 2027
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    .line 2031
    :cond_f
    const-string v6, "OPENED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 2034
    const-string v6, "OPENED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;)V

    .line 2037
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x5

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 2021
    :cond_10
    const-string v6, "WritingBuddyImpl"

    const-string v7, "Can not find IMM"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2043
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_6
.end method

.method private scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 2052
    invoke-static {p3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->isDuplicated(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2053
    const/4 v4, 0x0

    .line 2153
    :goto_0
    return v4

    .line 2056
    :cond_0
    const/4 v3, 0x1

    .line 2059
    .local v3, "showLog":Z
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 2060
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    .line 2061
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 2063
    const-string v5, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const/4 v4, 0x0

    goto :goto_0

    .line 2063
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2070
    :cond_2
    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-nez v4, :cond_c

    .line 2071
    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    .line 2072
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2073
    .local v0, "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_6

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2075
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2076
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2077
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 2107
    :cond_3
    :goto_2
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 2108
    const/4 v3, 0x0

    .line 2149
    .end local v0    # "action":I
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 2150
    const-string v5, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2079
    .restart local v0    # "action":I
    :cond_6
    const/16 v4, 0xa

    if-ne v0, v4, :cond_a

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2080
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 2081
    .local v1, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(FF)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2082
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2084
    const-string v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2086
    :cond_7
    if-eqz v1, :cond_8

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x140

    invoke-virtual {v1, v4, v5, v6}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v4

    if-nez v4, :cond_8

    .line 2087
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2089
    const-string v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2091
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v4}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2093
    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardTemplate:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_9

    .line 2094
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2096
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/writingbuddy/PopupCue;->isPointInPopup(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2097
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2101
    .end local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_a
    if-nez v0, :cond_b

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2102
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    goto/16 :goto_2

    .line 2103
    :cond_b
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2104
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 2111
    .end local v0    # "action":I
    :cond_c
    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 2112
    const/4 v4, 0x1

    if-ne p1, v4, :cond_d

    .line 2113
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2115
    .restart local v0    # "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    .line 2116
    const-string v4, "WritingBuddyImpl"

    const-string v5, "Reset state"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    .line 2118
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    goto/16 :goto_3

    .line 2120
    .end local v0    # "action":I
    :cond_d
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 2121
    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 2124
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    .line 2127
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 2128
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_e

    .line 2129
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 2135
    :goto_5
    const-string v4, "OPENED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 2138
    const-string v4, "OPENED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;)V

    .line 2141
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetPenPointerIcon()V

    .line 2144
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 2131
    :cond_e
    const-string v4, "WritingBuddyImpl"

    const-string v5, "Can not find IMM"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2150
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_4
.end method

.method private sendActionButtonResult(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    const/4 v3, 0x2

    .line 1222
    iget-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsReceiveActionButtonEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    if-eqz v1, :cond_0

    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, "actionString":Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1226
    const-string v0, "ACTION_SEND"

    .line 1237
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;->onPrivateCommand(ILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    .line 1239
    .end local v0    # "actionString":Ljava/lang/String;
    :cond_0
    return-void

    .line 1227
    .restart local v0    # "actionString":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1228
    const-string v0, "ACTION_SEARCH"

    goto :goto_0

    .line 1229
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1230
    const-string v0, "ACTION_GO"

    goto :goto_0

    .line 1231
    :cond_3
    const/16 v1, 0xf

    if-ne p1, v1, :cond_4

    .line 1232
    const-string v0, "ACTION_IMAGE"

    goto :goto_0

    .line 1234
    :cond_4
    const-string v0, "ACTION_DONE"

    goto :goto_0
.end method

.method private sendHelpModeResult(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 1204
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1207
    :cond_0
    return-void
.end method

.method private sendMMSDataDelete(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1213
    :cond_0
    return-void
.end method

.method private sendWatchActionResult(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/CharSequence;

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWatchActionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;->onPrivateCommand(ILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    .line 1219
    :cond_0
    return-void
.end method

.method private setupInRuntime()Z
    .locals 4

    .prologue
    .line 524
    const/4 v1, 0x1

    .line 526
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-nez v2, :cond_0

    .line 527
    const-string/jumbo v2, "writingbuddymanagerservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 528
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 531
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-nez v2, :cond_1

    .line 532
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Failed to get WritingBuddyService"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x0

    .line 536
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    .line 538
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 540
    return v1
.end method

.method private showWritingBuddy()Z
    .locals 27

    .prologue
    .line 1374
    const/16 v26, 0x0

    .line 1376
    .local v26, "result":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1377
    const/4 v1, 0x0

    .line 1541
    :goto_0
    return v1

    .line 1380
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 1381
    .local v5, "wndToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 1383
    .local v4, "appToken":Landroid/os/IBinder;
    const/4 v6, 0x0

    .line 1384
    .local v6, "wndRect":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 1385
    .local v7, "scrRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 1387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 1393
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 1394
    new-instance v9, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v9}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1395
    .local v9, "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v10, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v10}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1397
    .local v10, "ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v25, v0

    check-cast v25, Landroid/widget/EditText;

    .line 1399
    .local v25, "parent":Landroid/widget/EditText;
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v1, v9}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    .line 1400
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getWBTextBuffer(Z)Ljava/lang/CharSequence;

    .line 1404
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 1407
    .end local v25    # "parent":Landroid/widget/EditText;
    :cond_2
    iget-object v1, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1411
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v10, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 1413
    iget-object v1, v10, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "hasFocus"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1417
    :cond_4
    iget v1, v10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v1, 0xff0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_d

    const-string v1, "com.sec.android.app.sbrowser"

    iget-object v2, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1419
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    .line 1420
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    .line 1426
    :goto_4
    const/4 v8, 0x0

    .line 1427
    .local v8, "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v8

    .line 1441
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    shl-int/lit8 v1, v1, 0x14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1442
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1444
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getModeFlag()I

    move-result v11

    .line 1445
    .local v11, "flag":I
    and-int/lit8 v1, v11, 0x8

    if-eqz v1, :cond_5

    .line 1447
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    .line 1451
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

    invoke-interface {v3}, Lcom/samsung/android/writingbuddy/IWritingBuddyClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    .line 1453
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWritingBuddy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    .line 1457
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report current WB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->registerPositionChangeListener()V

    .line 1463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_6

    .line 1464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hideCursorControllers()V

    .line 1467
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 1468
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    const/16 v26, 0x1

    .line 1539
    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    .end local v9    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v10    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v11    # "flag":I
    :cond_7
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    const-wide/16 v12, 0x3e8

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move/from16 v1, v26

    .line 1541
    goto/16 :goto_0

    .line 1386
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 1387
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_2

    .line 1388
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 1390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    goto/16 :goto_3

    .line 1389
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_7

    .line 1390
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_8

    .line 1422
    .restart local v9    # "et":Landroid/view/inputmethod/ExtractedText;
    .restart local v10    # "ei":Landroid/view/inputmethod/EditorInfo;
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    goto/16 :goto_4

    .line 1430
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    :cond_e
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1431
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v8, Landroid/graphics/Rect;->right:I

    .line 1432
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .line 1471
    .restart local v11    # "flag":I
    :catch_0
    move-exception v24

    .line 1472
    .local v24, "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start WritingBuddy, RemoteException happened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 1475
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 1477
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 1479
    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    .end local v9    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v10    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v11    # "flag":I
    .end local v24    # "e":Landroid/os/RemoteException;
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1480
    new-instance v9, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v9}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1482
    .restart local v9    # "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v10, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v10}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1483
    .restart local v10    # "ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditorType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 1484
    const/4 v1, 0x2

    iput v1, v10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1488
    :goto_9
    const/4 v1, 0x6

    iput v1, v10, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    if-eqz v1, :cond_10

    .line 1493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    iget-object v2, v9, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;->onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1497
    :cond_10
    const/4 v8, 0x0

    .line 1498
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v8

    .line 1506
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    shl-int/lit8 v1, v1, 0x14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1507
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1509
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getModeFlag()I

    move-result v11

    .line 1512
    .restart local v11    # "flag":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->hideCursorControllers(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1513
    const-string v1, "WritingBuddyImpl"

    const-string v2, "hideCursorControllers "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

    invoke-interface {v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyClient;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardTemplate:I

    move/from16 v20, v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    invoke-interface/range {v12 .. v23}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->showTemplate(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    .line 1519
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWritingBuddy. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    .line 1523
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report current WB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1527
    const/16 v26, 0x1

    goto/16 :goto_6

    .line 1486
    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    .end local v11    # "flag":I
    :cond_12
    const/4 v1, 0x1

    iput v1, v10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_9

    .line 1501
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    :cond_13
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1502
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v8, Landroid/graphics/Rect;->right:I

    .line 1503
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 1528
    .restart local v11    # "flag":I
    :catch_1
    move-exception v24

    .line 1529
    .restart local v24    # "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start WritingBuddy, RemoteException happened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 1532
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 1534
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private showWritingBuddyCue()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1318
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1319
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 1322
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    .line 1323
    .local v1, "isShown":Z
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1324
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v1

    .line 1328
    :cond_1
    if-nez v1, :cond_2

    .line 1329
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Caencel to show writingbuddy cue."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :goto_0
    return-void

    .line 1334
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->createPopupCue()V

    .line 1336
    const/4 v0, 0x0

    .line 1337
    .local v0, "cueType":I
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v2, v3, :cond_4

    .line 1338
    iget-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    if-eqz v2, :cond_3

    .line 1339
    const/4 v0, 0x2

    .line 1348
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v2, v0}, Lcom/samsung/android/writingbuddy/PopupCue;->show(I)V

    .line 1351
    const-string v2, "HOVERED"

    invoke-direct {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1341
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1344
    :cond_4
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private unregisterPositionChangeListener()V
    .locals 3

    .prologue
    .line 1863
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1865
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1866
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWBPositionListenerEnalbed(Z)V

    .line 1877
    :cond_0
    :goto_0
    return-void

    .line 1870
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1871
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1872
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1873
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowAutoCompletePopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1734
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-ne v1, v0, :cond_0

    .line 1735
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 1738
    :cond_0
    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 880
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Finish WritingBuddy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 884
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Cancel finish."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_0
    return-void

    .line 887
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    goto :goto_0
.end method

.method public finish(Z)V
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 896
    const-string v0, "WritingBuddyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorType()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditorType:I

    return v0
.end method

.method public getExpectedTargetWBRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getTargetWBRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getImageModePenDrawing()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    return v0
.end method

.method public getTargetWBRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1811
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1815
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p2, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleState(IILandroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public handleWindowFocusChanged(Z)Z
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 1772
    if-nez p1, :cond_3

    .line 1774
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v0, v2}, Lcom/samsung/android/writingbuddy/PopupCue;->dismiss(Z)V

    .line 1776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    .line 1780
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1781
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1782
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 1786
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->isWBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1787
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getWindowMode()I

    move-result v1

    and-int/2addr v1, v3

    if-eq v0, v1, :cond_2

    .line 1788
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Window mode changed."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-virtual {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    .line 1799
    :cond_2
    :goto_0
    return v2

    .line 1794
    :cond_3
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->isWBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1795
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Update."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public notifyPositionChanged(I)V
    .locals 8
    .param p1, "what"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 707
    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPositionChanged code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-eqz v3, :cond_0

    .line 710
    const/4 v2, 0x0

    .line 711
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 712
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v3, v6, :cond_3

    .line 713
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 714
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 721
    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 736
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_0
    :goto_3
    return-void

    .line 713
    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 714
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 716
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 717
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    .line 716
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_4

    .line 717
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_5

    .line 726
    :cond_6
    sget-boolean v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update Position. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v3, :cond_0

    .line 730
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyImpl"

    const-string v4, "Can not start WritingBuddy, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 955
    const/4 v0, 0x0

    return-object v0
.end method

.method public onImageInserted(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 964
    if-nez p1, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;->onImageReceived(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onResultReceived(Landroid/os/Bundle;I)V
    .locals 13
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "receivedClientID"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1042
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " receivedClientID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " current ClientID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    if-nez p1, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    const-string/jumbo v6, "service_cb_client_changed"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    .line 1051
    const-string v6, "WritingBuddyImpl"

    const-string/jumbo v9, "onResultReceived SERVICE_CB_CLIENT_CHANGED "

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_4

    .line 1055
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    if-eqz v6, :cond_2

    .line 1056
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 1057
    iput-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    .line 1060
    :cond_2
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-ne v6, v7, :cond_3

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 1062
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->applyWBTextBuffer(Z)Z

    .line 1066
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setWBTextBuffer(Ljava/lang/CharSequence;)V

    .line 1067
    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 1071
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1072
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    .line 1073
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Report current WB : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->unregisterPositionChangeListener()V

    .line 1077
    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    .line 1081
    :cond_6
    const-string/jumbo v6, "service_cb_inflate_done"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    .line 1082
    const-string v6, "WritingBuddyImpl"

    const-string/jumbo v9, "onResultReceived SERVICE_CB_INFLATE_DONE "

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-direct {p0, v12, v7, v11, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleState(IILandroid/view/MotionEvent;I)Z

    .line 1087
    :cond_7
    const-string/jumbo v6, "service_cb_writing_done"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1088
    .local v5, "resultValue":I
    if-lez v5, :cond_a

    .line 1089
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_WRITING_DONE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iput-boolean v7, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 1093
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_a

    .line 1095
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_11

    move v4, v7

    .line 1096
    .local v4, "isShown":Z
    :goto_1
    if-eqz v4, :cond_8

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_8

    .line 1097
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v4

    .line 1100
    :cond_8
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    if-lez v6, :cond_9

    if-eqz v4, :cond_9

    .line 1101
    if-ne v5, v7, :cond_12

    move v3, v7

    .line 1102
    .local v3, "initBuffer":Z
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->applyWBTextBuffer(Z)Z

    .line 1106
    .end local v3    # "initBuffer":Z
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setWBTextBuffer(Ljava/lang/CharSequence;)V

    .line 1107
    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 1112
    .end local v4    # "isShown":Z
    :cond_a
    const-string/jumbo v6, "service_cb_perform_editor_action"

    const/4 v9, -0x1

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1113
    .local v2, "editorAction":I
    if-ltz v2, :cond_c

    .line 1114
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_b

    .line 1115
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_PERFORM_EDITOR_ACTION "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iput-boolean v7, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    .line 1117
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->performWBEditorAction(I)V

    .line 1118
    iput-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    .line 1122
    :cond_b
    invoke-direct {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendActionButtonResult(I)V

    .line 1126
    :cond_c
    const-string/jumbo v6, "service_cb_closed"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_d

    .line 1127
    const-string v6, "WritingBuddyImpl"

    const-string/jumbo v9, "onResultReceived SERVICE_CB_CLOSED "

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-direct {p0, v12, v12, v11, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleState(IILandroid/view/MotionEvent;I)Z

    .line 1131
    const-string v6, "CLOSED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 1134
    const-string v6, "CLOSED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;)V

    .line 1138
    :cond_d
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMathWritingEnabled:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v6, :cond_e

    .line 1139
    const-string/jumbo v6, "service_cb_math_writing_result"

    invoke-virtual {p1, v6, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1140
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_e

    .line 1141
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v6, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1142
    sget-boolean v6, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_MATH_WRITING_RESULT : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_e
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v6, :cond_f

    .line 1148
    const-string/jumbo v6, "service_cb_help_mode_result"

    invoke-virtual {p1, v6, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1149
    .restart local v1    # "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_f

    .line 1150
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v6, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1151
    sget-boolean v6, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v6, :cond_f

    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_HELP_MODE_RESULT : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_f
    const-string/jumbo v6, "service_cb_mms_data_delete"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_10

    .line 1156
    const-string v6, "WritingBuddyImpl"

    const-string/jumbo v9, "onResultReceived SERVICE_CB_MMS_DATA_DELETE "

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const-string v6, "MMS_DATA_DELETE"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendMMSDataDelete(Ljava/lang/CharSequence;)V

    .line 1161
    :cond_10
    const-string/jumbo v6, "service_cb_drawing_mode_set"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1162
    .local v0, "ImageMode":I
    if-lez v0, :cond_0

    .line 1163
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_DRAWING_MODE_SET : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    if-ne v0, v7, :cond_13

    :goto_3
    iput-boolean v7, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    .line 1166
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsReceiveActionButtonEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    if-eqz v6, :cond_0

    .line 1167
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    if-eqz v6, :cond_0

    .line 1168
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    const-string v7, "DRAWING_MODE"

    invoke-interface {v6, v12, v7, v11}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;->onPrivateCommand(ILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .end local v0    # "ImageMode":I
    .end local v2    # "editorAction":I
    :cond_11
    move v4, v8

    .line 1095
    goto/16 :goto_1

    .restart local v4    # "isShown":Z
    :cond_12
    move v3, v8

    .line 1101
    goto/16 :goto_2

    .end local v4    # "isShown":Z
    .restart local v0    # "ImageMode":I
    .restart local v2    # "editorAction":I
    :cond_13
    move v7, v8

    .line 1164
    goto :goto_3
.end method

.method public onTextDeleted(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1022
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTextDeleted() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 1025
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getWBTextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1026
    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v3, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTextDeleted() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_1
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1029
    check-cast v0, Landroid/text/Editable;

    .line 1030
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1033
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_2
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 1035
    .end local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_3
    return-void

    .line 1026
    .restart local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTextInserted(ILjava/lang/CharSequence;I)V
    .locals 6
    .param p1, "where"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "nextCursor"    # I

    .prologue
    const/4 v3, 0x0

    .line 981
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v4, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextInserted() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 985
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 986
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v2, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 1012
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    .line 981
    goto :goto_0

    .line 992
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 993
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->getWBTextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 994
    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextInserted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_5
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 997
    check-cast v0, Landroid/text/Editable;

    .line 998
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 999
    invoke-static {v0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1003
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1004
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 1008
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1009
    const-string v2, "TEXT_INSERTED"

    invoke-direct {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onUpdateDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1179
    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUpdateDialog code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-eqz v3, :cond_1

    .line 1181
    const/4 v2, 0x0

    .line 1182
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1183
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v3, v6, :cond_4

    .line 1184
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1185
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 1191
    :goto_2
    sget-boolean v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update onUpdateDialog. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v3, :cond_1

    .line 1195
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_1
    :goto_3
    return-void

    .line 1184
    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 1185
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 1187
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1188
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    .line 1187
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_4

    .line 1188
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_5

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyImpl"

    const-string v4, "Can not start WritingBuddy, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    .line 662
    return-void
.end method

.method public setBoardTemplate(I)V
    .locals 0
    .param p1, "template"    # I

    .prologue
    .line 699
    iput p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardTemplate:I

    .line 700
    return-void
.end method

.method public setBoardType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 572
    iput p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    .line 573
    return-void
.end method

.method public setEditorType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 672
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the Drawable, String, subDescription and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_0
    iput p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditorType:I

    .line 676
    return-void
.end method

.method public setImageWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 624
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    .line 625
    return-void
.end method

.method public setMathWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 635
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMathWritingEnabled:Z

    .line 636
    return-void
.end method

.method public setOnImageWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    .prologue
    .line 755
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setImageWritingEnabled(Z)V

    .line 757
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    .line 758
    return-void

    .line 755
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnPrivateCommandListner(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    .line 768
    return-void
.end method

.method public setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    .line 778
    return-void
.end method

.method public setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    .line 746
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 551
    if-nez p1, :cond_0

    .line 552
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Reset parent View"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    .line 555
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    .line 556
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    .line 557
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 558
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public setPrivateCommnad(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 645
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    .line 647
    const-string v0, "HELP_MODE"

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    const-string v0, "WATCH_ACTION"

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWatchActionEnabled:Z

    goto :goto_0

    .line 651
    :cond_2
    const-string v0, "RECEIVE_ACTION_BUTTON"

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsReceiveActionButtonEnabled:Z

    goto :goto_0
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x0

    return v0
.end method

.method public showPopup()V
    .locals 4

    .prologue
    .line 854
    const-string v2, "WritingBuddyImpl"

    const-string/jumbo v3, "showPopup"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v1, 0x0

    .line 858
    .local v1, "style":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v2, :cond_0

    .line 859
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->showPopup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Can not start showPopup, RemoteException happened"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
