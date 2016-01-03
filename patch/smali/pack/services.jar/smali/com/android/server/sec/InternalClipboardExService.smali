.class public Lcom/android/server/sec/InternalClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;,
        Lcom/android/server/sec/InternalClipboardExService$KNOXReceiver;,
        Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# static fields
.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private final ADD_ITEM:I

.field private KNOX_PASTE_FLAG:Z

.field private final KNOX_VERSION:Ljava/lang/String;

.field private final MSG_COPY_URI:I

.field private final MSG_DELETE_TEMP_FILE:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_UPDATE_DIALOG:I

.field private clipPickerDataList:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

.field private mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsCalledPasteApp:Z

.field private mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 362
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    .line 121
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    .line 126
    new-instance v3, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    invoke-direct {v3, p0, v5}, Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;-><init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->clipPickerDataList:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    .line 127
    const-string v3, "2.0"

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_VERSION:Ljava/lang/String;

    .line 128
    iput-boolean v4, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_PASTE_FLAG:Z

    .line 132
    iput-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 134
    new-instance v3, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v3, p0, v5}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    .line 135
    iput v6, p0, Lcom/android/server/sec/InternalClipboardExService;->ADD_ITEM:I

    .line 137
    iput-boolean v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    .line 1213
    iput v6, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_SHOW_DIALOG:I

    .line 1214
    iput v7, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_UPDATE_DIALOG:I

    .line 1215
    iput v8, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_DISMISS_DIALOG:I

    .line 1216
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_DELETE_TEMP_FILE:I

    .line 1217
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/sec/InternalClipboardExService;->MSG_COPY_URI:I

    .line 1293
    new-instance v3, Lcom/android/server/sec/InternalClipboardExService$5;

    invoke-direct {v3, p0}, Lcom/android/server/sec/InternalClipboardExService$5;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    .line 363
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    .line 365
    iput v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    .line 366
    new-instance v3, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v4, 0x14

    iget v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-direct {v3, v4, v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(IILandroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 368
    new-instance v3, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v4, 0x14

    iget v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-direct {v3, v4, v5, p1, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(IILandroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 373
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Text"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Bitmap"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "HTMLFlagment"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    .local v1, "knoxFilter":Landroid/content/IntentFilter;
    const-string v3, "enterprise.container.remove.progress"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v3, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v3, "enterprise.container.uninstalled"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/sec/InternalClipboardExService$KNOXReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/sec/InternalClipboardExService$KNOXReceiver;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 390
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/sec/InternalClipboardExService$1;

    invoke-direct {v4, p0}, Lcom/android/server/sec/InternalClipboardExService$1;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/sec/InternalClipboardExService$2;

    invoke-direct {v4, p0}, Lcom/android/server/sec/InternalClipboardExService$2;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/sec/InternalClipboardExService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/sec/InternalClipboardExService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/sec/InternalClipboardExService;ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;
    .param p1, "x1"    # Lcom/android/server/sec/ClippedDataPickerDialog;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/sec/InternalClipboardExService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/sec/InternalClipboardExService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    return v0
.end method

.method private addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 19
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 833
    sget-boolean v16, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v16, :cond_0

    const-string v16, "ClipboardServiceEx"

    const-string v17, "addData.."

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    const/4 v2, 0x0

    .line 836
    .local v2, "Res":Landroid/sec/clipboard/data/ClipboardData;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/sec/InternalClipboardExService;->checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 837
    sget-boolean v16, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v16, :cond_1

    const-string v16, "ClipboardServiceEx"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "The data are the same.:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_1
    const/16 v16, 0x5

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    move-object/from16 v15, p2

    .line 841
    check-cast v15, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 842
    .local v15, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/sec/InternalClipboardExService;->deleteSameClipboardDataUri(Landroid/sec/clipboard/data/list/ClipboardDataUri;)V

    .line 863
    .end local v15    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_2
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    .line 866
    .local v4, "addItem":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v13, 0x0

    .line 867
    .local v13, "thumFullPath":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    move-object v8, v4

    .line 868
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 869
    .local v8, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v7

    .line 870
    .local v7, "firstImagePath":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mCurrentUserContext:Landroid/content/Context;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 872
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mCurrentUserContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/ContentResolver;Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;

    move-result-object v13

    .line 873
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/sec/InternalClipboardExService;->mCurrentUserContext:Landroid/content/Context;

    .line 877
    :cond_3
    :goto_0
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_4

    move-object/from16 v16, v4

    .line 878
    check-cast v16, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetFirstImgPath(Ljava/lang/String;)Z

    .line 883
    .end local v7    # "firstImagePath":Ljava/lang/String;
    .end local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_4
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 886
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/sec/InternalClipboardExService;->updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShowingMenu:Landroid/view/Menu;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mIsShowingContextmenu:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mShowingMenu:Landroid/view/Menu;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/view/Menu;->close()V

    .line 897
    :cond_5
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 919
    :goto_2
    if-eqz v13, :cond_6

    .line 920
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v5, "deleteFile":Ljava/io/File;
    const-string v11, "/data/clipboard/temp/"

    .line 922
    .local v11, "pastePath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v10, "pasteFile":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 925
    const-string v16, "ClipboardServiceEx"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No target file...thumFullPath :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "deleteFile":Ljava/io/File;
    .end local v10    # "pasteFile":Ljava/io/File;
    .end local v11    # "pastePath":Ljava/lang/String;
    :cond_6
    :goto_3
    move-object v3, v2

    .line 933
    .end local v2    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    .end local v4    # "addItem":Landroid/sec/clipboard/data/ClipboardData;
    .end local v13    # "thumFullPath":Ljava/lang/String;
    .local v3, "Res":Landroid/sec/clipboard/data/ClipboardData;
    :goto_4
    return-object v3

    .line 844
    .end local v3    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    :cond_7
    packed-switch p1, :pswitch_data_1

    :goto_5
    move-object v3, v2

    .line 860
    .end local v2    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v3    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_4

    .end local v3    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "Res":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_0
    move-object/from16 v14, p2

    .line 846
    check-cast v14, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 847
    .local v14, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v14}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v9

    .line 848
    .local v9, "imagePath":Ljava/lang/String;
    const-string v6, ""

    .line 849
    .local v6, "extraFilePath":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 850
    invoke-virtual {v14}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetExtraDataPath()Ljava/lang/String;

    move-result-object v6

    .line 852
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v6    # "extraFilePath":Ljava/lang/String;
    .end local v9    # "imagePath":Ljava/lang/String;
    .end local v14    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_1
    move-object/from16 v8, p2

    .line 855
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 856
    .restart local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v7

    .line 857
    .restart local v7    # "firstImagePath":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 874
    .restart local v4    # "addItem":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v13    # "thumFullPath":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 875
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/ContentResolver;Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 893
    .end local v7    # "firstImagePath":Ljava/lang/String;
    .end local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_a
    sget-boolean v16, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v16, :cond_5

    const-string v16, "ClipboardServiceEx"

    const-string v17, "Failed to add data."

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v14, p2

    .line 899
    check-cast v14, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 900
    .restart local v14    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v14}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v9

    .line 901
    .restart local v9    # "imagePath":Ljava/lang/String;
    const-string v6, ""

    .line 902
    .restart local v6    # "extraFilePath":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 903
    invoke-virtual {v14}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetExtraDataPath()Ljava/lang/String;

    move-result-object v6

    .line 905
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v6    # "extraFilePath":Ljava/lang/String;
    .end local v9    # "imagePath":Ljava/lang/String;
    .end local v14    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_3
    move-object/from16 v15, p2

    .line 908
    check-cast v15, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 909
    .restart local v15    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v15}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v12

    .line 910
    .local v12, "previewImagePath":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v12    # "previewImagePath":Ljava/lang/String;
    .end local v15    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_4
    move-object/from16 v8, p2

    .line 913
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 914
    .restart local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetFirstImgPath()Ljava/lang/String;

    move-result-object v7

    .line 915
    .restart local v7    # "firstImagePath":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/android/server/sec/InternalClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 927
    .end local v7    # "firstImagePath":Ljava/lang/String;
    .end local v8    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    .restart local v5    # "deleteFile":Ljava/io/File;
    .restart local v10    # "pasteFile":Ljava/io/File;
    .restart local v11    # "pastePath":Ljava/lang/String;
    :cond_c
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->canWrite()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 928
    const-string v16, "ClipboardServiceEx"

    const-string v17, "Temp preview file of html item will be deleted"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    goto/16 :goto_3

    .line 897
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 844
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 5
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 624
    const/4 v1, 0x0

    .line 626
    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-gtz v3, :cond_0

    move v2, v1

    .line 637
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 629
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 631
    .local v0, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 632
    .restart local v2    # "result":I
    goto :goto_0

    .line 635
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    .line 637
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private clearDataList()V
    .locals 3

    .prologue
    .line 1427
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 1428
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1429
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 1428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1431
    :cond_0
    return-void
.end method

.method private copyUriFromClipboardSaveService(Ljava/lang/String;)V
    .locals 3
    .param p1, "uriPath"    # Ljava/lang/String;

    .prologue
    .line 970
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 971
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 972
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 973
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 974
    const-string/jumbo v2, "uriPath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 976
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 977
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 980
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private deleteSameClipboardDataUri(Landroid/sec/clipboard/data/list/ClipboardDataUri;)V
    .locals 7
    .param p1, "uriData"    # Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->getDataSize()I

    move-result v0

    .line 939
    .local v0, "count":I
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteSameClipboardDataUri :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 941
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 942
    .local v2, "data":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 943
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 940
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 946
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 947
    .local v1, "currentDataUri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 948
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    goto :goto_1

    .line 953
    .end local v1    # "currentDataUri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    .end local v2    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :cond_3
    return-void
.end method

.method private deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "extraFilePath"    # Ljava/lang/String;

    .prologue
    .line 956
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "com.samsung.clipboardsaveservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 958
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 959
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 960
    const-string v2, "deletePath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v2, "extraDataPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 963
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 964
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 967
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 1417
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 1418
    .local v1, "size":I
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1420
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1422
    :cond_2
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ClipboardServiceEx"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_3
    return-void
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1540
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1548
    :cond_0
    :goto_0
    return-object v1

    .line 1543
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1545
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 1546
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    goto :goto_0
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    .prologue
    .line 1400
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_0

    .line 1401
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    .line 1409
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 1403
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1404
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    .line 1406
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    if-nez v1, :cond_1

    .line 1407
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_1
    sget-object v1, Lcom/android/server/sec/InternalClipboardExService;->sService:Landroid/content/IClipboard;

    goto :goto_0
.end method

.method private isKnoxKeyguardShowing()Z
    .locals 7

    .prologue
    .line 179
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 181
    .local v2, "mPm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 182
    .local v0, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 183
    .local v4, "userId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    invoke-virtual {v2, v4}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v3

    .line 186
    .local v3, "state":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1

    .line 187
    :cond_0
    const/4 v5, 0x1

    .line 189
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isServiceCallFromOther()Z
    .locals 6

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 166
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 168
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 169
    .local v3, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 170
    .local v2, "currUser":I
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    if-eq v1, v2, :cond_0

    .line 173
    const/4 v5, 0x1

    .line 175
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V
    .locals 13
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 1004
    :try_start_0
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    iget v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-interface {v9, v10}, Landroid/content/IClipboard;->UpdateClipboardDB(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :goto_0
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    if-ne v9, v12, :cond_1

    move-object v6, p1

    .line 1009
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1011
    .local v6, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :try_start_1
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1013
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_TEXT_ID)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1076
    .end local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_PASTE_FLAG:Z

    .line 1077
    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KNOX_PASTE_FLAG is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_PASTE_FLAG:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void

    .line 1005
    :catch_0
    move-exception v2

    .line 1006
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1014
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_1
    move-exception v2

    .line 1015
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1017
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 1018
    new-instance v6, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 1019
    .restart local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1, v12, v6}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 1021
    :try_start_2
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1024
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_HTML_FLAGMENT_ID)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1025
    :catch_2
    move-exception v2

    .line 1026
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1028
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    move-object v7, p1

    .line 1029
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1031
    .local v7, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :try_start_3
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1034
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_URI_ID)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 1036
    :catch_3
    move-exception v2

    .line 1037
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1039
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_3
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    move-object v4, p1

    .line 1040
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 1042
    .local v4, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :try_start_4
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1045
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_INTENT_ID)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 1047
    :catch_4
    move-exception v2

    .line 1048
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1050
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :cond_4
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    move-object v5, p1

    .line 1051
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .line 1052
    .local v5, "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v8

    .line 1053
    .local v8, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 1054
    .local v0, "N":I
    if-eqz v8, :cond_5

    .line 1055
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1057
    :cond_5
    const/4 v1, 0x0

    .line 1058
    .local v1, "clipData":Landroid/content/ClipData;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v0, :cond_7

    .line 1059
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1060
    .local v7, "uri":Landroid/net/Uri;
    if-nez v1, :cond_6

    .line 1061
    iget-object v9, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v11, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 1058
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1063
    :cond_6
    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v7}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_4

    .line 1067
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_7
    if-eqz v1, :cond_0

    .line 1068
    :try_start_5
    invoke-static {}, Lcom/android/server/sec/InternalClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v9

    invoke-interface {v9, v1, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1069
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ClipboardServiceEx"

    const-string v10, "String was copied.(FORMAT_MULTIPLE_URI)"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 1071
    :catch_5
    move-exception v2

    .line 1072
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1076
    .end local v0    # "N":I
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v5    # "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    .end local v8    # "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2
.end method

.method private updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 985
    :try_start_0
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    const-string v2, "change list..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 994
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/sec/InternalClipboardExService;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 996
    :cond_2
    return-void

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 525
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 526
    .local v0, "Result":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    return v0

    .line 525
    .end local v0    # "Result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 8
    .param p1, "format"    # I

    .prologue
    const/4 v7, 0x1

    .line 558
    monitor-enter p0

    .line 559
    const/4 v0, 0x0

    .line 561
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 562
    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_1

    .line 563
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 565
    :cond_0
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 566
    const/4 v4, 0x0

    monitor-exit p0

    .line 618
    :goto_0
    return-object v4

    .line 570
    :cond_1
    const/4 v2, 0x0

    .line 571
    .local v2, "iClipboardDataCount":I
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v4, :cond_2

    .line 573
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v4, :cond_3

    .line 574
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    add-int v2, v4, v5

    .line 581
    :cond_2
    :goto_1
    if-ge v2, v7, :cond_4

    .line 582
    monitor-exit p0

    move-object v4, v0

    goto :goto_0

    .line 577
    :cond_3
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    goto :goto_1

    .line 585
    :cond_4
    const/4 v1, 0x0

    .line 589
    .local v1, "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->isServiceCallFromOther()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 590
    const-string v4, "ClipboardServiceEx"

    const-string v5, "InternalClipboardExService GetClipboardData() abnormal called!!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    monitor-exit p0

    move-object v4, v0

    goto :goto_0

    .line 595
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/server/sec/InternalClipboardExService;->KNOX_PASTE_FLAG:Z

    if-eqz v4, :cond_9

    .line 596
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 597
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 598
    const-string v4, "ClipboardServiceEx"

    const-string v5, "KNOX2 SYNC data has paste item & cbdata is SYNC item assign"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_2
    if-eqz v1, :cond_7

    .line 611
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItem id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", input id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_6
    if-eq p1, v7, :cond_a

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    if-eq v4, p1, :cond_a

    .line 614
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 618
    :cond_7
    :goto_3
    monitor-exit p0

    move-object v4, v0

    goto/16 :goto_0

    .line 600
    :cond_8
    const-string v4, "ClipboardServiceEx"

    const-string v5, "KNOX2 SYNC data has not paste item so return null "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    monitor-exit p0

    move-object v4, v0

    goto/16 :goto_0

    .line 605
    :cond_9
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 606
    const-string v4, "ClipboardServiceEx"

    const-string v5, "original Copy and paste cdData"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 619
    .end local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "iClipboardDataCount":I
    .end local v3    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 616
    .restart local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "iClipboardDataCount":I
    .restart local v3    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_a
    move-object v0, v1

    goto :goto_3
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # I

    .prologue
    .line 504
    const-string v0, ""

    .line 506
    .local v0, "Result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "Result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 509
    .restart local v0    # "Result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public IsShowUIClipboardData()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1241
    const/4 v0, 0x0

    .line 1242
    .local v0, "Result":Z
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    .line 1244
    :cond_0
    return v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 446
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .line 448
    .local v0, "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 453
    .end local v0    # "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 2
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1092
    monitor-enter p0

    .line 1093
    :try_start_0
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1095
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v0, :cond_2

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->clipPickerDataList:Lcom/android/server/sec/InternalClipboardExService$ISharedClipboardDataList;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 1103
    :goto_0
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 1108
    :cond_0
    :goto_1
    monitor-exit p0

    .line 1109
    return-void

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    goto :goto_0

    .line 1108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1106
    :cond_2
    :try_start_1
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .locals 7
    .param p1, "formatName"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 479
    .local v1, "Result":I
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 480
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    .line 481
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_0
    :goto_0
    return v1

    .line 483
    :cond_1
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 484
    .local v0, "Keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 485
    .local v3, "iVal":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 486
    .local v4, "sValue":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 487
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 488
    goto :goto_0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 542
    .local v0, "Result":Z
    if-eqz v0, :cond_0

    .line 543
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 547
    :goto_0
    return v0

    .line 545
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z
    .locals 8
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 696
    if-nez p2, :cond_1

    move v3, v5

    .line 742
    :cond_0
    :goto_0
    return v3

    .line 699
    :cond_1
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "ClipboardServiceEx"

    const-string v7, "==================================================================="

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_2
    const/4 v3, 0x0

    .line 702
    .local v3, "result":Z
    monitor-enter p0

    .line 703
    :try_start_0
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ClipboardServiceEx"

    const-string v7, "----------------------------------------------------------------"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ClipboardServiceEx"

    const-string v7, "in synchronized"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_4
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 707
    .local v4, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v4, :cond_5

    .line 708
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_5

    .line 709
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 710
    monitor-exit p0

    move v3, v5

    goto :goto_0

    .line 715
    :cond_5
    if-nez p2, :cond_6

    .line 716
    monitor-exit p0

    move v3, v5

    goto :goto_0

    .line 719
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 720
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 721
    .local v1, "callingUser":I
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_7

    .line 723
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p3, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mCurrentUserContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :cond_7
    :goto_1
    if-eqz v4, :cond_9

    :try_start_2
    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v5

    if-nez v5, :cond_9

    .line 731
    invoke-direct {p0, p2, p3}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V

    .line 732
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 733
    const/4 v3, 0x1

    .line 740
    :cond_8
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 741
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==================================================================="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 724
    :catch_0
    move-exception v2

    .line 725
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v5, "ClipboardServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callingPackage :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", NameNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 740
    .end local v0    # "callingUid":I
    .end local v1    # "callingUser":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 736
    .restart local v0    # "callingUid":I
    .restart local v1    # "callingUser":I
    .restart local v4    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_9
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 737
    invoke-direct {p0, p2, p3}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 738
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 9
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 784
    if-nez p2, :cond_0

    .line 829
    :goto_0
    return v4

    .line 787
    :cond_0
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ClipboardServiceEx"

    const-string v7, "==================================================================="

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_1
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "ClipboardServiceEx"

    const-string v7, "SetClipboardDataOriginalToEx"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_2
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetClipboardData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_3
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 792
    .local v0, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v0, :cond_5

    .line 794
    invoke-virtual {v0, v5}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 796
    :cond_4
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    goto :goto_0

    .line 801
    :cond_5
    const/4 v4, 0x5

    if-ne p1, v4, :cond_6

    move-object v3, p2

    .line 802
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 803
    .local v3, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v2

    .line 804
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_6

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->isImagefile()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 805
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/sec/InternalClipboardExService;->copyUriFromClipboardSaveService(Ljava/lang/String;)V

    move v4, v5

    .line 806
    goto :goto_0

    .line 811
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_6
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/sec/InternalClipboardExService$4;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/sec/InternalClipboardExService$4;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/ClipboardData;I)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 827
    .local v1, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 828
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "ClipboardServiceEx"

    const-string v6, "==================================================================="

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v4, v5

    .line 829
    goto/16 :goto_0
.end method

.method public SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z
    .locals 5
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 746
    if-nez p2, :cond_1

    move v0, v2

    .line 780
    :cond_0
    :goto_0
    return v0

    .line 749
    :cond_1
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    const-string v4, "======== SetClipboardDataWithoutSendingOrginalClipboard =========="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_2
    const/4 v0, 0x0

    .line 751
    .local v0, "result":Z
    monitor-enter p0

    .line 752
    :try_start_0
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "ClipboardServiceEx"

    const-string v4, "----------------------------------------------------------------"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_3
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ClipboardServiceEx"

    const-string v4, "in synchronized"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_4
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 756
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_5

    .line 757
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 758
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 759
    monitor-exit p0

    move v0, v2

    goto :goto_0

    .line 764
    :cond_5
    if-nez p2, :cond_6

    .line 765
    monitor-exit p0

    move v0, v2

    goto :goto_0

    .line 769
    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 770
    invoke-direct {p0, p2, p3}, Lcom/android/server/sec/InternalClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V

    .line 771
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 772
    const/4 v0, 0x1

    .line 778
    :cond_7
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==================================================================="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 775
    :cond_8
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 776
    const/4 v0, 0x1

    goto :goto_1

    .line 778
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public SetSyncClipboardData(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 669
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "SetSyncClipboardData"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 671
    .local v0, "data":Landroid/sec/clipboard/data/list/ClipboardDataText;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/InternalClipboardExService$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/sec/InternalClipboardExService$3;-><init>(Lcom/android/server/sec/InternalClipboardExService;Landroid/sec/clipboard/data/list/ClipboardDataText;Ljava/lang/CharSequence;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 682
    .local v1, "setDataThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 683
    const/4 v2, 0x1

    return v2
.end method

.method public ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1222
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "show ui clipboard dialog in service"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    :goto_0
    return-void

    .line 1231
    :cond_1
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    .line 1232
    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1234
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public UpdateClipboardDB(I)V
    .locals 2
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1436
    iget v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    if-eq v0, p1, :cond_0

    .line 1437
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    .line 1438
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->UpdateClipboardDB(I)V

    .line 1440
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContainerID:I

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->UpdateClipboardDB(I)V

    .line 1445
    :cond_0
    return-void
.end method

.method public UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 2
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 1254
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->IsShowUIClipboardData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1259
    :cond_0
    iput p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I

    .line 1260
    iput-object p2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1262
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1263
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public callPasteMenuFromApp(I)V
    .locals 4
    .param p1, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1528
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callPasteMenuFromApp() in service. enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_0
    if-nez p1, :cond_2

    .line 1530
    iput-boolean v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    .line 1536
    :cond_1
    :goto_0
    return-void

    .line 1531
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    goto :goto_0

    .line 1534
    :cond_3
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong param in setPastedFromApp() enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismissUIDataDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 1272
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1278
    return-void
.end method

.method public getClipedStrings(II)Ljava/util/ArrayList;
    .locals 12
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1448
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    .local v5, "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1452
    .local v0, "clipText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->isServiceCallFromOther()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1453
    const-string v10, "ClipboardServiceEx"

    const-string v11, "InternalClipboardExService getClipedStrings() abnormal called!!!"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_0
    :goto_0
    return-object v5

    .line 1459
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 1460
    iget-object v10, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v10, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 1461
    .local v1, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    move-object v8, v1

    .line 1462
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1463
    .local v8, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 1464
    if-nez p1, :cond_3

    .line 1465
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1466
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_0

    .line 1504
    .end local v8    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_0

    .line 1459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1470
    .restart local v8    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_3
    new-instance v7, Landroid/util/secutil/SmartParser;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10, v11}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1471
    .local v7, "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v7}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v9

    .line 1472
    .local v9, "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v10

    if-lez v10, :cond_2

    .line 1473
    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1474
    .local v6, "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 1475
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_2

    .line 1474
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1482
    .end local v4    # "idx":I
    .end local v6    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "parser":Landroid/util/secutil/SmartParser;
    .end local v8    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v9    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_4
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    move-object v2, v1

    .line 1483
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 1484
    .local v2, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 1485
    if-nez p1, :cond_5

    .line 1486
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1487
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, p2, :cond_2

    goto/16 :goto_0

    .line 1491
    :cond_5
    new-instance v7, Landroid/util/secutil/SmartParser;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10, v11}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1492
    .restart local v7    # "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v7}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v9

    .line 1493
    .restart local v9    # "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v10

    if-lez v10, :cond_2

    .line 1494
    invoke-virtual {v9, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1495
    .restart local v6    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .restart local v4    # "idx":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 1496
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, p2, :cond_2

    .line 1495
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public getDataSize()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 644
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 645
    .local v0, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService;->clearDataList()V

    .line 658
    :goto_0
    return v1

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 658
    :cond_2
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    goto :goto_0
.end method

.method isKnoxTwoEnabled()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 143
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 144
    .local v4, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 145
    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 147
    .local v3, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 148
    .local v1, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 149
    .local v0, "currUser":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    const-string v7, "Current user is a USER, hence return false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0    # "currUser":I
    .end local v1    # "ident":J
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    :cond_0
    :goto_0
    return v5

    .line 154
    .restart local v0    # "currUser":I
    .restart local v1    # "ident":J
    .restart local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    :cond_1
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ClipboardServiceEx"

    const-string v6, "Current user is a persona, hence return true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "currUser":I
    .end local v1    # "ident":J
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    :cond_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    const-string v7, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public iscalledPasteMenuFromApp()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1522
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iscalledPasteMenuFromApp() in service. mIsCalledPasteApp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z

    return v0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V

    .line 1518
    :cond_0
    return-void
.end method

.method public showUIDataDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1282
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1283
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1289
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
