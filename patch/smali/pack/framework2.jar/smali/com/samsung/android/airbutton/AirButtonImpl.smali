.class public final Lcom/samsung/android/airbutton/AirButtonImpl;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final ACTION_MULTI_WINDOW:Ljava/lang/String; = "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

.field private static final AIR_VIEW_MODE:Ljava/lang/String; = "air_view_mode"

.field private static final BROADCAST_ALARM:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

.field private static final BROADCAST_SCOVER:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final DATA_TYPE_COMBINATION:I = 0x3

.field public static final DATA_TYPE_DRAWABLE:I = 0x2

.field public static final DATA_TYPE_STRING:I = 0x1

.field public static final DEFAULT_CLIPED_TEXT_ADAPTER:I = 0x1

.field public static final DEFAULT_FREEQUENT_CONTACT_ADAPTER:I = 0x2

.field public static final DEFAULT_RECENT_MEDIA_ADAPTER:I = 0x3

.field public static final DEFAULT_RECENT_SNOTE:I = 0x4

.field public static final DIRECTION_AUTO:I = -0x1

.field public static final DIRECTION_LEFT:I = 0x3

.field public static final DIRECTION_LOWER:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x4

.field public static final DIRECTION_UPPER:I = 0x1

.field public static final GRAVITY_AUTO:I = -0x1

.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_HOVER_POINT:I = 0x5

.field public static final GRAVITY_LEFT:I = 0x3

.field public static final GRAVITY_RIGHT:I = 0x4

.field public static final GRAVITY_TOP:I = 0x1

.field private static final IS_KEYPAD_VISIBLE:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field public static final MENU_ITEM_HEIGHT:I = 0x48

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field public static final STATE_DISMISS:I = 0x3

.field public static final STATE_HIDE:I = 0x2

.field public static final STATE_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AirButtonImpl"

.field public static final UI_TYPE_GLOBAL:I = 0x3

.field public static final UI_TYPE_LIST:I = 0x2

.field public static final UI_TYPE_MENU:I = 0x1

.field public static final UI_TYPE_QUICK_COMMAND:I = 0x4

.field private static final URI_AIR_BUTTON_ONOFF:Ljava/lang/String; = "air_button_onoff"

.field private static final URI_AIR_VIEW_ONOFF:Ljava/lang/String; = "air_view_master_onoff"

.field private static mAirButtonAnimationViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field private mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

.field private mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

.field private mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

.field private mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

.field private mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDataType:I

.field protected mDensity:F

.field private mHandler:Landroid/os/Handler;

.field private mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

.field private mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mHoverPressedPointX:F

.field protected mHoverPressedPointY:F

.field private mIsAirButtonAttached:Z

.field private mIsEditTextParentView:Z

.field private mIsEnabled:Z

.field private mIsHoverAnimationViewAttached:Z

.field private mIsHoverEnter:Z

.field private mIsHoverPointerEnabled:Z

.field private mIsSpenDetached:Z

.field private mIsToastShown:Z

.field private mIsWidgetDismissed:Z

.field private mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

.field private mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

.field private mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

.field private mKeypadHideRunnable:Ljava/lang/Runnable;

.field private mMultiWindowIntentFilter:Landroid/content/IntentFilter;

.field private mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

.field private mParentView:Landroid/view/View;

.field protected mParentViewHeight:I

.field private mParentViewHoverListener:Landroid/view/View$OnHoverListener;

.field protected mParentViewWidth:I

.field protected mParentViewX:I

.field protected mParentViewY:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRootViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

.field private mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

.field protected mStatusbarHeight:I

.field private mUIType:I

.field private mWM:Landroid/view/WindowManager;

.field protected mWindowHeight:I

.field protected mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "UIType"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v4, 0x4

    .line 255
    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 257
    if-eq p2, v4, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p4, "UIType"    # I
    .param p5, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 147
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mRootViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 148
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 149
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    .line 152
    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    .line 153
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 154
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 155
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 156
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 157
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 158
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 159
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    .line 160
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 161
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 162
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 170
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    .line 172
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    .line 176
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    .line 178
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 180
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    .line 182
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    .line 184
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    .line 191
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    .line 193
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    .line 195
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 201
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    .line 202
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 203
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 204
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 205
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    .line 206
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 207
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 208
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    .line 209
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 217
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;

    .line 218
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    .line 227
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    .line 229
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    .line 236
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    .line 618
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$2;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .line 644
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$3;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHoverListener:Landroid/view/View$OnHoverListener;

    .line 1370
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$5;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;

    .line 1508
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$7;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1518
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$8;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 270
    if-nez p2, :cond_0

    .line 271
    const-string v0, "AirButtonImpl"

    const-string v1, "Parent view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    if-nez p3, :cond_1

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 278
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    .line 281
    :cond_2
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-direct {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 282
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    new-instance v1, Lcom/samsung/android/airbutton/AirButtonImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$1;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 291
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 294
    :cond_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->setParentView(Landroid/view/View;)V

    .line 295
    invoke-virtual {p0, p3}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V

    .line 296
    iput p4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    .line 297
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initSideButtonState()V

    .line 299
    :cond_4
    iput-boolean p5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 301
    invoke-direct {p0, p5}, Lcom/samsung/android/airbutton/AirButtonImpl;->init(Z)V

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createQuickCommandOnItemSelector()V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 250
    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 266
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/airbutton/AirButtonImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/airbutton/AirButtonImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private broadcastAirButtonShowState(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    .line 740
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 741
    .local v0, "airButtonIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.AIR_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v1, "isShow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastAirButtonShowState() isShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 747
    return-void
.end method

.method private callStateListener(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 997
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    if-nez v1, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    if-ne p1, v2, :cond_3

    .line 1001
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onShow()V

    .line 1007
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    instance-of v1, v1, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;

    if-eqz v1, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    check-cast v0, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;

    .line 1011
    .local v0, "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    if-ne p1, v2, :cond_5

    .line 1012
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onShow(Landroid/view/View;)V

    goto :goto_0

    .line 1002
    .end local v0    # "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    :cond_3
    if-ne p1, v3, :cond_4

    .line 1003
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onHide()V

    goto :goto_1

    .line 1004
    :cond_4
    if-ne p1, v4, :cond_2

    .line 1005
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onDismiss()V

    goto :goto_1

    .line 1013
    .restart local v0    # "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    :cond_5
    if-ne p1, v3, :cond_6

    .line 1014
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onHide(Landroid/view/View;)V

    goto :goto_0

    .line 1015
    :cond_6
    if-ne p1, v4, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onDismiss(Landroid/view/View;)V

    goto :goto_0
.end method

.method private createAndAttachHoverAnimationView()V
    .locals 4

    .prologue
    .line 456
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 459
    :cond_0
    monitor-enter p0

    .line 460
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->removeAllHoverAnimationViews()V

    .line 462
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v1, :cond_2

    .line 463
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 465
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-nez v1, :cond_3

    .line 466
    new-instance v1, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;-><init>(Landroid/view/View;F)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    .line 468
    :cond_3
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initHoverAnimationViewLayoutParams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 480
    const-string v1, "AirButtonImpl"

    const-string v2, "Hover animation view attached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    monitor-exit p0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "AirButtonImpl"

    const-string v2, "Your parent view token is wrong or removed. Please check it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 476
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createAndInitAirButtonView(Landroid/view/View;)Z
    .locals 4
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    .line 485
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->initWidgetLocationBasedOnView(Landroid/view/View;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 489
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x3

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    .line 504
    :cond_0
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Lcom/samsung/android/airbutton/Attributes;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->getAirButtonView()Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 507
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-nez v0, :cond_1

    .line 508
    const-string v0, "AirButtonImpl"

    const-string v1, "Cannot create AirButton view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, 0x0

    .line 517
    :goto_0
    return v0

    .line 512
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndRegisterReceivers()V

    .line 514
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V

    .line 517
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createAndRegisterReceivers()V
    .locals 2

    .prologue
    .line 1093
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createConfigurationChangedReceiver()V

    .line 1094
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->registerConfigurationChangeReceiver()V

    .line 1096
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1097
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createKeypadHideReceiver()V

    .line 1098
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->registerKeypadHideReceiver()V

    .line 1102
    :cond_0
    return-void
.end method

.method private createConfigurationChangedReceiver()V
    .locals 3

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1419
    new-instance v1, Lcom/samsung/android/airbutton/AirButtonImpl$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$6;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1446
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 1447
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    .line 1448
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1449
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1450
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1451
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.cover.OPEN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1453
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    .line 1454
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1455
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1458
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1460
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1461
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_3

    .line 1462
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1466
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_4

    .line 1467
    const-string v1, "AirButtonImpl"

    const-string/jumbo v2, "registerListener mCoverStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 1471
    .end local v0    # "tmgr":Landroid/telephony/TelephonyManager;
    :cond_4
    return-void
.end method

.method private createKeypadHideReceiver()V
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1351
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$4;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1365
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    .line 1366
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1368
    :cond_1
    return-void
.end method

.method private createMultiWindowReceiver()V
    .locals 2

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1536
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$9;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1548
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    .line 1549
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1551
    :cond_1
    return-void
.end method

.method private createQuickCommandOnItemSelector()V
    .locals 2

    .prologue
    .line 1579
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1667
    :goto_0
    return-void

    .line 1582
    :cond_0
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$10;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private getAirButtonView()Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    .locals 5

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 531
    :goto_0
    return-object v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 525
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 527
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    if-eqz v0, :cond_3

    .line 529
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 531
    :cond_3
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonListView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0
.end method

.method private init(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initScreenSize()V

    .line 325
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->initWithAdapter(Z)V

    .line 326
    return-void
.end method

.method private initAirButtonViewLayoutParams()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 432
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 433
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 434
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v4, :cond_4

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x831

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 436
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 440
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 441
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 442
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 445
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initScreenSize()V

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setStatusBarHeight()V

    .line 447
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v4, :cond_5

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 451
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 452
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 453
    return-void

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 449
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method private initDataType()V
    .locals 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v1, :cond_0

    .line 383
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v0

    .line 371
    .local v0, "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 372
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    .line 381
    .end local v0    # "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initParentViewData()V

    .line 382
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAttributes(Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 373
    .restart local v0    # "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 374
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    goto :goto_1

    .line 375
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 376
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    goto :goto_1

    .line 378
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AirButtonItem is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initHoverAnimationViewLayoutParams()V
    .locals 6

    .prologue
    .line 400
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 425
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 404
    .local v0, "hoverAnimationViewSize":I
    int-to-float v3, v0

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 405
    .local v1, "pixelHoverAnimationViewSize":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 406
    .local v2, "viewLocation":[I
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 410
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setStatusBarHeight()V

    .line 412
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 413
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 414
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x3eb

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 415
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 416
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 417
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 418
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 419
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 420
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 421
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 423
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    aget v4, v2, v4

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 424
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    aget v4, v2, v4

    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    .line 405
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initParentViewData()V
    .locals 2

    .prologue
    .line 386
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 397
    :goto_0
    return-void

    .line 389
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 390
    .local v0, "viewLocation":[I
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 391
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    .line 392
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 393
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    .line 394
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    goto :goto_0

    .line 389
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initScreenSize()V
    .locals 2

    .prologue
    .line 341
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 342
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 344
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    .line 345
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 346
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    .line 347
    return-void
.end method

.method private initWithAdapter(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAttributes(Lcom/samsung/android/airbutton/Attributes;)V

    .line 331
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_0

    .line 334
    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    goto :goto_0
.end method

.method private isVzwSetupRunning()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 751
    const-string v1, "VZW"

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    const-string/jumbo v1, "persist.sys.vzw_setup_running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 753
    .local v0, "isVzwSetupRunning":Z
    const-string v1, "AirButtonImpl"

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

    .line 756
    .end local v0    # "isVzwSetupRunning":Z
    :cond_0
    return v0
.end method

.method private registerConfigurationChangeReceiver()V
    .locals 3

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1487
    :goto_0
    return-void

    .line 1478
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1483
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1484
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1485
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1479
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private registerKeypadHideReceiver()V
    .locals 3

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1392
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1397
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1398
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1393
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private registerMultiWindowReceiver()V
    .locals 3

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1558
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1563
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1564
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1559
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private removeAllHoverAnimationViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1054
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1067
    :cond_0
    return-void

    .line 1057
    :cond_1
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remained animation view size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1060
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :goto_1
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setStatusBarHeight()V
    .locals 3

    .prologue
    .line 350
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    .line 352
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 354
    .local v0, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 361
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    iput v2, v1, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 362
    return-void

    .line 357
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setWidgetDirection()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1197
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 1201
    .local v1, "upperSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 1203
    .local v0, "lowerSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v5, :cond_0

    .line 1204
    if-le v1, v0, :cond_2

    .line 1205
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0

    .line 1207
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v5, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0
.end method

.method private setWidgetPosition()V
    .locals 5

    .prologue
    .line 1184
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 1188
    .local v1, "upperSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 1190
    .local v0, "lowerSpace":I
    if-ge v1, v0, :cond_2

    .line 1191
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x2

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0

    .line 1193
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0
.end method

.method private showEmptyText()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 311
    .local v0, "emptyText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    if-nez v1, :cond_1

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 313
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 317
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    goto :goto_0
.end method

.method private unregisterConfigurationChangeReceiver()V
    .locals 3

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1494
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1500
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1501
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 1502
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 1495
    .end local v0    # "tmgr":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private unregisterKeypadHideReceiver()V
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1407
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1408
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterMultiWindowReceiver()V
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1576
    :goto_0
    return-void

    .line 1573
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1574
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 1105
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1106
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterConfigurationChangeReceiver()V

    .line 1111
    :goto_0
    return-void

    .line 1108
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterKeypadHideReceiver()V

    goto :goto_0
.end method


# virtual methods
.method protected adjustMenuItemXPosition()V
    .locals 7

    .prologue
    .line 594
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v3, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v4

    mul-int v2, v3, v4

    .line 598
    .local v2, "totalWidgetWidth":I
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 600
    .local v0, "outOfXBoundary":I
    if-ltz v0, :cond_0

    .line 603
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int v1, v0, v3

    .line 604
    .local v1, "outOfXBoundaryItemCnt":I
    add-int/lit8 v1, v1, 0x1

    .line 606
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 607
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 609
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v3, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 610
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 959
    :goto_0
    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 918
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    .line 920
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 921
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 922
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->disable()V

    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_0

    .line 926
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onDismiss(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unlinkWithParentView()V

    .line 932
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 933
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 934
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 935
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 936
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 937
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 938
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 940
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 942
    const-string v1, "AirButtonImpl"

    const-string v2, "dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method public getAdapter()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    return-object v0
.end method

.method public getAttributes()Lcom/samsung/android/airbutton/Attributes;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_0

    .line 1214
    new-instance v0, Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0}, Lcom/samsung/android/airbutton/Attributes;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 884
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-nez v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 887
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterReceivers()V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    .line 891
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "unregisterListener mCoverStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 896
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-eqz v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-eqz v0, :cond_3

    .line 902
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V

    .line 903
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 906
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 908
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_4

    .line 909
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 910
    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 912
    invoke-direct {p0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->broadcastAirButtonShowState(Z)V

    .line 914
    const-string v0, "AirButtonImpl"

    const-string v1, "hided"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public hideHoverPointer()V
    .locals 2

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-nez v0, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->hideAnimationView()V

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 992
    const-string v0, "AirButtonImpl"

    const-string v1, "Hover animation view detached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 987
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public initSideButtonState()V
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 1117
    :cond_0
    return-void
.end method

.method protected initWidgetLocationBasedOnView(Landroid/view/View;)V
    .locals 8
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 536
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 538
    if-nez p1, :cond_2

    .line 539
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v4, :cond_1

    .line 540
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    float-to-int v4, v4

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 541
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    float-to-int v4, v4

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 590
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setWidgetPosition()V

    .line 548
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setWidgetDirection()V

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "widgetLocationX":I
    const/4 v1, 0x0

    .line 553
    .local v1, "widgetLocationY":I
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_3

    .line 554
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 562
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 564
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_6

    .line 565
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 573
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 574
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 578
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 579
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 581
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_1

    .line 582
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x42900000    # 72.0f

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 583
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v6, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0

    .line 555
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v3, :cond_4

    .line 556
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    goto :goto_1

    .line 557
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v4, :cond_5

    .line 558
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    add-int v0, v2, v3

    goto :goto_1

    .line 560
    :cond_5
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    goto :goto_1

    .line 566
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v6, :cond_7

    .line 567
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    goto :goto_2

    .line 568
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v7, :cond_8

    .line 569
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    add-int v1, v2, v3

    goto :goto_2

    .line 571
    :cond_8
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    goto :goto_2

    .line 585
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v7, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto/16 :goto_0
.end method

.method public isAirButtonSettingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1022
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1026
    .local v0, "airButtonOnOff":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBounceEffectEnabled()Z
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    return v0
.end method

.method public isCoverViewOpened()Z
    .locals 5

    .prologue
    .line 1041
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 1042
    .local v2, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 1043
    .local v1, "isCoverOpen":Z
    if-eqz v2, :cond_0

    .line 1045
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1050
    :cond_0
    :goto_0
    return v1

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AirButtonImpl"

    const-string/jumbo v4, "windowManager.isCoverOpen() failed :"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    return v0
.end method

.method public isHoverPointerEnabled()Z
    .locals 1

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    return v0
.end method

.method public isHoverPointerShowing()Z
    .locals 1

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    return v0
.end method

.method public isPenWindowMode()Z
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    return v0
.end method

.method public isSpenDetachSettingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1032
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return v1

    .line 1035
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_detachment_option"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1036
    .local v0, "penDetachOption":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public linkWithParentView()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 1337
    :cond_0
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 653
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v2

    .line 656
    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_2

    .line 657
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    :cond_2
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_3

    .line 663
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHover(Landroid/view/MotionEvent;)Z

    .line 667
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 672
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHoverForGA(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 669
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverEnter(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 675
    :pswitch_3
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 676
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverExit(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onHoverButtonSecondary(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v0, :cond_0

    .line 733
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "onHoverButtonSecondary mIsAirButtonAttached is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHoverEnter(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 694
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHoverEnter(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 701
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showHoverPointer()V

    goto :goto_0
.end method

.method public onHoverExit(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHoverExit(Landroid/view/View;)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 729
    :cond_1
    :goto_0
    return-void

    .line 727
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 728
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    goto :goto_0
.end method

.method public onHoverMove(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 709
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 713
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showHoverPointer()V

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 717
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->setAnimationViewPosition(FF)V

    goto :goto_0
.end method

.method public onTouchDownForGA(I)V
    .locals 1
    .param p1, "buttonState"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onTouchDownForGA(I)V

    .line 686
    return-void
.end method

.method public onTouchUpForGA(I)V
    .locals 1
    .param p1, "buttonState"    # I

    .prologue
    .line 690
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onTouchUpForGA(I)V

    .line 691
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 1315
    if-nez p1, :cond_1

    .line 1316
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "set adapter to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1321
    const-string v0, "AirButtonImpl"

    const-string v1, "adapter count is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAttributes(Lcom/samsung/android/airbutton/Attributes;)V
    .locals 6
    .param p1, "attribute"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x3

    .line 1139
    if-nez p1, :cond_0

    .line 1140
    new-instance p1, Lcom/samsung/android/airbutton/Attributes;

    .end local p1    # "attribute":Lcom/samsung/android/airbutton/Attributes;
    invoke-direct {p1}, Lcom/samsung/android/airbutton/Attributes;-><init>()V

    .line 1142
    .restart local p1    # "attribute":Lcom/samsung/android/airbutton/Attributes;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_2

    .line 1143
    invoke-virtual {p1}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1147
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    .line 1148
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    .line 1151
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    .line 1152
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    .line 1153
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    .line 1154
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->density:F

    .line 1155
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    .line 1156
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    .line 1158
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v5, :cond_5

    .line 1159
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v5, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1161
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    .line 1180
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/Attributes;->calculatePixelValue()V

    .line 1181
    return-void

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/Attributes;->copyFrom(Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 1162
    :cond_3
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v4, :cond_4

    .line 1163
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1164
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v3, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1165
    :cond_4
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v2, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1167
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v3, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1169
    :cond_5
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v4, :cond_6

    .line 1170
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 1172
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v2, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1174
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1176
    :cond_6
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1177
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_1
.end method

.method public setBounceEffectEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    .line 1269
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    .line 1239
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1125
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 1127
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    .line 1131
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->disable()V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    .line 1230
    return-void
.end method

.method public setHoverPointerEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1284
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    .line 1285
    return-void
.end method

.method public setMultiSelectionEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    .line 1253
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 1225
    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 1221
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1292
    if-nez p1, :cond_0

    .line 1310
    :goto_0
    return-void

    .line 1295
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v0, :cond_1

    .line 1296
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 1298
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_2

    .line 1299
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 1301
    :cond_2
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    .line 1304
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    if-eqz v0, :cond_4

    .line 1305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setHoverPointerEnabled(Z)V

    .line 1307
    :cond_4
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 1308
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 1309
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->linkWithParentView()V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 1248
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p2, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 1249
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 1261
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 765
    const/4 v1, -0x1

    .line 767
    .local v1, "isKidsMode":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 772
    :goto_0
    if-ne v1, v5, :cond_0

    .line 773
    const-string v2, "AirButtonImpl"

    const-string v3, "Kids mode is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_1
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 777
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isVzwSetupRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 778
    const-string v2, "AirButtonImpl"

    const-string v3, "Verizon Setup Wizard is Running Don\'t show the SPen events"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 783
    :cond_1
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonProperities;->isUspFeatureEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 784
    const-string v2, "AirButtonImpl"

    const-string v3, "Version is low"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 788
    :cond_2
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v4, :cond_5

    :cond_3
    const-string/jumbo v2, "true"

    const-string v3, "dev.knoxapp.running"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 789
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-ne v2, v5, :cond_4

    .line 790
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 791
    :cond_4
    const-string v2, "AirButtonImpl"

    const-string v3, "know mode is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 798
    :cond_5
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v2, v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isSpenDetachSettingEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 799
    :cond_6
    const-string v2, "AirButtonImpl"

    const-string v3, "AirButtonSettingEnabled is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 803
    :cond_7
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isCoverViewOpened()Z

    move-result v2

    if-nez v2, :cond_8

    .line 804
    const-string v2, "AirButtonImpl"

    const-string v3, "CoverView is closed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 808
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isPenWindowMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 809
    const-string v2, "AirButtonImpl"

    const-string v3, "isPenWindowMode is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 813
    :cond_9
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    if-eqz v2, :cond_a

    .line 814
    const-string v2, "AirButtonImpl"

    const-string v3, "Widget already dismissed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 818
    :cond_a
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v2, :cond_b

    .line 819
    const-string v2, "AirButtonImpl"

    const-string v3, "Widget already attached"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 823
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v2, :cond_c

    .line 824
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onShow(Landroid/view/View;)V

    .line 826
    :cond_c
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v2, v7, :cond_d

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v2, v4, :cond_d

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_d

    .line 827
    const-string v2, "AirButtonImpl"

    const-string/jumbo v3, "skip showing AirButton 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showEmptyText()V

    goto/16 :goto_1

    .line 832
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initAirButtonViewLayoutParams()V

    .line 834
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initDataType()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 841
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-nez v2, :cond_f

    .line 842
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndInitAirButtonView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 843
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v2, :cond_e

    .line 844
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 846
    :cond_e
    const-string v2, "AirButtonImpl"

    const-string/jumbo v3, "skip showing AirButton 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 835
    :catch_1
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "AirButtonImpl"

    const-string v3, "AirButtonItem is data type coming empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 851
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f
    invoke-direct {p0, v5}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 854
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    .line 861
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 862
    iput-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 863
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 864
    invoke-direct {p0, v5}, Lcom/samsung/android/airbutton/AirButtonImpl;->broadcastAirButtonShowState(Z)V

    .line 866
    const-string v2, "AirButtonImpl"

    const-string v3, "added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 855
    :catch_2
    move-exception v0

    .line 856
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v2, "AirButtonImpl"

    const-string v3, "Your parent view token is wrong or removed. Please check it"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public show(FF)V
    .locals 2
    .param p1, "hoverX"    # F
    .param p2, "hoverY"    # F

    .prologue
    const v1, 0x461c4000    # 10000.0f

    .line 874
    iput p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    .line 875
    iput p2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    .line 877
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->show()V

    .line 881
    return-void
.end method

.method public show(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 870
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(FF)V

    .line 871
    return-void
.end method

.method public showHoverPointer()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 963
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/airbutton/AirButtonProperities;->isUspFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    const-string v0, "AirButtonImpl"

    const-string v1, "Version is low"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isPenWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndAttachHoverAnimationView()V

    goto :goto_0
.end method

.method public unlinkWithParentView()V
    .locals 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 1342
    :cond_0
    return-void
.end method
